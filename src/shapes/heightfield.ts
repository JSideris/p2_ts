type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

// var Shape = require('./Shape')
// ,    vec2 = require('../math/vec2')
// ,    shallowClone = require('../utils/Utils').shallowClone;

import Shape from "./Shape";
import AABB from "../collision/aabb";
import RaycastResult from "../collision/raycast-result";
import Ray from "../collision/ray";
import Material from "../material/Material";
import vec2 from "../math/vec2";

var intersectHeightfield_worldNormal = vec2.create();
var intersectHeightfield_l0 = vec2.create();
var intersectHeightfield_l1 = vec2.create();
var intersectHeightfield_localFrom = vec2.create();
var intersectHeightfield_localTo = vec2.create();

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
	elementWidth: f32 = 0;

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
	 *     var heights = [];
	 *     for(var i = 0; i < 1000; i++){
	 *         var y = 0.5 * Math.cos(0.2 * i);
	 *         heights.push(y);
	 *     }
	 *
	 *     // Create the heightfield shape
	 *     var shape = new Heightfield({
	 *         heights: heights,
	 *         elementWidth: 1 // Distance between the data points in X direction
	 *     });
	 *     var body = new Body();
	 *     body.addShape(shape);
	 *     world.addBody(body);
	 *
	 * @todo Should use a scale property with X and Y direction instead of just elementWidth
	 */
	constructor(options?: {
		position?: Float32Array
		angle?: f32,
		id?: u32,
		collisionGroup?: i16,
		collisionResponse?: boolean,
		collisionMask?: i16,
		material?: Material,
		sensor?: boolean,

		height: f32,
		heights: Array<f32>, // TODO: you know what to do.
		maxValue: f32, // Why should this even take a min ard max? Just always calculate.
		minValue: f32,
		elementWidth: f32,
	}){

		super(Shape.HEIGHTFIELD, options); 

		this.heights = options?.heights ? options.heights.slice(0) : [];

		
		this.elementWidth = options?.elementWidth ?? 0.1;

		this.updateArea();
		
		if(options?.maxValue && options?.minValue){
			this.maxValue = options?.maxValue;
			this.minValue = options?.minValue;
		}
		else this.updateMaxMinValues();

	}

	/**
	 * Update the .minValue and the .maxValue
	 * @method updateMaxMinValues
	 */
	updateMaxMinValues(){
		var data = this.heights;
		var maxValue = data[0];
		var minValue = data[0];
		for(var i=0; i !== data.length; i++){
			var v = data[i];
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
		var data = this.heights,
			area = 0;
		if(!data) return 0;
		for(var i=0; i<data.length-1; i++){
			area += (data[i]+data[i+1]) / 2 * this.elementWidth;
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
	computeAABB(out: AABB, position: Float32Array, angle: f32){
		var points = [
			vec2.create(),
			vec2.create(),
			vec2.create(),
			vec2.create()
		] as Float32Array[];

		vec2.set(points[0], 0, this.maxValue);
		vec2.set(points[1], this.elementWidth * this.heights.length, this.maxValue);
		vec2.set(points[2], this.elementWidth * this.heights.length, this.minValue);
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
	getLineSegment(start: Float32Array, end: Float32Array, i: u32){
		var data = this.heights;
		var width = this.elementWidth;
		vec2.set(start, i * width, data[i]);
		vec2.set(end, (i + 1) * width, data[i + 1]);
	}

	getSegmentIndex(position: Float32Array): f32{
		return Math.floor(position[0] / this.elementWidth);
	}

	getClampedSegmentIndex(position: Float32Array): f32{
		var i = this.getSegmentIndex(position);
		i = Math.min(this.heights.length, Math.max(i, 0)); // clamp
		return i;
	}

	/**
	 * @method raycast
	 * @param  {RayResult} result
	 * @param  {Ray} ray
	 * @param  {array} position
	 * @param  {number} angle
	 */
	raycast(result: RaycastResult, ray: Ray, position: Float32Array, angle: f32){

		var from = ray.from;
		var to = ray.to;

		var worldNormal = intersectHeightfield_worldNormal;
		var l0 = intersectHeightfield_l0;
		var l1 = intersectHeightfield_l1;
		var localFrom = intersectHeightfield_localFrom;
		var localTo = intersectHeightfield_localTo;

		// get local ray start and end
		vec2.toLocalFrame(localFrom, from, position, angle);
		vec2.toLocalFrame(localTo, to, position, angle);

		// Get the segment range
		var i0 = this.getClampedSegmentIndex(localFrom);
		var i1 = this.getClampedSegmentIndex(localTo);
		if(i0 > i1){
			var tmp = i0;
			i0 = i1;
			i1 = tmp;
		}

		// The segments
		for(var i=0; i<this.heights.length - 1; i++){
			this.getLineSegment(l0, l1, i);
			var t = vec2.getLineSegmentsIntersectionFraction(localFrom, localTo, l0, l1);
			if(t >= 0){
				vec2.subtract(worldNormal, l1, l0);
				vec2.rotate(worldNormal, worldNormal, angle + Math.PI / 2);
				vec2.normalize(worldNormal, worldNormal);
				ray.reportIntersection(result, t, worldNormal, -1);
				if(result.shouldStop(ray)){
					return;
				}
			}
		}
	}
}