type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Body from "./body";
import Spring from "./spring";

export default class RotationalSpring extends Spring{
	restAngle: f32;

	/**
	 * A rotational spring, connecting two bodies rotation. This spring explicitly adds angularForce (torque) to the bodies.
	 *
	 * The spring can be combined with a {{#crossLink "RevoluteConstraint"}}{{/crossLink}} to make, for example, a mouse trap.
	 *
	 * @class RotationalSpring
	 * @extends Spring
	 * @constructor
	 * @param {Body} bodyA
	 * @param {Body} bodyB
	 * @param {Object} [options]
	 * @param {number} [options.restAngle] The relative angle of bodies at which the spring is at rest. If not given, it's set to the current relative angle between the bodies.
	 * @param {number} [options.stiffness=100] Spring constant (see Hookes Law). A number >= 0.
	 * @param {number} [options.damping=1] A number >= 0.
	 *
	 * @example
	 *     var spring = new RotationalSpring(bodyA, bodyB, {
	 *         stiffness: 100,
	 *         damping: 1
	 *     });
	 *     world.addSpring(spring);
	 */
	constructor(bodyA: Body, bodyB: Body, options?: {
		restAngle?: f32
		
		stiffness?: f32,
		damping?: f32
	}){

		super(bodyA, bodyB, options);

		/**
		 * Rest angle of the spring.
		 * @property restAngle
		 * @type {number}
		 */
		this.restAngle = options?.restAngle ?? bodyB.angle - bodyA.angle;
	}

	/**
	 * Apply the spring force to the connected bodies.
	 * @method applyForce
	 */
	applyForce(){
		var k = super.stiffness,
			d = super.damping,
			l = this.restAngle,
			bodyA = super.bodyA,
			bodyB = super.bodyB,
			x = bodyB.angle - bodyA.angle,
			u = bodyB.angularVelocity - bodyA.angularVelocity;

		var torque = - k * (x - l) - d * u;

		bodyA.angularForce -= torque;
		bodyB.angularForce += torque;
	};
}