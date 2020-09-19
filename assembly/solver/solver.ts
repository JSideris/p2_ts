//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import EventEmitter from "../events/event-emitter";
import Equation from "../equations/equation";
import World from "../world/world";

export class SolverOptions{
	equationSortFunction: (a: Equation, b: Equation) => i32;
}

export default abstract class Solver extends EventEmitter{
	type: u16 = 0;
	equations: Equation[];
	equationSortFunction: ((a: Equation, b: Equation) => i32)|null = null;

	/**
	 * Base class for constraint solvers.
	 * @class Solver
	 * @constructor
	 * @extends EventEmitter
	 */
	constructor(options: SolverOptions|null, type: u16){
		super();

		this.type = type;

		/**
		 * Current equations in the solver.
		 *
		 * @property equations
		 * @type {Array}
		 */
		this.equations = [];

		/**
		 * Function that is used to sort all equations before each solve.
		 * @property equationSortFunction
		 * @type {function|boolean}
		 */
		if(options) this.equationSortFunction = options.equationSortFunction;
	}

	/**
	 * Method to be implemented in each subclass
	 * @method solve
	 * @param  {Number} dt
	 * @param  {World} world
	 */
	abstract solve(h: f32, world: World): void;

	/**
	 * Sort all equations using the .equationSortFunction. Should be called by subclasses before solving.
	 * @method sortEquations
	 */
	sortEquations(): void{
		if(this.equationSortFunction){
			this.equations.sort(this.equationSortFunction!);
		}
	};

	/**
	 * Add an equation to be solved.
	 *
	 * @method addEquation
	 * @param {Equation} eq
	 */
	addEquation(eq: Equation): void{
		if(eq.enabled){
			this.equations.push(eq);
		}
	};

	/**
	 * Add equations. Same as .addEquation, but this time the argument is an array of Equations
	 *
	 * @method addEquations
	 * @param {Array} eqs
	 */
	addEquations(eqs: Equation[]): void{
		for(let i: u16 = 0, N: u16 = (eqs.length as u16); i < N; i++){
			let eq = eqs[i];
			if(eq.enabled){
				this.equations.push(eq);
			}
		}
	};

	/**
	 * Remove an equation.
	 *
	 * @method removeEquation
	 * @param {Equation} eq
	 */
	removeEquation(eq: Equation): void{
		let i = this.equations.indexOf(eq);
		if(i !== -1){
			this.equations.splice(i,1);
		}
	};

	/**
	 * Remove all currently added equations.
	 *
	 * @method removeAllEquations
	 */
	removeAllEquations(): void{
		this.equations.length=0;
	};

	/**
	 * Gauss-Seidel solver.
	 * @property GS
	 * @type {Number}
	 * @static
	 */
	static GS: u16 = 1;
}