import vec2 from "../math/vec2";
import Body from "../objects/body";
import RaycastResult from "./raycast-result";
import Shape from "../shapes/Shape";
import AABB from "./aabb";

var intersectBody_worldPosition = vec2.create();

export default class Ray{
	/**
	 * Ray start point.
	 * @property {array} from
	 */
	public from: Float32Array;

	/**
	 * Ray end point
	 * @property {array} to
	 */
	public to: Float32Array;

	/**
	 * Set to true if you want the Ray to take .collisionResponse flags into account on bodies and shapes.
	 * @property {Boolean} checkCollisionResponse
	 */
	public checkCollisionResponse: boolean;

	/**
	 * If set to true, the ray skips any hits with normal.dot(rayDirection) < 0.
	 * @property {Boolean} skipBackfaces
	 */
	public skipBackfaces: boolean;

	/**
	 * @property {number} collisionMask
	 * @default -1
	 */
	public collisionMask: i16;

	/**
	 * @property {number} collisionGroup
	 * @default -1
	 */
	public collisionGroup: i16;

	/**
	 * The intersection mode. Should be {{#crossLink "Ray/ANY:property"}}Ray.ANY{{/crossLink}}, {{#crossLink "Ray/ALL:property"}}Ray.ALL{{/crossLink}} or {{#crossLink "Ray/CLOSEST:property"}}Ray.CLOSEST{{/crossLink}}.
	 * @property {number} mode
	 */
	public mode: u16;

	/**
	 * Current, user-provided result callback. Will be used if mode is Ray.ALL.
	 * @property {Function} callback
	 */
	public callback: Function;

	/**
	 * @readOnly
	 * @property {array} direction
	 */
	public direction: Float32Array = vec2.create();

	/**
	 * Length of the ray
	 * @readOnly
	 * @property {number} length
	 */
	public length: f32 = 1;

	private _currentShape?: Shape;
	private _currentBody?: Body;

	/**
	 * A line with a start and end point that is used to intersect shapes. For an example, see {{#crossLink "World/raycast:method"}}World.raycast{{/crossLink}}
	 * @class Ray
	 * @constructor
	 * @param {object} [options]
	 * @param {array} [options.from]
	 * @param {array} [options.to]
	 * @param {boolean} [options.checkCollisionResponse=true]
	 * @param {boolean} [options.skipBackfaces=false]
	 * @param {number} [options.collisionMask=-1]
	 * @param {number} [options.collisionGroup=-1]
	 * @param {number} [options.mode=Ray.ANY]
	 * @param {Function} [options.callback]
	 */
	constructor(options: {
			from: Float32Array,
			to: Float32Array,
			checkCollisionResponse: boolean,
			skipBackfaces: boolean,
			collisionMask: i16,
			collisionGroup: i16,
			mode: u16,
			callback: Function
		}){
		options = options || {};

		this.from = options.from ? vec2.clone(options.from) : vec2.create();

		this.to = options.to ? vec2.clone(options.to) : vec2.create();

		this.checkCollisionResponse = options.checkCollisionResponse !== undefined ? options.checkCollisionResponse : true;

		this.skipBackfaces = !!options.skipBackfaces;

		this.collisionMask = options.collisionMask !== undefined ? options.collisionMask : -1;

		this.collisionGroup = options.collisionGroup !== undefined ? options.collisionGroup : -1;

		this.mode = options.mode !== undefined ? options.mode : Ray.ANY;

		this.callback = options.callback || function(/*result*/){};

		this.update();
	}

	/**
	 * This raycasting mode will make the Ray traverse through all intersection points and only return the closest one.
	 * @static
	 * @property {Number} CLOSEST
	 */
	static CLOSEST: u16 = 1;

	/**
	 * This raycasting mode will make the Ray stop when it finds the first intersection point.
	 * @static
	 * @property {Number} ANY
	 */
	static ANY: u16 = 2;

	/**
	 * This raycasting mode will traverse all intersection points and executes a callback for each one.
	 * @static
	 * @property {Number} ALL
	 */
	static ALL: u16 = 4;

	/**
	 * Should be called if you change the from or to point.
	 * @method update
	 */
	update(){

		// Update .direction and .length
		var d = this.direction;
		vec2.subtract(d, this.to, this.from);
		this.length = vec2.length(d);
		vec2.normalize(d, d);

	};

	/**
	 * @method intersectBodies
	 * @param {Array} bodies An array of Body objects.
	 */
	intersectBodies (result: RaycastResult, bodies: Body[]) {
		for (var i = 0, l = bodies.length; !result.shouldStop(this) && i < l; i++) {
			var body = bodies[i];
			var aabb = body.getAABB();
			if(aabb.overlapsRay(this) >= 0 || aabb.containsPoint(this.from)){
				this.intersectBody(result, body);
			}
		}
	};

	

	/**
	 * Shoot a ray at a body, get back information about the hit.
	 * @method intersectBody
	 * @private
	 * @param {Body} body
	 */
	intersectBody (result: RaycastResult, body: Body) {
		var checkCollisionResponse = this.checkCollisionResponse;

		if(checkCollisionResponse && !body.collisionResponse){
			return;
		}

		var worldPosition = intersectBody_worldPosition;

		for (var i = 0, N = body.shapes.length; i < N; i++) {
			var shape = body.shapes[i];

			if(checkCollisionResponse && !shape.collisionResponse){
				continue; // Skip
			}

			if((this.collisionGroup & shape.collisionMask) === 0 || (shape.collisionGroup & this.collisionMask) === 0){
				continue;
			}

			// Get world angle and position of the shape
			vec2.rotate(worldPosition, shape.position, body.angle);
			vec2.add(worldPosition, worldPosition, body.position);
			var worldAngle = shape.angle + body.angle;

			this.intersectShape(
				result,
				shape,
				worldAngle,
				worldPosition,
				body
			);

			if(result.shouldStop(this)){
				break;
			}
		}
	};

	/**
	 * @method intersectShape
	 * @private
	 * @param {Shape} shape
	 * @param {number} angle
	 * @param {array} position
	 * @param {Body} body
	 */
	intersectShape(result: RaycastResult, shape: Shape, angle: f32, position: Float32Array, body: Body){
		var from = this.from;

		// Checking radius
		var distance = distanceFromIntersectionSquared(from, this.direction, position);
		if (distance > shape.boundingRadius * shape.boundingRadius) {
			return;
		}

		this._currentBody = body;
		this._currentShape = shape;

		shape.raycast(result, this, position, angle);

		this._currentBody = undefined;
		this._currentShape = undefined;
	};

	/**
	 * Get the AABB of the ray.
	 * @method getAABB
	 * @param  {AABB} aabb
	 */
	getAABB(result: AABB){
		var to = this.to;
		var from = this.from;
		vec2.set(
			result.lowerBound,
			Math.min(to[0], from[0]),
			Math.min(to[1], from[1])
		);
		vec2.set(
			result.upperBound,
			Math.max(to[0], from[0]),
			Math.max(to[1], from[1])
		);
	};

	/**
	 * @method reportIntersection
	 * @private
	 * @param  {number} fraction
	 * @param  {array} normal
	 * @param  {number} [faceIndex=-1]
	 * @return {boolean} True if the intersections should continue // This never returned anything.
	 */
	reportIntersection(result: RaycastResult, fraction: f32, normal: Float32Array, faceIndex: u32){
		var shape = this._currentShape as Shape;
		var body = this._currentBody as Body;

		// Skip back faces?
		if(this.skipBackfaces && vec2.dot(normal, this.direction) > 0){
			return;
		}

		switch(this.mode){

		case Ray.ALL:
			result.set(
				normal,
				shape,
				body,
				fraction,
				faceIndex
			);
			this.callback(result);
			break;

		case Ray.CLOSEST:

			// Store if closer than current closest
			if(fraction < result.fraction || !result.hasHit()){
				result.set(
					normal,
					shape,
					body,
					fraction,
					faceIndex
				);
			}
			break;

		case Ray.ANY:

			// Report and stop.
			result.set(
				normal,
				shape,
				body,
				fraction,
				faceIndex
			);
			break;
		}
	};


}

function distanceFromIntersectionSquared(from: Float32Array, direction: Float32Array, position: Float32Array) {
	let v0 = vec2.create(),
		intersect = vec2.create();

	// v0 is vector from from to position
	vec2.subtract(v0, position, from);
	let dot = vec2.dot(v0, direction);

	// intersect = direction * dot + from
	vec2.scale(intersect, direction, dot);
	vec2.add(intersect, intersect, from);

	return vec2.squaredDistance(position, intersect);
}