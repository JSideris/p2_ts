//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Shape from "../shapes/shape";
import Body from "../objects/body";


export default class OverlapKeeperRecord{
	/**
	 * @property {Shape} shapeA
	 */
	shapeA: Shape|null = null;
	/**
	 * @property {Shape} shapeB
	 */
	shapeB: Shape|null = null;
	/**
	 * @property {Body} bodyA
	*/
	bodyA: Body|null = null;
	/**
	 * @property {Body} bodyB
	 */
	bodyB: Body|null = null;

	/**
	 * Overlap data container for the OverlapKeeper
	 * @class OverlapKeeperRecord
	 * @constructor
	 * @param {Body} bodyA
	 * @param {Shape} shapeA
	 * @param {Body} bodyB
	 * @param {Shape} shapeB
	 */
	constructor(bodyA: Body|null, shapeA: Shape|null, bodyB: Body|null, shapeB: Shape|null){
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
	set(bodyA: Body|null, shapeA: Shape|null, bodyB: Body|null, shapeB: Shape|null): void{
		this.shapeA = shapeA;
		this.shapeB = shapeB;
		this.bodyA = bodyA;
		this.bodyB = bodyB;
	};
}