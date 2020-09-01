// var Shape = require('./Shape')
// ,    vec2 = require('../math/vec2')
// ,    shallowClone = require('../utils/Utils').shallowClone;

import Shape from "./Shape";
import AABB from "../collision/aabb";
import RaycastResult from "../collision/raycast-result";
import Ray from "../collision/ray";

export default class Circle extends Shape{
	radius: number;

	/**
	 * Circle shape class.
	 * @class Circle
	 * @extends Shape
	 * @constructor
	 * @param {options} [options] (Note that this options object will be passed on to the {{#crossLink "Shape"}}{{/crossLink}} constructor.)
	 * @param {number} [options.radius=1] The radius of this circle
	 *
	 * @example
	 *     var body = new Body({ mass: 1 });
	 *     var circleShape = new Circle({
	 *         radius: 1
	 *     });
	 *     body.addShape(circleShape);
	 */
	constructor(options?: {
		radius?: f32,
		vertices?: Float32Array[], // Don't use this.
		type?: u16 // Don't use this.
	}){
		options = shallowClone(options ?? {});
		options.type = Shape.CIRCLE;
		super(options);

		/**
		 * The radius of the circle.
		 * @property radius
		 * @type {number}
		 */
		this.radius = options?.radius ?? 1;

	}

	/**
	 * @method computeMomentOfInertia
	 * @return {Number}
	 */
	computeMomentOfInertia(){
		var r = this.radius;
		return r * r / 2;
	}

	/**
	 * @method updateBoundingRadius
	 * @return {Number}
	 */
	updateBoundingRadius(): f32{
		this.boundingRadius = this.radius;
		return this.boundingRadius;
	}

	/**
	 * @method updateArea
	 * @return {Number}
	 */
	updateArea(): f32{
		this.area = Math.PI * this.radius * this.radius;
		return this.area;
	}

	/**
	 * @method computeAABB
	 * @param  {AABB}   out      The resulting AABB.
	 * @param  {Array}  position
	 * @param  {Number} angle
	 */
	computeAABB(out: AABB, position: Float32Array/*, angle: f32*/): void{
		var r = this.radius;
		vec2.set(out.upperBound,  r,  r);
		vec2.set(out.lowerBound, -r, -r);
		if(position){
			vec2.add(out.lowerBound, out.lowerBound, position);
			vec2.add(out.upperBound, out.upperBound, position);
		}
	}


	/**
	 * @method raycast
	 * @param  {RaycastResult} result
	 * @param  {Ray} ray
	 * @param  {array} position
	 * @param  {number} angle
	 */
	raycast(result: RaycastResult, ray: Ray, position: Float32Array/*, angle: f32*/): void{
		var Ray_intersectSphere_intersectionPoint = vec2.create();
		var Ray_intersectSphere_normal = vec2.create();
		var from = ray.from,
			to = ray.to,
			r = this.radius;

		var a = Math.pow(to[0] - from[0], 2) + Math.pow(to[1] - from[1], 2);
		var b = 2 * ((to[0] - from[0]) * (from[0] - position[0]) + (to[1] - from[1]) * (from[1] - position[1]));
		var c = Math.pow(from[0] - position[0], 2) + Math.pow(from[1] - position[1], 2) - Math.pow(r, 2);
		var delta = Math.pow(b, 2) - 4 * a * c;

		var intersectionPoint = Ray_intersectSphere_intersectionPoint;
		var normal = Ray_intersectSphere_normal;

		if(delta < 0){
			// No intersection
			return;

		} else if(delta === 0){
			// single intersection point
			vec2.lerp(intersectionPoint, from, to, delta);

			vec2.subtract(normal, intersectionPoint, position);
			vec2.normalize(normal,normal);

			ray.reportIntersection(result, delta, normal, -1);

		} else {
			var sqrtDelta = Math.sqrt(delta);
			var inv2a = 1 / (2 * a);
			var d1 = (- b - sqrtDelta) * inv2a;
			var d2 = (- b + sqrtDelta) * inv2a;

			if(d1 >= 0 && d1 <= 1){
				vec2.lerp(intersectionPoint, from, to, d1);

				vec2.subtract(normal, intersectionPoint, position);
				vec2.normalize(normal,normal);

				ray.reportIntersection(result, d1, normal, -1);

				if(result.shouldStop(ray)){
					return;
				}
			}

			if(d2 >= 0 && d2 <= 1){
				vec2.lerp(intersectionPoint, from, to, d2);

				vec2.subtract(normal, intersectionPoint, position);
				vec2.normalize(normal,normal);

				ray.reportIntersection(result, d2, normal, -1);
			}
		}
	}

	pointTest(localPoint: Float32Array): boolean{
		var radius = this.radius;
		return vec2.squaredLength(localPoint) <= radius * radius;
	}
}