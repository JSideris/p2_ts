//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import vec2 from "../math/vec2";
import Shape from "../shapes/shape";
import Body from "../objects/body";
import Ray from "./ray";


export default class RaycastResult{
	/**
	 * The normal of the hit, oriented in world space.
	 * @property {array} normal
	 */
	normal: Float32Array = vec2.create();

	/**
	 * The hit shape, or null.
	 * @property {Shape} shape
	 */
	shape: Shape|null = null;

	/**
	 * The hit body, or null.
	 * @property {Body} body
	 */
	body: Body|null = null;

	/**
	 * The index of the hit triangle, if the hit shape was indexable.
	 * @property {number} faceIndex
	 * @default -1
	 */
	faceIndex: u32 = -1;

	/**
	 * Distance to the hit, as a fraction. 0 is at the "from" point, 1 is at the "to" point. Will be set to -1 if there was no hit yet.
	 * @property {number} fraction
	 * @default -1
	 */
	fraction: f32 = -1;

	/**
	 * If the ray should stop traversing.
	 * @readonly
	 * @property {boolean} isStopped
	 */
	isStopped:boolean = false;

	/**
	 * Storage for Ray casting hit data.
	 * @class RaycastResult
	 * @constructor
	 */
	constructor(){
	}

	/**
	 * Reset all result data. Must be done before re-using the result object.
	 * @method reset
	 */
	reset(): void {
		vec2.set(this.normal, 0, 0);
		this.shape = null;
		this.body = null;
		this.faceIndex = -1;
		this.fraction = -1;
		this.isStopped = false;
	}

	/**
	 * Get the distance to the hit point.
	 * @method getHitDistance
	 * @param {Ray} ray
	 * @return {number}
	 */
	getHitDistance(ray: Ray): f32 {
		return vec2.distance(ray.from, ray.to) * this.fraction;
	}

	/**
	 * Returns true if the ray hit something since the last reset().
	 * @method hasHit
	 * @®eturn {boolean}
	 */
	hasHit(): boolean {
		return this.fraction !== -1;
	}

	/**
	 * Get world hit point.
	 * @method getHitPoint
	 * @param {array} out
	 * @param {Ray} ray
	 */
	getHitPoint(out: Float32Array, ray: Ray): void {
		vec2.lerp(out, ray.from, ray.to, this.fraction);
	}

	/**
	 * Can be called while iterating over hits to stop searching for hit points.
	 * @method stop
	 */
	stop(): void{
		this.isStopped = true;
	}

	/**
	 * @method shouldStop
	 * @private
	 * @param {Ray} ray
	 * @return {boolean}
	 */
	shouldStop(ray: Ray): boolean{
		return this.isStopped || (this.fraction !== -1 && ray.mode === Ray.ANY);
	}

	/**
	 * @method set
	 * @private
	 * @param {array} normal
	 * @param {Shape} shape
	 * @param {Body} body
	 * @param {number} fraction
	 * @param {number} faceIndex
	 */
	set(
		normal: Float32Array,
		shape: Shape,
		body: Body,
		fraction: f32,
		faceIndex: u32
	): void{
		vec2.copy(this.normal, normal);
		this.shape = shape;
		this.body = body;
		this.fraction = fraction;
		this.faceIndex = faceIndex;
	}
}