// var Shape = require('./Shape')
// ,   shallowClone = require('../utils/Utils').shallowClone
// ,   copy = require('../math/vec2').copy;

import Shape from "./Shape";
import AABB from "../collision/aabb";
import RaycastResult from "../collision/raycast-result";
import Ray from "../collision/ray";
import Material from "../material/Material";

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
	constructor(options?: {
		position?: Float32Array
		angle?: f32,
		id?: u32,
		collisionGroup?: i16,
		collisionResponse?: boolean,
		collisionMask?: i16,
		material?: Material,
		sensor?: boolean,
	}){
		super(Shape.PARTICLE, options);
	}

	computeMomentOfInertia(){
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
	computeAABB(out: AABB, position: Float32Array/*, angle*/){
		copy(out.lowerBound, position);
		copy(out.upperBound, position);
	};

	raycast(result: RaycastResult, ray: Ray, position: Float32Array, angle: f32){1}
}