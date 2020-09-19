//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Equation from "../equations/equation";
import Solver from "./solver";
import { SolverOptions } from "./solver";
import World from "../world/world";
import FrictionEquation from "../equations/friction-equation";
import Body from "../objects/body";



// Sets the .multiplier property of each equation
function updateMultipliers(equations: Equation[], invDt: f32): void{
	let l = equations.length;
	while(l--){
		let eq = equations[l];
		eq.multiplier = eq.lambda * invDt;
	}
}

function iterateEquation(eq: Equation): f32{
	// Compute iteration
	let B = eq.B,
		eps = eq.epsilon,
		invC = eq.invC,
		lambdaj = eq.lambda,
		GWlambda = eq.computeGWlambda(),
		maxForce_dt = eq.maxForceDt,
		minForce_dt = eq.minForceDt;

	let deltalambda = invC * ( B - GWlambda - eps * lambdaj );

	// Clamp if we are not within the min/max interval
	let lambdaj_plus_deltalambda = lambdaj + deltalambda;
	if(lambdaj_plus_deltalambda < minForce_dt){
		deltalambda = minForce_dt - lambdaj;
	} else if(lambdaj_plus_deltalambda > maxForce_dt){
		deltalambda = maxForce_dt - lambdaj;
	}
	eq.lambda += deltalambda;
	eq.addToWlambda(deltalambda);

	return deltalambda;
}

export class GSSolverOptions extends SolverOptions{
	iterations: i32 = 10;
	tolerance: f32 = 1e-7;
	frictionIterations: i32 = 0;
}

export default class GSSolver extends Solver{
	/**
	 * The max number of iterations to do when solving. More gives better results, but is more expensive.
	 * @property iterations
	 * @type {Number}
	 */
	iterations: i32 = 10;
	/**
	 * The error tolerance, per constraint. If the total error is below this limit, the solver will stop iterating. Set to zero for as good solution as possible, but to something larger than zero to make computations faster.
	 * @property tolerance
	 * @type {Number}
	 * @default 1e-7
	 */
	tolerance: f32 = 1e-7;
	/**
	 * Number of solver iterations that are used to approximate normal forces used for friction (F_friction = mu * F_normal). These friction forces will override any other friction forces that are set. If you set frictionIterations = 0, then this feature will be disabled.
	 *
	 * Use only frictionIterations > 0 if the approximated normal force (F_normal = mass * gravity) is not good enough. Examples of where it can happen is in space games where gravity is zero, or in tall stacks where the normal force is large at bottom but small at top.
	 *
	 * @property frictionIterations
	 * @type {Number}
	 * @default 0
	 */
	frictionIterations: i32;
	/**
	 * The number of iterations that were made during the last solve. If .tolerance is zero, this value will always be equal to .iterations, but if .tolerance is larger than zero, and the solver can quit early, then this number will be somewhere between 1 and .iterations.
	 * @property {Number} usedIterations
	 */
	usedIterations: i32 = 0;

	/**
	 * Iterative Gauss-Seidel constraint equation solver.
	 *
	 * @class GSSolver
	 * @constructor
	 * @extends Solver
	 * @param {Object} [options]
	 * @param {Number} [options.iterations=10]
	 * @param {Number} [options.tolerance=0]
	 */
	constructor(options: GSSolverOptions|null){
		super(options, Solver.GS);

		if(options){
			this.iterations = options.iterations;
			this.tolerance = options.tolerance;
			this.frictionIterations = options.frictionIterations;
		}

	}

	/**
	 * Solve the system of equations
	 * @method solve
	 * @param  {Number}  h       Time step
	 * @param  {World}   world    World to solve
	 */
	solve(h: f32, world: World): void{

		this.sortEquations();

		let maxIter = this.iterations,
			maxFrictionIter = this.frictionIterations,
			equations: Equation[] = this.equations,
			Neq: i32 = equations.length,
			tolSquared: f32 = (this.tolerance * (Neq as f32)) * (this.tolerance * (Neq as f32)),
			bodies: Body[] = world.bodies,
			Nbodies:i32 = bodies.length;

		this.usedIterations = 0;

		if(Neq){
			for(let i: i32 = 0; i < Nbodies; i++){
				let b: Body = bodies[i];

				// Update solve mass
				b.updateSolveMassProperties();
			}
		}

		for(let i: i32 = 0; i < Neq; i++){
			let c: Equation = equations[i];
			c.lambda = 0;
			if(c.timeStep !== h || c.needsUpdate){
				c.timeStep = h;
				c.update();
			}
			c.B = c.computeB(c.a,c.b,h);
			c.invC = c.computeInvC(c.epsilon);

			c.maxForceDt = c.maxForce * h;
			c.minForceDt = c.minForce * h;
		}

		let c: Equation, deltalambdaTot: f32;

		if(Neq !== 0){

			for(let i: i32 = 0; i < Nbodies; i++){
				let b: Body = bodies[i];

				// Reset vlambda
				b.resetConstraintVelocity();
			}

			if(maxFrictionIter){
				// Iterate over contact equations to get normal forces
				for(let iter: i32 = 0; iter !== maxFrictionIter; iter++){

					// Accumulate the total error for each iteration.
					deltalambdaTot = 0.0;

					for(let j: i32 = 0; j < Neq; j++){
						c = equations[j];

						let deltalambda: f32 = iterateEquation(c);
						deltalambdaTot += Mathf.abs(deltalambda);
					}

					this.usedIterations++;

					// If the total error is small enough - stop iterate
					if(deltalambdaTot*deltalambdaTot <= tolSquared){
						break;
					}
				}

				updateMultipliers(equations, 1/h);

				// Set computed friction force
				for(let j: i32 = 0; j < Neq; j++){
					let eq = equations[j];
					if(eq instanceof FrictionEquation){
						let feq: FrictionEquation = eq as FrictionEquation;
						let f: f32 = 0.0;
						for(let k: i32 = 0; k < feq.contactEquations.length; k++){
							f += feq.contactEquations[k].multiplier;
						}
						f *= feq.frictionCoefficient / (feq.contactEquations.length as f32);
						feq.maxForce =  f;
						feq.minForce = -f;

						feq.maxForceDt = f * h;
						feq.minForceDt = -f * h;
					}
				}
			}

			// Iterate over all equations
			for(let iter:i32 = 0; iter < maxIter; iter++){

				// Accumulate the total error for each iteration.
				deltalambdaTot = 0.0;
				for(let j: i32 = 0; j < Neq; j++){
					c = equations[j];

					let deltalambda = iterateEquation(c);
					deltalambdaTot += Mathf.abs(deltalambda);
				}

				this.usedIterations++;

				// If the total error is small enough - stop iterate
				if(deltalambdaTot*deltalambdaTot < tolSquared){
					break;
				}
			}

			// Add result to velocity
			for(let i:i32 = 0; i < Nbodies; i++){
				bodies[i].addConstraintVelocity();
			}

			updateMultipliers(equations, 1/h);
		}
	}
}