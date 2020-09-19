//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;


import Shape from "./shape";
import { ShapeOptions } from "./shape";
import AABB from "../collision/aabb";
import RaycastResult from "../collision/raycast-result";
import Ray from "../collision/ray";
import vec2 from "../math/vec2";

var intersectPlane_planePointToFrom = vec2.create();
var intersectPlane_normal = vec2.create();
var intersectPlane_len = vec2.create();

export class PlaneOptions extends ShapeOptions{}

export default class Plane extends Shape{

	/**
	 * Plane shape class. The plane is facing in the Y direction.
	 * @class Plane
	 * @extends Shape
	 * @constructor
	 * @param {object} [options] (Note that this options object will be passed on to the {{#crossLink "Shape"}}{{/crossLink}} constructor.)
	 * @example
	 *     var body = new Body();
	 *     var shape = new Plane();
	 *     body.addShape(shape);
	 */
	constructor(options: ShapeOptions|null){
		super(Shape.PLANE, options);
	}

	/**
	 * Compute moment of inertia
	 * @method computeMomentOfInertia
	 */
	computeMomentOfInertia(): f32{
		return 0; // Plane is infinite. The inertia should therefore be infinity but by convention we set 0 here
	}

	/**
	 * Update the bounding radius
	 * @method updateBoundingRadius
	 */
	updateBoundingRadius(): f32{
		this.boundingRadius = Infinity;
		return Infinity;
	}

	/**
	 * @method computeAABB
	 * @param  {AABB}   out
	 * @param  {Array}  position
	 * @param  {Number} angle
	 */
	computeAABB(out: AABB, position: Float32Array, angle: f32): void{
		var a = angle % (2.0 * Mathf.PI);
		var max: f32 = 1e7;
		var lowerBound = out.lowerBound;
		var upperBound = out.upperBound;

		// Set max bounds
		vec2.set(lowerBound, -max, -max);
		vec2.set(upperBound,  max,  max);

		if(a === 0){
			// y goes from -inf to 0
			upperBound[1] = position[1];

		} else if(a === Math.PI / 2){

			// x goes from 0 to inf
			lowerBound[0] = position[0];

		} else if(a === Math.PI){

			// y goes from 0 to inf
			lowerBound[1] = position[1];

		} else if(a === 3*Math.PI/2){

			// x goes from -inf to 0
			upperBound[0] = position[0];

		}
	}

	updateArea(): f32{
		this.area = Infinity;
		return Infinity;
	}


	/**
	 * @method raycast
	 * @param  {RayResult} result
	 * @param  {Ray} ray
	 * @param  {array} position
	 * @param  {number} angle
	 */
	raycast(result: RaycastResult, ray: Ray, position: Float32Array, angle: f32): void{

		var from = ray.from;
		var to = ray.to;
		var direction = ray.direction;
		var planePointToFrom = intersectPlane_planePointToFrom;
		var normal = intersectPlane_normal;
		var len = intersectPlane_len;

		// Get plane normal
		vec2.set(normal, 0, 1);
		vec2.rotate(normal, normal, angle);

		vec2.subtract(len, from, position);
		var planeToFrom = vec2.dot(len, normal);
		vec2.subtract(len, to, position);
		var planeToTo = vec2.dot(len, normal);

		if(planeToFrom * planeToTo > 0){
			// "from" and "to" are on the same side of the plane... bail out
			return;
		}

		if(vec2.squaredDistance(from, to) < planeToFrom * planeToFrom){
			return;
		}

		var n_dot_dir = vec2.dot(normal, direction);

		vec2.subtract(planePointToFrom, from, position);
		var t = -vec2.dot(normal, planePointToFrom) / n_dot_dir / ray.length;

		ray.reportIntersection(result, t, normal, -1);
	};

	pointTest(localPoint: Float32Array): boolean{
		return localPoint[1] <= 0;
	}
}