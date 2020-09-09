type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Shape from "../shapes/shape";
import Body from "../objects/body";


export default class OverlapKeeperRecord{
	/**
	 * @property {Shape} shapeA
	 */
	shapeA?: Shape;
	/**
	 * @property {Shape} shapeB
	 */
	shapeB?: Shape;
	/**
	 * @property {Body} bodyA
	*/
	bodyA?: Body;
	/**
	 * @property {Body} bodyB
	 */
	bodyB?: Body;

	/**
	 * Overlap data container for the OverlapKeeper
	 * @class OverlapKeeperRecord
	 * @constructor
	 * @param {Body} bodyA
	 * @param {Shape} shapeA
	 * @param {Body} bodyB
	 * @param {Shape} shapeB
	 */
	constructor(bodyA?: Body, shapeA?: Shape, bodyB?: Body, shapeB?: Shape){
		this.set(bodyA, shapeA, bodyB, shapeB);
	}

	/**
	 * Set the data for the record
	 * @method set
	 * @param {Body} bodyA
	 * @param {Shape} shapeA
	 * @param {Body} bodyB
	 * @param {Shape} shapeB
	 */
	set(bodyA?: Body, shapeA?: Shape, bodyB?: Body, shapeB?: Shape){
		this.shapeA = shapeA;
		this.shapeB = shapeB;
		this.bodyA = bodyA;
		this.bodyB = bodyB;
	};
}