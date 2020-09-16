//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Equation from "./Equation";
import vec2 from "../math/vec2";
import Body from "../objects/body";

var worldVectorA = vec2.create(),
	worldVectorB = vec2.create(),
	xAxis = vec2.fromValues(1,0),
	yAxis = vec2.fromValues(0,1);

export default class RotationalLockEquation extends Equation{
	/**
	 * @property {number} angle
	 */
	angle: number;

	/**
	 * Locks the relative angle between two bodies. The constraint tries to keep the dot product between two vectors, local in each body, to zero. The local angle in body i is a parameter.
	 *
	 * @class RotationalLockEquation
	 * @constructor
	 * @extends Equation
	 * @param {Body} bodyA
	 * @param {Body} bodyB
	 * @param {Object} [options]
	 * @param {Number} [options.angle] Angle to add to the local vector in bodyA.
	 */
	constructor(bodyA: Body, bodyB: Body, options?: {
		angle?: f32
	}){
		super(bodyA, bodyB, -Infinity, Infinity);

		this.angle = options?.angle ?? 0;

		var G = this.G;
		G[2] =  1;
		G[5] = -1;
	}

	computeGq(){

		vec2.rotate(worldVectorA,xAxis,this.bodyA!.angle+this.angle);
		vec2.rotate(worldVectorB,yAxis,this.bodyB!.angle);
		return vec2.dot(worldVectorA,worldVectorB);
	};
}