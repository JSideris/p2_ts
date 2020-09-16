// //type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

// import vec2 from "../math/vec2";
// import Body from "./body";
// import World from "../world/world";
// import Constraint from "../constraints/constraint";
// import FrictionEquation from "../equations/friction-equation";

// var worldVelocity = vec2.create();
// var relativePoint = vec2.create();
// var tmpVec = vec2.create();

// export default class TopDownVehicle{
// 	chassisBody: Body;
// 	// A dummy body to constrain the chassis to
// 	groundBody: Body = new Body({ mass: 0 });
// 	world?: World;
// 	wheels: WheelConstraint[] = [];
// 	preStepCallback: () => void;

// 	/**
// 	 * @class TopDownVehicle
// 	 * @constructor
// 	 *
// 	 * @deprecated This class will be moved out of the core library in future versions.
// 	 *
// 	 * @param {Body} chassisBody A dynamic body, already added to the world.
// 	 * @param {Object} [options]
// 	 *
// 	 * @example
// 	 *
// 	 *     // Create a dynamic body for the chassis
// 	 *     var chassisBody = new Body({
// 	 *         mass: 1
// 	 *     });
// 	 *     var boxShape = new Box({ width: 0.5, height: 1 });
// 	 *     chassisBody.addShape(boxShape);
// 	 *     world.addBody(chassisBody);
// 	 *
// 	 *     // Create the vehicle
// 	 *     var vehicle = new TopDownVehicle(chassisBody);
// 	 *
// 	 *     // Add one front wheel and one back wheel - we don't actually need four :)
// 	 *     var frontWheel = vehicle.addWheel({
// 	 *         localPosition: [0, 0.5] // front
// 	 *     });
// 	 *     frontWheel.setSideFriction(4);
// 	 *
// 	 *     // Back wheel
// 	 *     var backWheel = vehicle.addWheel({
// 	 *         localPosition: [0, -0.5] // back
// 	 *     });
// 	 *     backWheel.setSideFriction(3); // Less side friction on back wheel makes it easier to drift
// 	 *     vehicle.addToWorld(world);
// 	 *
// 	 *     // Steer value zero means straight forward. Positive is left and negative right.
// 	 *     frontWheel.steerValue = Math.PI / 16;
// 	 *
// 	 *     // Engine force forward
// 	 *     backWheel.engineForce = 10;
// 	 *     backWheel.setBrakeForce(0);
// 	 */
// 	constructor(chassisBody: Body, options?:{

// 	}){
// 		this.chassisBody = chassisBody;

// 		this.preStepCallback = () => {
// 			this.update();
// 		};
// 	}

// 	/**
// 	 * @method addToWorld
// 	 * @param {World} world
// 	 */
// 	addToWorld(world: World){
// 		this.world = world;
// 		world.addBody(this.groundBody);
// 		world.on("preStep", this.preStepCallback, this);
// 		for (var i = 0; i < this.wheels.length; i++) {
// 			var wheel = this.wheels[i];
// 			world.addConstraint(wheel);
// 		}
// 	};

// 	/**
// 	 * @method removeFromWorld
// 	 * @param {World} world
// 	 */
// 	removeFromWorld(){
// 		var world = this.world;
// 		if(world){
// 			world.removeBody(this.groundBody);
// 			world.off('preStep', this.preStepCallback);
// 			for (var i = 0; i < this.wheels.length; i++) {
// 				var wheel = this.wheels[i];
// 				world.removeConstraint(wheel);
// 			}
// 			this.world = undefined;
// 		}
// 	};

// 	/**
// 	 * @method addWheel
// 	 * @param {object} [wheelOptions]
// 	 * @return {WheelConstraint}
// 	 */
// 	addWheel(wheelOptions?:{
// 		sideFriction?: f32,
// 		localForwardVector?: Float32Array,
// 		localPosition?: Float32Array
// 	}){
// 		var wheel = new WheelConstraint(this,wheelOptions);
// 		this.wheels.push(wheel);
// 		return wheel;
// 	};

// 	/**
// 	 * @method update
// 	 */
// 	update(){
// 		for (var i = 0; i < this.wheels.length; i++) {
// 			this.wheels[i].update();
// 		}
// 	};
// }

// class WheelConstraint extends Constraint{
// 	vehicle: TopDownVehicle;
// 	forwardEquation: any;
// 	sideEquation: any;
// 	steerValue: number = 0;
// 	/**
// 	 * @property {number} engineForce
// 	 */
// 	engineForce: number = 0;
// 	localForwardVector: Float32Array;
// 	localPosition: Float32Array;
// 	/**
// 	 * @class WheelConstraint
// 	 * @constructor
// 	 * @extends {Constraint}
// 	 * @param {Vehicle} vehicle
// 	 * @param {object} [options]
// 	 * @param {Array} [options.localForwardVector] The local wheel forward vector in local body space. Default is zero.
// 	 * @param {Array} [options.localPosition] The local position of the wheen in the chassis body. Default is zero - the center of the body.
// 	 * @param {Array} [options.sideFriction=5] The max friction force in the sideways direction.
// 	 */
// 	constructor(vehicle: TopDownVehicle, options?:{
// 		sideFriction?: f32,
// 		localForwardVector?: Float32Array,
// 		localPosition?: Float32Array
// 	}){

// 		// TODO: I have no idea what kind of constraint this is supposed to be. It seems this was undefined in the original code.
// 		super(vehicle.chassisBody, vehicle.groundBody, 0);

// 		this.vehicle = vehicle;
// 		this.forwardEquation = new FrictionEquation(vehicle.chassisBody, vehicle.groundBody);
// 		this.sideEquation = new FrictionEquation(vehicle.chassisBody, vehicle.groundBody);

// 		this.setSideFriction(options?.sideFriction ?? 5);

// 		/**
// 		 * @property {Array} localForwardVector
// 		 */
// 		this.localForwardVector = vec2.fromValues(0, 1);
// 		if(options?.localForwardVector){
// 			vec2.copy(this.localForwardVector, options.localForwardVector);
// 		}

// 		/**
// 		 * @property {Array} localPosition
// 		 */
// 		this.localPosition = vec2.create();
// 		if(options?.localPosition){
// 			vec2.copy(this.localPosition, options.localPosition);
// 		}

// 		this.equations.push(this.forwardEquation);
// 		this.equations.push(this.sideEquation);

// 		this.setBrakeForce(0);
// 	}

// 	/**
// 	 * @method setBrakeForce
// 	 */
// 	setBrakeForce(force: f32){
// 		this.forwardEquation.setSlipForce(force);
// 	}

// 	/**
// 	 * @method setSideFriction
// 	 */
// 	setSideFriction(force: f32){
// 		this.sideEquation.setSlipForce(force);
// 	}

// 	/**
// 	 * @method getSpeed
// 	 */
// 	getSpeed(){
// 		var body = this.vehicle.chassisBody;
// 		body.vectorToWorldFrame(relativePoint, this.localForwardVector);
// 		body.getVelocityAtPoint(worldVelocity, relativePoint);
// 		return vec2.dot(worldVelocity, relativePoint);
// 	}

// 	/**
// 	 * @method update
// 	 */
// 	update(){
// 		var body = this.vehicle.chassisBody;
// 		var forwardEquation = this.forwardEquation;
// 		var sideEquation = this.sideEquation;
// 		var steerValue = this.steerValue;

// 		// Directional
// 		body.vectorToWorldFrame(forwardEquation.t, this.localForwardVector);
// 		vec2.rotate(sideEquation.t, this.localForwardVector, Math.PI / 2);
// 		body.vectorToWorldFrame(sideEquation.t, sideEquation.t);

// 		vec2.rotate(forwardEquation.t, forwardEquation.t, steerValue);
// 		vec2.rotate(sideEquation.t, sideEquation.t, steerValue);

// 		// Attachment point
// 		body.toWorldFrame(forwardEquation.contactPointB, this.localPosition);
// 		vec2.copy(sideEquation.contactPointB, forwardEquation.contactPointB);

// 		body.vectorToWorldFrame(forwardEquation.contactPointA, this.localPosition);
// 		vec2.copy(sideEquation.contactPointA, forwardEquation.contactPointA);

// 		// Add engine force
// 		vec2.normalize(tmpVec, forwardEquation.t);
// 		vec2.scale(tmpVec, tmpVec, this.engineForce);

// 		this.vehicle.chassisBody.applyForce(tmpVec, forwardEquation.contactPointA);
// 	}
// }