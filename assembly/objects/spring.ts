//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Body from "./body";

export class SpringOptions{
	stiffness: f32 = 100;
	damping: f32 = 1;
}

export default abstract class Spring{
	/**
	 * Stiffness of the spring.
	 * @property stiffness
	 * @type {number}
	 */
	stiffness: f32 = 100;
	/**
	 * Damping of the spring.
	 * @property damping
	 * @type {number}
	 */
	damping: f32 = 1;
	/**
	 * First connected body.
	 * @property bodyA
	 * @type {Body}
	 */
	bodyA: Body;
	/**
	 * Second connected body.
	 * @property bodyB
	 * @type {Body}
	 */
	bodyB: Body;

	/**
	 * Base class for {{#crossLink "LinearSpring"}}{{/crossLink}} and {{#crossLink "RotationalSpring"}}{{/crossLink}}. Not supposed to be used directly.
	 *
	 * @class Spring
	 * @constructor
	 * @param {Body} bodyA
	 * @param {Body} bodyB
	 * @param {Object} [options]
	 * @param {number} [options.stiffness=100]  Spring constant (see Hookes Law). A number >= 0.
	 * @param {number} [options.damping=1]      A number >= 0. Default: 1
	 * @param {Array}  [options.localAnchorA]   Where to hook the spring to body A, in local body coordinates. Defaults to the body center.
	 * @param {Array}  [options.localAnchorB]
	 * @param {Array}  [options.worldAnchorA]   Where to hook the spring to body A, in world coordinates. Overrides the option "localAnchorA" if given.
	 * @param {Array}  [options.worldAnchorB]
	 */
	constructor(bodyA: Body, bodyB: Body, options:SpringOptions|null){
		if(options){
			this.stiffness = options.stiffness;
			this.damping = options.damping;
		}
		this.bodyA = bodyA;
		this.bodyB = bodyB;
	}

	/**
	 * Apply the spring force to the connected bodies. Called automatically by the World.
	 * @private
	 * @method applyForce
	 */
	abstract applyForce(): void;
}