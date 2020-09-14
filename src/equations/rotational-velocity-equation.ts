type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Equation from "./Equation";
import Body from "../objects/body";


export default class RotationalVelocityEquation extends Equation{
	ratio: number;

	/**
	 * Syncs rotational velocity of two bodies, or sets a relative velocity (motor).
	 *
	 * @class RotationalVelocityEquation
	 * @constructor
	 * @extends Equation
	 * @param {Body} bodyA
	 * @param {Body} bodyB
	 */
	constructor(bodyA: Body, bodyB: Body){
		super(bodyA, bodyB, -Infinity, Infinity);
		this.relativeVelocity = 1;
		this.ratio = 1;
	}
	
	computeB(a: f32,b: f32,h: f32): f32{
		var G = this.G;
		G[2] = -1;
		G[5] = this.ratio;

		var GiMf = this.computeGiMf();
		var GW = this.computeGW();
		var B = - GW * b - h*GiMf;

		return B;
	}

}