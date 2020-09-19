//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Broadphase from "./broadphase";
import World from "../world/world";
import Body from "../objects/body";
import AABB from "./aabb";


export default class NaiveBroadphase extends Broadphase{

	/**
	 * Naive broadphase implementation. Does N^2 tests.
	 *
	 * @class NaiveBroadphase
	 * @constructor
	 * @extends Broadphase
	 */
	constructor(){
		super(Broadphase.NAIVE);
	}
	

	/**
	 * Get the colliding pairs
	 * @method getCollisionPairs
	 * @param  {World} world
	 * @return {Array}
	 */
	getCollisionPairs(world: World): Body[]{
		let bodies: Body[] = world.bodies,
			result: Body[] = this.result;

		result.length = 0;

		for(let i: u16 = 0, Ncolliding: u16 = (bodies.length as u16); i < Ncolliding; i++){
			let bi = bodies[i];

			for(let j: u16 = 0; j < i; j++){
				let bj = bodies[j];

				if(Broadphase.canCollide(bi,bj) && this.boundingVolumeCheck(bi,bj)){
					result.push(bi);
					result.push(bj);
				}
			}
		}

		return result;
	};

	/**
	 * Returns all the bodies within an AABB.
	 * @method aabbQuery
	 * @param  {World} world
	 * @param  {AABB} aabb
	 * @param {array} result An array to store resulting bodies in.
	 * @return {array}
	 */
	aabbQuery(world: World, aabb: AABB, result: Array<Body>): Array<Body>{
		let bodies: Body[] = world.bodies;
		for(let i: u16 = 0; i < (bodies.length as u16); i++){
			let b: Body = bodies[i];

			if(b.aabbNeedsUpdate){
				b.updateAABB();
			}

			if(b.aabb.overlaps(aabb)){
				result.push(b);
			}
		}

		return result;
	};
}