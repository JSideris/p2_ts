//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

// var vec2 = require('../math/vec2')
// ,   Shape = require('./Shape')
// ,   shallowClone = require('../utils/Utils').shallowClone
// ,   Convex = require('./Convex');

import Convex from "./Convex";
import { ConvexOptions } from "./Convex";
import AABB from "../collision/aabb";
import Shape from "./shape";
import Material from "../material/Material";
import vec2 from "../math/vec2";

export class BoxOptions extends ConvexOptions{
	width: f32 = 1;
	height: f32 = 1;
}

export default class Box extends Convex{
	/**
	 * Total width of the box
	 * @property width
	 * @type {Number}
	 */
	width: f32 = 1;

	/**
	 * Total height of the box
	 * @property height
	 * @type {Number}
	 */
	height: f32 = 1;

	/**
	 * Box shape class.
	 * @class Box
	 * @constructor
	 * @param {object} [options] (Note that this options object will be passed on to the {{#crossLink "Shape"}}{{/crossLink}} constructor.)
	 * @param {Number} [options.width=1] Total width of the box
	 * @param {Number} [options.height=1] Total height of the box
	 * @extends Convex
	 * @example
	 *     var body = new Body({ mass: 1 });
	 *     var boxShape = new Box({
	 *         width: 2,
	 *         height: 1
	 *     });
	 *     body.addShape(boxShape);
	 */
	constructor(options: BoxOptions|null){
		// let width:f32 = 1;
		// let height:f32 = 1;
		// if(options){
		// 	width = options.width;
		// 	height = options.height;
		// }

		// let hw = width/2;
		// let hh = height/2;

		super(Shape.BOX, (
			options ? [
				vec2.fromValues(-options.width/2, -options.height/2),
				vec2.fromValues( options.width/2, -options.height/2),
				vec2.fromValues( options.width/2,  options.height/2),
				vec2.fromValues(-options.width/2,  options.height/2)
			] : [
				vec2.fromValues(-0.5, -0.5),
				vec2.fromValues( 0.5, -0.5),
				vec2.fromValues( 0.5,  0.5),
				vec2.fromValues(-0.5,  0.5)
			]), options);

		if(options){
			this.height = options.height;		
			this.width = options.width;	
		}
	}

	/**
	 * Compute moment of inertia
	 * @method computeMomentOfInertia
	 * @return {Number}
	 */
	computeMomentOfInertia(): f32{
		var w = this.width,
			h = this.height;
		return (h*h + w*w) / 12;
	};

	/**
	 * Update the bounding radius
	 * @method updateBoundingRadius
	 */
	updateBoundingRadius(): f32{
		var w = this.width,
			h = this.height;
		this.boundingRadius = Math.sqrt(w*w + h*h) / 2;
		return this.boundingRadius;
	};

	/**
	 * @method computeAABB
	 * @param  {AABB}   out      The resulting AABB.
	 * @param  {Array}  position
	 * @param  {Number} angle
	 */
	computeAABB(out: AABB, position: Float32Array, angle: f32): void{
		var c = Math.abs(Math.cos(angle)),
			s = Math.abs(Math.sin(angle)),
			w = this.width,
			h = this.height;

		var height = (w * s + h * c) * 0.5;
		var width = (h * s + w * c) * 0.5;

		var l = out.lowerBound;
		var u = out.upperBound;
		var px = position[0];
		var py = position[1];
		l[0] = px - width;
		l[1] = py - height;
		u[0] = px + width;
		u[1] = py + height;
	};

	updateArea():f32{
		this.area = this.width * this.height;
		return this.area;
	};

	pointTest(localPoint: Float32Array): boolean{
		return Math.abs(localPoint[0]) <= this.width * 0.5 && Math.abs(localPoint[1]) <= this.height * 0.5;
	};
}