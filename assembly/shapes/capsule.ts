//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

// let Shape = require('./Shape')
// ,   shallowClone = require('../utils/Utils').shallowClone
// ,   vec2 = require('../math/vec2');

import vec2 from "../math/vec2";
import Shape from "./shape";
import { ShapeOptions } from "./shape";
import AABB from "../collision/aabb";
import RaycastResult from "../collision/raycast-result";
import Ray from "../collision/ray";

function boxI(w: f32, h: f32): f32 {
	return w * h * (Mathf.pow(w, 2) + Mathf.pow(h, 2)) / 12;
}
function semiA(r: f32): f32 {
	return Mathf.PI * Mathf.pow(r, 2) / 2;
}
// http://www.efunda.com/math/areas/CircleHalf.cfm
function semiI(r: f32): f32 {
	return ((Mathf.PI / 4) - (8 / (9 * Mathf.PI))) * Mathf.pow(r, 4);
}
function semiC(r: f32): f32 {
	return (4 * r) / (3 * Mathf.PI);
}
// https://en.wikipedia.org/wiki/Second_moment_of_area#Parallel_axis_theorem
function capsuleA(l: f32, r: f32): f32 {
	return l * 2 * r + Mathf.PI * Mathf.pow(r, 2);
}
function capsuleI(l: f32, r: f32): f32 {
	let d = l / 2 + semiC(r);
	return boxI(l, 2 * r) + 2 * (semiI(r) + semiA(r) * Mathf.pow(d, 2));
}

var intersectCapsule_hitPointWorld = vec2.create();
var intersectCapsule_normal = vec2.create();
var intersectCapsule_l0 = vec2.create();
var intersectCapsule_l1 = vec2.create();
var intersectCapsule_unit_y = vec2.fromValues(0,1);

export class CapsuleOptions extends ShapeOptions{
	length: f32 = 1;
	radius: f32 = 1;
}

export default class Capsule extends Shape{
	/**
	 * The distance between the end points.
	 * @property {Number} length
	 */
	length: f32 = 1;

	/**
	 * The radius of the capsule.
	 * @property {Number} radius
	 */
	radius: f32 = 1;

	/**
	 * Capsule shape.
	 * @class Capsule
	 * @constructor
	 * @extends Shape
	 * @param {object} [options] (Note that this options object will be passed on to the {{#crossLink "Shape"}}{{/crossLink}} constructor.)
	 * @param {Number} [options.length=1] The distance between the end points, extends along the X axis.
	 * @param {Number} [options.radius=1] Radius of the capsule.
	 * @example
	 *     let body = new Body({ mass: 1 });
	 *     let capsuleShape = new Capsule({
	 *         length: 1,
	 *         radius: 2
	 *     });
	 *     body.addShape(capsuleShape);
	 */
	constructor(options: CapsuleOptions|null){
		super(Shape.CAPSULE, options);
		if(options){
			this.length = options.length;
			this.radius = options.radius;
		}
	}

	/**
	 * Compute the mass moment of inertia of the Capsule.
	 * @method conputeMomentOfInertia
	 * @return {Number}
	 * @todo
	 */
	computeMomentOfInertia(): f32{
		// http://www.efunda.com/math/areas/rectangle.cfm
		let r = this.radius,
			l = this.length,
			area = capsuleA(l, r);
		return (area > 0) ? capsuleI(l, r) / area : 0;
	}

	/**
	 * @method updateBoundingRadius
	 */
	updateBoundingRadius(): f32{
		this.boundingRadius = this.radius + this.length/2;
		return this.boundingRadius;
	}

	/**
	 * @method updateArea
	 */
	updateArea(): f32{
		this.area = Mathf.PI * this.radius * this.radius + this.radius * 2 * this.length;
		return this.area;
	}

	/**
	 * @method computeAABB
	 * @param  {AABB}   out      The resulting AABB.
	 * @param  {Array}  position
	 * @param  {Number} angle
	 */
	computeAABB(out: AABB, position: Float32Array, angle: f32): void{

		let r = vec2.create();
		let radius = this.radius;

		// Compute center position of one of the the circles, world oriented, but with local offset
		vec2.set(r,this.length / 2,0);
		if(angle !== 0){
			vec2.rotate(r,r,angle);
		}

		// Get bounds
		vec2.set(out.upperBound,  Mathf.max(r[0]+radius, -r[0]+radius),
								Mathf.max(r[1]+radius, -r[1]+radius));
		vec2.set(out.lowerBound,  Mathf.min(r[0]-radius, -r[0]-radius),
								Mathf.min(r[1]-radius, -r[1]-radius));

		// Add offset
		vec2.add(out.lowerBound, out.lowerBound, position);
		vec2.add(out.upperBound, out.upperBound, position);
	}


	/**
	 * @method raycast
	 * @param  {RaycastResult} result
	 * @param  {Ray} ray
	 * @param  {array} position
	 * @param  {number} angle
	 */
	raycast(result: RaycastResult, ray: Ray, position: Float32Array, angle: f32): void{

		let from = ray.from;
		let to = ray.to;

		let hitPointWorld = intersectCapsule_hitPointWorld;
		let normal = intersectCapsule_normal;
		let l0 = intersectCapsule_l0;
		let l1 = intersectCapsule_l1;

		// The sides
		let halfLen = this.length / 2;
		for(let i: f32 = 0; i < 2; i++){

			// get start and end of the line
			let y: f32 = this.radius * (i * 2 - 1);
			vec2.set(l0, -halfLen, y);
			vec2.set(l1, halfLen, y);
			vec2.toGlobalFrame(l0, l0, position, angle);
			vec2.toGlobalFrame(l1, l1, position, angle);

			let delta = vec2.getLineSegmentsIntersectionFraction(from, to, l0, l1);
			if(delta >= 0){
				vec2.rotate(normal, intersectCapsule_unit_y, angle);
				vec2.scale(normal, normal, (i*2-1));
				ray.reportIntersection(result, delta, normal, -1);
				if(result.shouldStop(ray)){
					return;
				}
			}
		}

		// Circles
		let diagonalLengthSquared = Mathf.pow(this.radius, 2) + Mathf.pow(halfLen, 2);
		for(let i: f32 = 0; i < 2; i++){
			vec2.set(l0, halfLen * (i * 2 - 1), 0);
			vec2.toGlobalFrame(l0, l0, position, angle);

			let dfl0 = from[0] - l0[0];
			let dfl1 = from[1] - l0[1];
			let dl0 = to[0] - from[0];
			let dl1 = to[1] - from[1];
			let a: f32 = dl0 + dl1 * dl1;
			let b: f32 = 2.0 * (dl0*dfl0 + dl1*dfl1);
			let c: f32 = dfl0*dfl0 + dfl1*dfl1 - this.radius*this.radius;
			let delta: f32 = b*b - 4 * a * c;

			if(delta < 0){
				// No intersection
				continue;

			} else if(delta === 0){
				// single intersection point
				vec2.lerp(hitPointWorld, from, to, delta);

				if(vec2.squaredDistance(hitPointWorld, position) > diagonalLengthSquared){
					vec2.subtract(normal, hitPointWorld, l0);
					vec2.normalize(normal,normal);
					ray.reportIntersection(result, delta, normal, -1);
					if(result.shouldStop(ray)){
						return;
					}
				}

			} else {
				let sqrtDelta: f32 = Mathf.sqrt(delta);
				let inv2a: f32 = 1.0 / (2.0 * a);
				let d1: f32 = (- b - sqrtDelta) * inv2a;
				let d2: f32 = (- b + sqrtDelta) * inv2a;

				if(d1 >= 0 && d1 <= 1){
					vec2.lerp(hitPointWorld, from, to, d1);
					if(vec2.squaredDistance(hitPointWorld, position) > diagonalLengthSquared){
						vec2.subtract(normal, hitPointWorld, l0);
						vec2.normalize(normal,normal);
						ray.reportIntersection(result, d1, normal, -1);
						if(result.shouldStop(ray)){
							return;
						}
					}
				}

				if(d2 >= 0 && d2 <= 1){
					vec2.lerp(hitPointWorld, from, to, d2);
					if(vec2.squaredDistance(hitPointWorld, position) > diagonalLengthSquared){
						vec2.subtract(normal, hitPointWorld, l0);
						vec2.normalize(normal,normal);
						ray.reportIntersection(result, d2, normal, -1);
						if(result.shouldStop(ray)){
							return;
						}
					}
				}
			}
		}
	}

	pointTest(localPoint: Float32Array): boolean{
		let radius = this.radius;
		let halfLength = this.length * 0.5;

		if((Mathf.abs(localPoint[0]) <= halfLength && Mathf.abs(localPoint[1]) <= radius)){
			return true;
		}

		if(Mathf.pow(localPoint[0] - halfLength, 2) + Mathf.pow(localPoint[1], 2) <= radius * radius){
			return true;
		}

		if(Mathf.pow(localPoint[0] + halfLength, 2) + Mathf.pow(localPoint[1], 2) <= radius * radius){
			return true;
		}

		return false;
	}
}