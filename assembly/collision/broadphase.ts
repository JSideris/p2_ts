import vec2 from "../math/vec2";
import Body from "../objects/Body";
import World from "../world/world";
import AABB from "./aabb";

export default class Broadphase{
	public type: u16;

	/**
	 * The resulting overlapping pairs. Will be filled with results during .getCollisionPairs().
	 * @property result
	 * @type {Array}
	 */
	public result: Array<Body> = [];

	/**
	 * The world to search for collision pairs in. To change it, use .setWorld()
	 * @property world
	 * @type {World}
	 * @readOnly
	 */
	public world: World;
	
	/**
	 * The bounding volume type to use in the broadphase algorithms. Should be set to Broadphase.AABB or Broadphase.BOUNDING_CIRCLE.
	 * @property {Number} boundingVolumeType
	 */
	public boundingVolumeType: u16 = Broadphase.AABB;

	/**
	 * Base class for broadphase implementations. Don't use this class directly.
	 * @class Broadphase
	 * @constructor
	 */
	constructor(type: u16){
		this.type = type || 1;
	}

	

	/**
	 * Set the world that we are searching for collision pairs in.
	 * @method setWorld
	 * @param  {World} world
	 */
	// TODO: move to constructor!
	setWorld(world: World){
		this.world = world;
	};

	/*
	 * Get all potential intersecting body pairs.
	 * @method getCollisionPairs
	 * @param  {World} world The world to search in.
	 * @return {Array} An array of the bodies, ordered in pairs. Example: A result of [a,b,c,d] means that the potential pairs are: (a,b), (c,d).
	 */
	//getCollisionPairs(/*world*/){};

	/**
	 * Check whether the bounding radius of two bodies overlap.
	 * @method  boundingRadiusCheck
	 * @param  {Body} bodyA
	 * @param  {Body} bodyB
	 * @return {Boolean}
	 */
	static boundingRadiusCheck (bodyA: Body, bodyB: Body){
		var d2 = vec2.squaredDistance(bodyA.position, bodyB.position),
			r = bodyA.boundingRadius + bodyB.boundingRadius;
		return d2 <= r*r;
	};

	/**
	 * Check whether the AABB of two bodies overlap.
	 * @method  aabbCheck
	 * @param  {Body} bodyA
	 * @param  {Body} bodyB
	 * @return {Boolean}
	 */
	static aabbCheck(bodyA: Body, bodyB: Body){
		return bodyA.getAABB().overlaps(bodyB.getAABB());
	};

	/**
	 * Check whether the bounding volumes of two bodies overlap.
	 * @method  boundingVolumeCheck
	 * @param  {Body} bodyA
	 * @param  {Body} bodyB
	 * @return {Boolean}
	 */
	boundingVolumeCheck(bodyA: Body, bodyB: Body){
		var result;

		switch(this.boundingVolumeType){
		case Broadphase.BOUNDING_CIRCLE:
			result =  Broadphase.boundingRadiusCheck(bodyA,bodyB);
			break;
		case Broadphase.AABB:
			result = Broadphase.aabbCheck(bodyA,bodyB);
			break;
		default:
			throw new Error('Bounding volume type not recognized: '+this.boundingVolumeType);
		}
		return result;
	};

	/**
	 * Check whether two bodies are allowed to collide at all.
	 * @method  canCollide
	 * @param  {Body} bodyA
	 * @param  {Body} bodyB
	 * @return {Boolean}
	 */
	static canCollide(bodyA: Body, bodyB: Body){
		var KINEMATIC = Body.KINEMATIC;
		var STATIC = Body.STATIC;
		var typeA = bodyA.type;
		var typeB = bodyB.type;

		// Cannot collide static bodies
		if(typeA === STATIC && typeB === STATIC){
			return false;
		}

		// Cannot collide static vs kinematic bodies
		if( (typeA === KINEMATIC && typeB === STATIC) ||
			(typeA === STATIC    && typeB === KINEMATIC)){
			return false;
		}

		// Cannot collide kinematic vs kinematic
		if(typeA === KINEMATIC && typeB === KINEMATIC){
			return false;
		}

		// Cannot collide both sleeping bodies
		if(bodyA.sleepState === Body.SLEEPING && bodyB.sleepState === Body.SLEEPING){
			return false;
		}

		// Cannot collide if one is static and the other is sleeping
		if( (bodyA.sleepState === Body.SLEEPING && typeB === STATIC) ||
			(bodyB.sleepState === Body.SLEEPING && typeA === STATIC)){
			return false;
		}

		return true;
	};

	/**
	 * Returns all the bodies within an AABB.
	 * @method aabbQuery
	 * @param  {World} world
	 * @param  {AABB} aabb
	 * @param {array} result An array to store resulting bodies in.
	 * @return {array}
	 */
	aabbQuery(world: World, aabb: AABB, result: Array<Body>){
		// To be implemented in subclasses
	};

	// Mode:
	static NAIVE: u16 = 1;
	static SAP: u16 = 2;

	// Bounding box:
	/**
	 * Axis aligned bounding box type.
	 * @static
	 * @property {Number} AABB
	 */
	static AABB: u16 = 1;

	/**
	 * Bounding circle type.
	 * @static
	 * @property {Number} BOUNDING_CIRCLE
	 */
	static BOUNDING_CIRCLE: u16 = 2;
}