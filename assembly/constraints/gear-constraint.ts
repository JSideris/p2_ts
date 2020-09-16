// //type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

// import Body from "../objects/body";
// import AngleLockEquation from "../equations/angle-lock-equation";
// import Utils from "../utils/Utils";
// import Constraint from "./constraint";


// export default class GearConstraint extends Constraint{
// 	ratio: number;
// 	angle: any;
// 	equations: any[];

// 	/**
// 	 * Constrains the angle of two bodies to each other to be equal. If a gear ratio is not one, the angle of bodyA must be a multiple of the angle of bodyB.
// 	 * @class GearConstraint
// 	 * @constructor
// 	 * @author schteppe
// 	 * @param {Body}            bodyA
// 	 * @param {Body}            bodyB
// 	 * @param {Object}          [options]
// 	 * @param {Number}          [options.angle=0] Relative angle between the bodies. Will be set to the current angle between the bodies (the gear ratio is accounted for).
// 	 * @param {Number}          [options.ratio=1] Gear ratio.
// 	 * @param {Number}          [options.maxTorque] Maximum torque to apply.
// 	 * @extends Constraint
// 	 *
// 	 * @example
// 	 *     var constraint = new GearConstraint(bodyA, bodyB);
// 	 *     world.addConstraint(constraint);
// 	 *
// 	 * @example
// 	 *     var constraint = new GearConstraint(bodyA, bodyB, {
// 	 *         ratio: 2,
// 	 *         maxTorque: 1000
// 	 *     });
// 	 *     world.addConstraint(constraint);
// 	 */
// 	constructor(bodyA: Body, bodyB: Body, options?:{
// 		ratio?: f32,
// 		angle?: f32,
// 		maxTorque?: f32,

// 		collideConnected?: boolean,
// 		wakeUpBodies?: boolean
// 	}){
// 		options = options || {};

// 		super(bodyA, bodyB, Constraint.GEAR, options);

// 		/**
// 		 * The gear ratio.
// 		 * @property ratio
// 		 * @type {Number}
// 		 */
// 		this.ratio = options?.ratio ?? 1;

// 		/**
// 		 * The relative angle
// 		 * @property angle
// 		 * @type {Number}
// 		 */
// 		this.angle = options.angle !== undefined ? options.angle : bodyB.angle - this.ratio * bodyA.angle;

// 		// Send same parameters to the equation

// 		this.equations = [
// 			new AngleLockEquation(bodyA,bodyB,{
// 				ratio: this.ratio,
// 				angle: this.angle
// 			}),
// 		];

// 		// Set max torque
// 		if(options.maxTorque !== undefined){
// 			this.setMaxTorque(options.maxTorque);
// 		}
// 	}

// 	update(){
// 		var eq = this.equations[0];
// 		var ratio = this.ratio;
// 		if(eq.ratio !== ratio){
// 			eq.setRatio(ratio);
// 		}
// 		eq.angle = this.angle;
// 	}

// 	/**
// 	 * Set the max torque for the constraint.
// 	 * @method setMaxTorque
// 	 * @param {Number} torque
// 	 */
// 	setMaxTorque(torque: f32){
// 		this.equations[0].setMaxTorque(torque);
// 	}

// 	/**
// 	 * Get the max torque for the constraint.
// 	 * @method getMaxTorque
// 	 * @return {Number}
// 	 */
// 	getMaxTorque(){
// 		return this.equations[0].maxForce;
// 	}
// }