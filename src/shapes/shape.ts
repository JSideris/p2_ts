type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import vec2 from "../math/vec2";
import Body from "../objects/body";
import AABB from "../collision/aabb";
import Ray from "../collision/ray";
import Material from "../material/Material";
import RaycastResult from "../collision/raycast-result";

export default abstract class Shape
{

	static idCounter: u32 = 0;

	/**
	 * The body this shape is attached to. A shape can only be attached to a single body.
	 * @property {Body} body
	 */
	public body?: Body;

	/**
	 * Body-local position of the shape.
	 * @property {Array} position
	 */
	public position: Float32Array = vec2.create();

	/**
	 * Body-local angle of the shape.
	 * @property {number} angle
	 */
	public angle: f32 = 0;

	
	/**
	 * The type of the shape. One of:
	 *
	 * <ul>
	 * <li><a href="Shape.html#property_CIRCLE">Shape.CIRCLE</a></li>
	 * <li><a href="Shape.html#property_PARTICLE">Shape.PARTICLE</a></li>
	 * <li><a href="Shape.html#property_PLANE">Shape.PLANE</a></li>
	 * <li><a href="Shape.html#property_CONVEX">Shape.CONVEX</a></li>
	 * <li><a href="Shape.html#property_LINE">Shape.LINE</a></li>
	 * <li><a href="Shape.html#property_BOX">Shape.BOX</a></li>
	 * <li><a href="Shape.html#property_CAPSULE">Shape.CAPSULE</a></li>
	 * <li><a href="Shape.html#property_HEIGHTFIELD">Shape.HEIGHTFIELD</a></li>
	 * </ul>
	 *
	 * @property {number} type
	 */
	public type: u16 = 0;

	/**
	 * Shape object identifier. Read only.
	 * @readonly
	 * @type {Number}
	 * @property id
	 */
	public id: u32 = 0;

	/**
	 * Bounding circle radius of this shape
	 * @readonly
	 * @property boundingRadius
	 * @type {Number}
	 */
	public boundingRadius: f32 = 0;

	/**
	 * Collision group that this shape belongs to (bit mask). See <a href="http://www.aurelienribon.com/blog/2011/07/box2d-tutorial-collision-filtering/">this tutorial</a>.
	 * @property collisionGroup
	 * @type {Number}
	 * @example
	 *     // Setup bits for each available group
	 *     var PLAYER = Math.pow(2,0),
	 *         ENEMY =  Math.pow(2,1),
	 *         GROUND = Math.pow(2,2)
	 *
	 *     // Put shapes into their groups
	 *     player1Shape.collisionGroup = PLAYER;
	 *     player2Shape.collisionGroup = PLAYER;
	 *     enemyShape  .collisionGroup = ENEMY;
	 *     groundShape .collisionGroup = GROUND;
	 *
	 *     // Assign groups that each shape collide with.
	 *     // Note that the players can collide with ground and enemies, but not with other players.
	 *     player1Shape.collisionMask = ENEMY | GROUND;
	 *     player2Shape.collisionMask = ENEMY | GROUND;
	 *     enemyShape  .collisionMask = PLAYER | GROUND;
	 *     groundShape .collisionMask = PLAYER | ENEMY;
	 *
	 * @example
	 *     // How collision check is done
	 *     if(shapeA.collisionGroup & shapeB.collisionMask)!=0 && (shapeB.collisionGroup & shapeA.collisionMask)!=0){
	 *         // The shapes will collide
	 *     }
	 */
	public collisionGroup: i16 = 1;

	/**
	 * Whether to produce contact forces when in contact with other bodies. Note that contacts will be generated, but they will be disabled. That means that this shape will move through other body shapes, but it will still trigger contact events, etc.
	 * @property {boolean} collisionResponse
	 */
	public collisionResponse: boolean;

	/**
	 * Collision mask of this shape. See .collisionGroup.
	 * @property collisionMask
	 * @type {Number}
	 */
	public collisionMask: i16;

	/**
	 * Material to use in collisions for this Shape. If this is set to null, the world will use default material properties instead.
	 * @property material
	 * @type {Material}
	 */
	public material?: Material;

	/**
	 * Area of this shape.
	 * @property area
	 * @type {Number}
	 */
	public area = 0;

	/**
	 * Set to true if you want this shape to be a sensor. A sensor does not generate contacts, but it still reports contact events. This is good if you want to know if a shape is overlapping another shape, without them generating contacts.
	 * @property {boolean} sensor
	 */
	public sensor: boolean;

	/**
	 * Base class for shapes. Not to be used directly.
	 * @class Shape
	 * @constructor
	 * @param {object} [options]
	 * @param {number} [options.angle=0]
	 * @param {number} [options.collisionGroup=1]
	 * @param {number} [options.collisionMask=1]
	 * @param {number} [options.id] Optional - specify an ID for this shape. Possibly useful for replacing shapes. Careful to avoid duplicates!
	 * @param {boolean} [options.collisionResponse=true]
	 * @param {Material} [options.material=null]
	 * @param {array} [options.position]
	 * @param {boolean} [options.sensor=false]
	 * @param {object} [options.type=0]
	 */
	constructor(
		type: u16,
		options?: {
			position?: Float32Array
			angle?: f32,
			id?: u32,
			collisionGroup?: i16,
			collisionResponse?: boolean,
			collisionMask?: i16,
			material?: Material,
			sensor?: boolean,
		}
	){
		if(options?.position){
			vec2.copy(this.position, options.position);
		}

		this.angle = options?.angle ?? 0;
		this.type = type;
		this.id = options?.id ?? ++Shape.idCounter;
		this.collisionGroup = options?.collisionGroup ?? 1;
		this.collisionResponse = options?.collisionResponse ?? true;
		this.collisionMask = options?.collisionMask ?? 1;
		this.material = options?.material;
		this.sensor = options?.sensor ?? false;

		if(this.type){
			this.updateBoundingRadius();
		}

		this.updateArea();
	}

	/**
	 * @static
	 * @property {Number} CIRCLE
	 */
	static CIRCLE:u16 =      1;

	/**
	 * @static
	 * @property {Number} PARTICLE
	 */
	static PARTICLE:u16 =    2;

	/**
	 * @static
	 * @property {Number} PLANE
	 */
	static PLANE:u16 =       4;

	/**
	 * @static
	 * @property {Number} CONVEX
	 */
	static CONVEX:u16 =      8;

	/**
	 * @static
	 * @property {Number} LINE
	 */
	static LINE:u16 =        16;

	/**
	 * @static
	 * @property {Number} BOX
	 */
	static BOX:u16 =   32;

	/**
	 * @static
	 * @property {Number} CAPSULE
	 */
	static CAPSULE:u16 = 64;

	/**
	 * @static
	 * @property {Number} HEIGHTFIELD
	 */
	static HEIGHTFIELD:u16 = 128;

	/**
	 * @static
	 * @property {Number} HEIGHTFIELD
	 */
	static AXISALIGNEDBOX:u16 = 256;

	/**
	 * Should return the moment of inertia around the Z axis of the body. See <a href="http://en.wikipedia.org/wiki/List_of_moments_of_inertia">Wikipedia's list of moments of inertia</a>.
	 * @method computeMomentOfInertia
	 * @return {Number} If the inertia is infinity or if the object simply isn't possible to rotate, return 0.
	 */
	abstract computeMomentOfInertia(): f32;

	/**
	 * Returns the bounding circle radius of this shape.
	 * @method updateBoundingRadius
	 * @return {Number}
	 */
	abstract updateBoundingRadius(): f32

	/**
	 * Update the .area property of the shape.
	 * @method updateArea
	 */
	abstract updateArea(): f32;

	/**
	 * Compute the world axis-aligned bounding box (AABB) of this shape.
	 * @method computeAABB
	 * @param  {AABB} out The resulting AABB.
	 * @param  {Array} position World position of the shape.
	 * @param  {Number} angle World angle of the shape.
	 */
	abstract computeAABB(out: AABB, position: Float32Array, angle: f32): void;

	/**
	 * Perform raycasting on this shape.
	 * @method raycast
	 * @param  {RayResult} result Where to store the resulting data.
	 * @param  {Ray} ray The Ray that you want to use for raycasting.
	 * @param  {array} position World position of the shape (the .position property will be ignored).
	 * @param  {number} angle World angle of the shape (the .angle property will be ignored).
	 */
	abstract raycast(result: RaycastResult, ray: Ray, position: Float32Array, angle: f32): void;

	/**
	 * Test if a point is inside this shape.
	 * @method pointTest
	 * @param {array} localPoint
	 * @return {boolean}
	 */
	pointTest(localPoint: Float32Array){ return false; }

	/**
	 * Transform a world point to local shape space (assumed the shape is transformed by both itself and the body).
	 * @method worldPointToLocal
	 * @param {array} out
	 * @param {array} worldPoint
	 */
	worldPointToLocal(out: Float32Array, worldPoint: Float32Array): void{
		var shapeWorldPosition = vec2.create();
		var body = this.body;
		if(!body) return;

		vec2.rotate(shapeWorldPosition, this.position, body.angle);
		vec2.add(shapeWorldPosition, shapeWorldPosition, body.position);

		vec2.toLocalFrame(out, worldPoint, shapeWorldPosition, body.angle + this.angle);
	}
}