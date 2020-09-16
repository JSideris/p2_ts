//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

// var Shape = require('./Shape')
// ,   shallowClone = require('../utils/Utils').shallowClone
// ,   copy = require('../math/vec2').copy;

import Shape from "./Shape";
import { ShapeOptions } from "./Shape";
import AABB from "../collision/aabb";
import RaycastResult from "../collision/raycast-result";
import Ray from "../collision/ray";
import vec2 from "../math/vec2";

const copy = vec2.copy;

export class ParticleOptions extends ShapeOptions{}

export default class Particle extends Shape{

	/**
	 * Particle shape class.
	 * @class Particle
	 * @constructor
	 * @param {object} [options] (Note that this options object will be passed on to the {{#crossLink "Shape"}}{{/crossLink}} constructor.)
	 * @extends Shape
	 * @example
	 *     var body = new Body();
	 *     var shape = new Particle();
	 *     body.addShape(shape);
	 */
	constructor(options:ShapeOptions|null){
		super(Shape.PARTICLE, options);
	}

	computeMomentOfInertia(): f32{
		return 0; // Can't rotate a particle
	};

	updateBoundingRadius(): f32{
		this.boundingRadius = 0;
		return 0;
	};

	updateArea(): f32 { return 0}

	/**
	 * @method computeAABB
	 * @param  {AABB}   out
	 * @param  {Array}  position
	 * @param  {Number} angle
	 */
	computeAABB(out: AABB, position: Float32Array/*, angle*/): void{
		copy(out.lowerBound, position);
		copy(out.upperBound, position);
	};

	raycast(result: RaycastResult, ray: Ray, position: Float32Array, angle: f32):void{}
}