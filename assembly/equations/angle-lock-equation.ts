type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Equation from "./Equation";
import Body from "../objects/body";

export default class AngleLockEquation extends Equation{
	angle: number;

	/**
	 * The gear ratio.
	 * @property {Number} ratio
	 * @readonly
	 * @see setRatio
	 */
	ratio: any;

	/**
	 * Locks the relative angle between two bodies. The constraint tries to keep the dot product between two vectors, local in each body, to zero. The local angle in body i is a parameter.
	 *
	 * @class AngleLockEquation
	 * @constructor
	 * @extends Equation
	 * @param {Body} bodyA
	 * @param {Body} bodyB
	 * @param {Object} [options]
	 * @param {Number} [options.angle] Angle to add to the local vector in body A.
	 * @param {Number} [options.ratio] Gear ratio
	 */
	constructor(bodyA: Body, bodyB: Body, options ?: {
		angle?: f32,
		ratio?: f32
	}){
		super(bodyA, bodyB, -Infinity, Infinity);
		this.angle = options?.angle ?? 0;

		this.ratio = options?.ratio ?? 1;

		this.setRatio(this.ratio);
	}

	computeGq(): f32{
		return this.ratio * this.bodyA.angle - this.bodyB.angle + this.angle;
	}

	/**
	 * Set the gear ratio for this equation
	 * @method setRatio
	 * @param {Number} ratio
	 */
	setRatio(ratio: f32){
		var G = this.G;
		G[2] =  ratio;
		G[5] = -1;
		this.ratio = ratio;
	}

	/**
	 * Set the max force for the equation.
	 * @method setMaxTorque
	 * @param {Number} torque
	 */
	setMaxTorque(torque: f32){
		this.maxForce =  torque;
		this.minForce = -torque;
	}
}