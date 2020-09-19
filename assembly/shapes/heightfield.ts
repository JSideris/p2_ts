//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

// let Shape = require('./Shape')
// ,    vec2 = require('../math/vec2')
// ,    shallowClone = require('../utils/Utils').shallowClone;

import Shape from "./Shape";
import { ShapeOptions } from "./Shape";
import AABB from "../collision/aabb";
import RaycastResult from "../collision/raycast-result";
import Ray from "../collision/ray";
import vec2 from "../math/vec2";

var intersectHeightfield_worldNormal = vec2.create();
var intersectHeightfield_l0 = vec2.create();
var intersectHeightfield_l1 = vec2.create();
var intersectHeightfield_localFrom = vec2.create();
var intersectHeightfield_localTo = vec2.create();

export class HeightfieldOptions extends ShapeOptions{
	heights: Array<f32> = []; // TODO: switch to f32array.
	elementWidth: f32 = 0.1;
}

export default class Heightfield extends Shape{

	/**
	 * An array of numbers, or height values, that are spread out along the x axis.
	 * @property {array} heights
	 */
	heights: Array<f32> = [];

	/**
	 * Max value of the heights
	 * @property {number} maxValue
	 */
	maxValue: f32 = 0;

	/**
	 * Max value of the heights
	 * @property {number} minValue
	 */
	minValue: f32 = 0;

	/**
	 * The width of each element
	 * @property {number} elementWidth
	 */
	elementWidth: f32 = 0.1;

	/**
	 * Heightfield shape class. Height data is given as an array. These data points are spread out evenly with a distance "elementWidth".
	 * @class Heightfield
	 * @extends Shape
	 * @constructor
	 * @param {object} [options] (Note that this options object will be passed on to the {{#crossLink "Shape"}}{{/crossLink}} constructor.)
	 * @param {array} [options.heights] An array of Y values that will be used to construct the terrain.
	 * @param {Number} [options.minValue] Minimum value of the data points in the data array. Will be computed automatically if not given.
	 * @param {Number} [options.maxValue] Maximum value.
	 * @param {Number} [options.elementWidth=0.1] World spacing between the data points in X direction.
	 *
	 * @example
	 *     // Generate some height data (y-values).
	 *     let heights = [];
	 *     for(let i: i32 = 0; i < 1000; i++){
	 *         let y = 0.5 * Mathf.cos(0.2 * i);
	 *         heights.push(y);
	 *     }
	 *
	 *     // Create the heightfield shape
	 *     let shape = new Heightfield({
	 *         heights: heights,
	 *         elementWidth: 1 // Distance between the data points in X direction
	 *     });
	 *     let body = new Body();
	 *     body.addShape(shape);
	 *     world.addBody(body);
	 *
	 * @todo Should use a scale property with X and Y direction instead of just elementWidth
	 */
	constructor(options: HeightfieldOptions|null){

		super(Shape.HEIGHTFIELD, options); 

		if(options){
			this.heights = options.heights.slice(0);
			this.elementWidth = options.elementWidth;
		}

		this.updateArea();
		this.updateMaxMinValues();
	}

	/**
	 * Update the .minValue and the .maxValue
	 * @method updateMaxMinValues
	 */
	updateMaxMinValues(): void{
		let data = this.heights;
		let maxValue = data[0];
		let minValue = data[0];
		for(let i: u16 = 0; i < (data.length as u16); i++){
			let v = data[i];
			if(v > maxValue){
				maxValue = v;
			}
			if(v < minValue){
				minValue = v;
			}
		}
		this.maxValue = maxValue;
		this.minValue = minValue;
	}

	/**
	 * @method computeMomentOfInertia
	 * @return {Number}
	 */
	computeMomentOfInertia(): f32{
		return Infinity;
	}

	updateBoundingRadius(): f32{
		this.boundingRadius = Infinity;
		return this.boundingRadius;
	}

	updateArea(): f32{
		let data = this.heights,
			area: f32 = 0;
		if(!data) return 0;
		for(let i: i32 = 0; i<data.length - 1; i++){
			area += (data[i]+data[i+1]) / 2.0 * this.elementWidth;
		}
		this.area = area;

		return this.area;
	}


	/**
	 * @method computeAABB
	 * @param  {AABB}   out      The resulting AABB.
	 * @param  {Array}  position
	 * @param  {Number} angle
	 */
	computeAABB(out: AABB, position: Float32Array, angle: f32): void{
		let points = [
			vec2.create(),
			vec2.create(),
			vec2.create(),
			vec2.create()
		] as Float32Array[];

		vec2.set(points[0], 0, this.maxValue);
		vec2.set(points[1], this.elementWidth * (this.heights.length as f32), this.maxValue);
		vec2.set(points[2], this.elementWidth * (this.heights.length as f32), this.minValue);
		vec2.set(points[3], 0, this.minValue);
		out.setFromPoints(points, position, angle);
	}

	/**
	 * Get a line segment in the heightfield
	 * @method getLineSegment
	 * @param  {array} start Where to store the resulting start point
	 * @param  {array} end Where to store the resulting end point
	 * @param  {number} i
	 */
	getLineSegment(start: Float32Array, end: Float32Array, i: i32): void{
		let data = this.heights;
		let width = this.elementWidth;
		vec2.set(start, (i as f32) * width, data[i]);
		vec2.set(end, ((i as f32) + 1.0) * width, data[i + 1]);
	}

	getSegmentIndex(position: Float32Array): i32{
		return Mathf.floor(position[0] / this.elementWidth) as i32;
	}

	getClampedSegmentIndex(position: Float32Array): i32{
		let i: i32 = this.getSegmentIndex(position);
		if(i < 0) i = 0;
		if(i > this.heights.length) i = this.heights.length;
		return i;
	}

	/**
	 * @method raycast
	 * @param  {RayResult} result
	 * @param  {Ray} ray
	 * @param  {array} position
	 * @param  {number} angle
	 */
	raycast(result: RaycastResult, ray: Ray, position: Float32Array, angle: f32): void{

		let from = ray.from;
		let to = ray.to;

		let worldNormal = intersectHeightfield_worldNormal;
		let l0 = intersectHeightfield_l0;
		let l1 = intersectHeightfield_l1;
		let localFrom = intersectHeightfield_localFrom;
		let localTo = intersectHeightfield_localTo;

		// get local ray start and end
		vec2.toLocalFrame(localFrom, from, position, angle);
		vec2.toLocalFrame(localTo, to, position, angle);

		// Get the segment range
		let i0 = this.getClampedSegmentIndex(localFrom);
		let i1 = this.getClampedSegmentIndex(localTo);
		if(i0 > i1){
			let tmp = i0;
			i0 = i1;
			i1 = tmp;
		}

		// The segments
		for(let i: i32 = 0; i<this.heights.length - 1; i++){
			this.getLineSegment(l0, l1, i);
			let t = vec2.getLineSegmentsIntersectionFraction(localFrom, localTo, l0, l1);
			if(t >= 0){
				vec2.subtract(worldNormal, l1, l0);
				vec2.rotate(worldNormal, worldNormal, angle + Mathf.PI / 2);
				vec2.normalize(worldNormal, worldNormal);
				ray.reportIntersection(result, t, worldNormal, -1);
				if(result.shouldStop(ray)){
					return;
				}
			}
		}
	}
}