// var Shape = require('./Shape')
// ,   shallowClone = require('../utils/Utils').shallowClone
// ,   vec2 = require('../math/vec2');

import Shape from "./Shape";
import RaycastResult from "../collision/raycast-result";
import Ray from "../collision/ray";
import AABB from "../collision/aabb";

export default class Line extends Shape{
	/**
	 * Length of this line
	 * @property {Number} length
	 * @default 1
	 */
	length: f32 = 1;

	/**
	 * Line shape class. The line shape is along the x direction, and stretches from [-length/2, 0] to [length/2,0].
	 * @class Line
	 * @param {object} [options] (Note that this options object will be passed on to the {{#crossLink "Shape"}}{{/crossLink}} constructor.)
	 * @param {Number} [options.length=1] The total length of the line
	 * @extends Shape
	 * @constructor
	 * @example
	 *     var body = new Body();
	 *     var lineShape = new Line({
	 *         length: 1
	 *     });
	 *     body.addShape(lineShape);
	 */
	constructor(options){
		super(options);
		options = options ? shallowClone(options) : {};

		this.length = options.length !== undefined ? options.length : 1;

		options.type = Shape.LINE;
		Shape.call(this, options);
	}

	computeMomentOfInertia(): f32{
		return Math.pow(this.length,2) / 12;
	};

	updateBoundingRadius(): f32{
		this.boundingRadius = this.length/2;
		return this.boundingRadius;
	};

	/**
	 * @method computeAABB
	 * @param  {AABB}   out      The resulting AABB.
	 * @param  {Array}  position
	 * @param  {Number} angle
	 */
	computeAABB(out: AABB, position: Float32Array, angle: f32){

		var points = [vec2.create(),vec2.create()];

		var l2 = this.length / 2;
		vec2.set(points[0], -l2,  0);
		vec2.set(points[1],  l2,  0);
		out.setFromPoints(points,position,angle,0);
	};

	updateArea(): f32 { return 0}

	/**
	 * @method raycast
	 * @param  {RaycastResult} result
	 * @param  {Ray} ray
	 * @param  {number} angle
	 * @param  {array} position
	 */
	raycast(result: RaycastResult, ray: Ray, position: Float32Array, angle: f32){

		var raycast_normal = vec2.create();
		var raycast_l0 = vec2.create();
		var raycast_l1 = vec2.create();
		var raycast_unit_y = vec2.fromValues(0,1);

		var from = ray.from;
		var to = ray.to;

		var l0 = raycast_l0;
		var l1 = raycast_l1;

		// get start and end of the line
		var halfLen = this.length / 2;
		vec2.set(l0, -halfLen, 0);
		vec2.set(l1, halfLen, 0);
		vec2.toGlobalFrame(l0, l0, position, angle);
		vec2.toGlobalFrame(l1, l1, position, angle);

		var fraction = vec2.getLineSegmentsIntersectionFraction(l0, l1, from, to);
		if(fraction >= 0){
			var normal = raycast_normal;
			vec2.rotate(normal, raycast_unit_y, angle); // todo: this should depend on which side the ray comes from
			ray.reportIntersection(result, fraction, normal, -1);
		}
	};
}