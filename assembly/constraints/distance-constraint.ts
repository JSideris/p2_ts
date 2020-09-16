//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import vec2 from "../math/vec2";
import Body from "../objects/body";
import Constraint from "./constraint";
import { ConstraintOptions } from "./constraint";
import Equation from "../equations/Equation";

var n = vec2.create();
var ri = vec2.create(); // worldAnchorA
var rj = vec2.create(); // worldAnchorB

export class DistanceConstraintOptions extends ConstraintOptions{
	localAnchorA: Float32Array|null = null;
	localAnchorB: Float32Array|null = null;
	distance: f32 = 0;
	maxForce: f32 = Infinity;
}

export default class DistanceConstraint extends Constraint{
	/**
	 * Local anchor in body A.
	 * @property localAnchorA
	 * @type {Array}
	 */
	localAnchorA: Float32Array;
	/**
	 * Local anchor in body B.
	 * @property localAnchorB
	 * @type {Array}
	 */
	localAnchorB: Float32Array;
	/**
	 * The distance to keep.
	 * @property distance
	 * @type {Number}
	 */
	distance: f32 = 0;
	/**
	 * Max force to apply.
	 * @property {number} maxForce
	 */
	maxForce: f32 = Infinity;
	/**
	 * If the upper limit is enabled or not.
	 * @property {boolean} upperLimitEnabled
	 */
	upperLimitEnabled: boolean = false;
	/**
	 * The upper constraint limit.
	 * @property {number} upperLimit
	 */
	upperLimit: f32 = 1;
	/**
	 * If the lower limit is enabled or not.
	 * @property {boolean} lowerLimitEnabled
	 */
	lowerLimitEnabled: boolean = false;
	/**
	 * The lower constraint limit.
	 * @property {number} lowerLimit
	 */
	lowerLimit: f32 = 0;
	/**
	 * Current constraint position. This is equal to the current distance between the world anchor points.
	 * @property {number} position
	 */
	position: f32 = 0;

	// this.upperLimitEnabled = false;
	// this.upperLimit = 1;
	// this.lowerLimitEnabled = false;
	// this.lowerLimit = 0;
	// this.position = 0;

	/**
	 * Constraint that tries to keep the distance between two bodies constant.
	 *
	 * @class DistanceConstraint
	 * @constructor
	 * @author schteppe
	 * @param {Body} bodyA
	 * @param {Body} bodyB
	 * @param {object} [options]
	 * @param {number} [options.distance] The distance to keep between the anchor points. Defaults to the current distance between the bodies.
	 * @param {Array} [options.localAnchorA] The anchor point for bodyA, defined locally in bodyA frame. Defaults to [0,0].
	 * @param {Array} [options.localAnchorB] The anchor point for bodyB, defined locally in bodyB frame. Defaults to [0,0].
	 * @param {object} [options.maxForce=Number.MAX_VALUE] Maximum force to apply.
	 * @extends Constraint
	 *
	 * @example
	 *     // If distance is not given as an option, then the current distance between the bodies is used.
	 *     // In this example, the bodies will be constrained to have a distance of 2 between their centers.
	 *     var bodyA = new Body({ mass: 1, position: [-1, 0] });
	 *     var bodyB = new Body({ mass: 1, position: [1, 0] });
	 *     var constraint = new DistanceConstraint(bodyA, bodyB);
	 *     world.addConstraint(constraint);
	 *
	 * @example
	 *     // Manually set the distance and anchors
	 *     var constraint = new DistanceConstraint(bodyA, bodyB, {
	 *         distance: 1,          // Distance to keep between the points
	 *         localAnchorA: [1, 0], // Point on bodyA
	 *         localAnchorB: [-1, 0] // Point on bodyB
	 *     });
	 *     world.addConstraint(constraint);
	 */
	constructor(bodyA: Body, bodyB: Body, options: DistanceConstraintOptions){
		super(bodyA,bodyB,Constraint.DISTANCE, options);

		if(options){
			this.localAnchorA = options.localAnchorA ? vec2.clone(options.localAnchorA) : vec2.create();
			this.localAnchorB = options.localAnchorB ? vec2.clone(options.localAnchorB) : vec2.create();
			this.distance = options.distance;
			this.maxForce = options.maxForce;
			
		}
		else{
			this.localAnchorA = vec2.create();
			this.localAnchorB = vec2.create();
		}

		if(this.distance == -1){
			// Use the current world distance between the world anchor points.
			var worldAnchorA = vec2.create(),
				worldAnchorB = vec2.create(),
				r = vec2.create();

			// Transform local anchors to world
			vec2.rotate(worldAnchorA, this.localAnchorA, bodyA.angle);
			vec2.rotate(worldAnchorB, this.localAnchorB, bodyB.angle);

			vec2.add(r, bodyB.position, worldAnchorB);
			vec2.subtract(r, r, worldAnchorA);
			vec2.subtract(r, r, bodyA.position);

			this.distance = vec2.length(r);
		}

		var normal = new Equation(bodyA,bodyB,-this.maxForce,this.maxForce); // Just in the normal direction
		this.equations = [ normal ];

		// g = (xi - xj).dot(n)
		// dg/dt = (vi - vj).dot(n) = G*W = [n 0 -n 0] * [vi wi vj wj]'

		// ...and if we were to include offset points:
		// g =
		//      (xj + rj - xi - ri).dot(n) - distance
		
		// dg/dt =
		//      (vj + wj x rj - vi - wi x ri).dot(n) =
		//      { term 2 is near zero } =
		//      [-n   -ri x n   n   rj x n] * [vi wi vj wj]' =
		//      G * W
		
		// => G = [-n -rixn n rjxn]

		var r = vec2.create();
		var ri = vec2.create(); // worldAnchorA
		var rj = vec2.create(); // worldAnchorB
		var that = this;
		normal.computeGq = function(){
			var bodyA = this.bodyA!,
				bodyB = this.bodyB!,
				xi = bodyA.position,
				xj = bodyB.position;

			// Transform local anchors to world
			vec2.rotate(ri, that.localAnchorA, bodyA.angle);
			vec2.rotate(rj, that.localAnchorB, bodyB.angle);

			vec2.add(r, xj, rj);
			vec2.subtract(r, r, ri);
			vec2.subtract(r, r, xi);

			//vec2.subtract(r, bodyB.position, bodyA.position);
			return vec2.length(r) - that.distance;
		};

		// Make the contact constraint bilateral
		this.setMaxForce(this.maxForce);

	}

	/**
	 * Update the constraint equations. Should be done if any of the bodies changed position, before solving.
	 * @method update
	 */
	update(): void{
		var normal = this.equations[0],
			bodyA = this.bodyA,
			bodyB = this.bodyB,
			xi = bodyA.position,
			xj = bodyB.position,
			normalEquation = this.equations[0],
			G = normal.G;

		// Transform local anchors to world
		vec2.rotate(ri, this.localAnchorA, bodyA.angle);
		vec2.rotate(rj, this.localAnchorB, bodyB.angle);

		// Get world anchor points and normal
		vec2.add(n, xj, rj);
		vec2.subtract(n, n, ri);
		vec2.subtract(n, n, xi);
		this.position = vec2.length(n);

		var violating = false;
		if(this.upperLimitEnabled){
			if(this.position > this.upperLimit){
				normalEquation.maxForce = 0;
				normalEquation.minForce = -this.maxForce;
				this.distance = this.upperLimit;
				violating = true;
			}
		}

		if(this.lowerLimitEnabled){
			if(this.position < this.lowerLimit){
				normalEquation.maxForce = this.maxForce;
				normalEquation.minForce = 0;
				this.distance = this.lowerLimit;
				violating = true;
			}
		}

		if((this.lowerLimitEnabled || this.upperLimitEnabled) && !violating){
			// No constraint needed.
			normalEquation.enabled = false;
			return;
		}

		normalEquation.enabled = true;

		vec2.normalize(n,n);

		// Caluclate cross products
		var rixn = vec2.crossLength(ri, n),
			rjxn = vec2.crossLength(rj, n);

		// G = [-n -rixn n rjxn]
		G[0] = -n[0];
		G[1] = -n[1];
		G[2] = -rixn;
		G[3] = n[0];
		G[4] = n[1];
		G[5] = rjxn;
	}

	/**
	 * Set the max force to be used
	 * @method setMaxForce
	 * @param {Number} maxForce
	 */
	setMaxForce(maxForce: f32): void{
		var normal = this.equations[0];
		normal.minForce = -maxForce;
		normal.maxForce =  maxForce;
	}

	/**
	 * Get the max force
	 * @method getMaxForce
	 * @return {Number}
	 */
	getMaxForce(): f32{
		var normal = this.equations[0];
		return normal.maxForce;
	}
}