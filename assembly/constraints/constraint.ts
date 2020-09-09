type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Body from "../objects/body";
import Equation from "../equations/Equation";


export default class Constraint{
	/**
	 * The type of constraint. May be one of Constraint.DISTANCE, Constraint.GEAR, Constraint.LOCK, Constraint.PRISMATIC or Constraint.REVOLUTE.
	 * @property {number} type
	 */
	type: u16;

	/**
	 * Equations to be solved in this constraint
	 *
	 * @property equations
	 * @type {Array}
	 */
	equations: Equation[];

	/**
	 * First body participating in the constraint.
	 * @property bodyA
	 * @type {Body}
	 */
	bodyA: Body;

	/**
	 * Second body participating in the constraint.
	 * @property bodyB
	 * @type {Body}
	 */
	bodyB: Body;

	/**
	 * Set to true if you want the connected bodies to collide.
	 * @property collideConnected
	 * @type {Boolean}
	 * @default true
	 */
	collideConnected: boolean;

	/**
	 * Base constraint class.
	 *
	 * @class Constraint
	 * @constructor
	 * @author schteppe
	 * @param {Body} bodyA
	 * @param {Body} bodyB
	 * @param {Number} type
	 * @param {Object} [options]
	 * @param {Object} [options.collideConnected=true]
	 */
	constructor(bodyA: Body, bodyB: Body, type: u16, options?:{
		collideConnected?: boolean,
		wakeUpBodies?: boolean
	}){
		this.type = type;
		this.equations = [];
		this.bodyA = bodyA;
		this.bodyB = bodyB;
		this.collideConnected = options?.collideConnected ?? true;

		// Wake up bodies when connected
		if((options?.wakeUpBodies ?? false) !== false){
			if(bodyA){
				bodyA.wakeUp();
			}
			if(bodyB){
				bodyB.wakeUp();
			}
		}
	}

	/**
	 * Updates the internal constraint parameters before solve.
	 * @method update
	 */
	update(){
		throw new Error("method update() not implmemented in this Constraint subclass!");
	};

	/**
	 * @static
	 * @property {number} DISTANCE
	 */
	static DISTANCE = 1;

	/**
	 * @static
	 * @property {number} GEAR
	 */
	static GEAR = 2;

	/**
	 * @static
	 * @property {number} LOCK
	 */
	static LOCK = 3;

	/**
	 * @static
	 * @property {number} PRISMATIC
	 */
	static PRISMATIC = 4;

	/**
	 * @static
	 * @property {number} REVOLUTE
	 */
	static REVOLUTE = 5;

	/**
	 * Set stiffness for this constraint.
	 * @method setStiffness
	 * @param {Number} stiffness
	 */
	setStiffness(stiffness: f32){
		var eqs = this.equations;
		for(var i=0; i !== eqs.length; i++){
			var eq = eqs[i];
			eq.stiffness = stiffness;
			eq.needsUpdate = true;
		}
	};

	/**
	 * Set relaxation for this constraint.
	 * @method setRelaxation
	 * @param {Number} relaxation
	 */
	setRelaxation(relaxation: f32){
		var eqs = this.equations;
		for(var i=0; i !== eqs.length; i++){
			var eq = eqs[i];
			eq.relaxation = relaxation;
			eq.needsUpdate = true;
		}
	};

	/**
	 * @method setMaxBias
	 * @param {Number} maxBias
	 */
	setMaxBias(maxBias: f32){
		var eqs = this.equations;
		for(var i=0; i !== eqs.length; i++){
			var eq = eqs[i];
			eq.maxBias = maxBias;
		}
	};
}