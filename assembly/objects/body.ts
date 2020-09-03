
import vec2 from "../math/vec2";

const add = vec2.add, sub = vec2.subtract, vec2create = vec2.create;

import World from "../world/world";
import Shape from "../shapes/shape";
import AABB from "../collision/aabb";
import decomp from "../math/poly-decomp";
import Convex from "../shapes/Convex";
import Ray from "../collision/ray";
import RaycastResult from "../collision/raycast-result";
//decomp = require('poly-decomp')

var integrate_fhMinv = vec2create();
var integrate_velodt = vec2create();

var _idCounter = 0;

export default class Body extends EventEmitter{

	/**
	 * The body identifier. Read only!
	 * @readonly
	 * @property id
	 * @type {Number}
	*/
	public id:number = -1;

	/**
	 * Index of the body in the World .bodies array. Is set to -1 if the body isn't added to a World.
	 * @readonly
	 * @property index
	 * @type {Number}
	 */
	public index: i64;

	/**
	 * The world that this body is added to (read only). This property is set to NULL if the body is not added to any world.
	 * @readonly
	 * @property world
	 * @type {World}
	 */
	public world: World;

	/**
	 * The shapes of the body.
	 *
	 * @property shapes
	 * @type {Array}
	 */
	public shapes: Array<Shape> = [];

	/**
	 * The mass of the body. If you change this number, you should call {{#crossLink "Body/updateMassProperties:method"}}{{/crossLink}}.
	 *
	 * @property mass
	 * @type {number}
	 *
	 * @example
	 *     body.mass = 1;
	 *     body.updateMassProperties();
	 */
	public mass: f32 = 0;

	/**
	 * The inverse mass of the body.
	 *
	 * @readonly
	 * @property invMass
	 * @type {number}
	 */
	public invMass: f32 = 0;

	/**
	 * The inertia of the body around the Z axis.
	 * @readonly
	 * @property inertia
	 * @type {number}
	 */
	public inertia: f32 = 0;

	/**
	 * The inverse inertia of the body.
	 * @readonly
	 * @property invInertia
	 * @type {number}
	 */
	public invInertia: f32 = 0;

	public invMassSolve: f32 = 0;
	public invInertiaSolve: f32 = 0;

	/**
	 * Set to true if you want to fix the rotation of the body.
	 *
	 * @property fixedRotation
	 * @type {Boolean}
	 *
	 * @example
	 *     // Fix rotation during runtime
	 *     body.fixedRotation = true;
	 *     body.updateMassProperties();
	 */
	public fixedRotation: boolean = true;

	/**
	 * Set to true if you want to fix the body movement along the X axis. The body will still be able to move along Y.
	 * @property {Boolean} fixedX
	 *
	 * @example
	 *     // Fix X movement on body creation
	 *     var body = new Body({ mass: 1, fixedX: true });
	 *
	 * @example
	 *     // Fix X movement during runtime
	 *     body.fixedX = true;
	 *     body.updateMassProperties();
	 */
	public fixedX: boolean = false;

	/**
	 * Set to true if you want to fix the body movement along the Y axis. The body will still be able to move along X. See .fixedX
	 * @property {Boolean} fixedY
	 */
	public fixedY: boolean = false;

	/**
	 * @private
	 * @property {array} massMultiplier
	 */
	public massMultiplier:Float32Array;

	/**
	 * The position of the body in the world. Don't use this for rendering, instead use .interpolatedPosition
	 * @property position
	 * @type {Array}
	 */
	public position: Float32Array;

	/**
	 * The interpolated position of the body. Use this for rendering.
	 * @readonly
	 * @property interpolatedPosition
	 * @type {Array}
	 */
	public interpolatedPosition: Float32Array;

	/**
	 * The previous position of the body.
	 * @property previousPosition
	 * @type {Array}
	 */
	public previousPosition: Float32Array;

	/**
	 * The current velocity of the body.
	 * @property velocity
	 * @type {Array}
	 */
	public velocity: Float32Array;

	/**
	 * Constraint velocity that was added to the body during the last step.
	 * @readonly
	 * @property vlambda
	 * @type {Array}
	 */
	public vlambda: Float32Array;

	/**
	 * Angular constraint velocity that was added to the body during last step.
	 * @readonly
	 * @property wlambda
	 * @type {Array} // This was array before the port, but hte assignment was always 0.
	 */
	public wlambda: f32 = 0;

	/**
	 * The angle of the body, in radians.
	 * @property angle
	 * @type {number}
	 * @example
	 *     // The angle property is not normalized to the interval 0 to 2*pi, it can be any value.
	 *     // If you need a value between 0 and 2*pi, use the following function to normalize it.
	 *     function normalizeAngle(angle){
	 *         angle = angle % (2*Math.PI);
	 *         if(angle < 0){
	 *             angle += (2*Math.PI);
	 *         }
	 *         return angle;
	 *     }
	 */
	public angle: f32 = 0;

	/**
	 * The previous angle of the body.
	 * @readonly
	 * @property previousAngle
	 * @type {Number}
	 */
	public previousAngle: f32 = 0;

	/**
	 * The interpolated angle of the body. Use this for rendering.
	 * @readonly
	 * @property interpolatedAngle
	 * @type {Number}
	 */
	public interpolatedAngle: f32 = 0;

	/**
	 * The angular velocity of the body, in radians per second.
	 * @property angularVelocity
	 * @type {number}
	 */
	public angularVelocity: f32 = 0;

	/**
	 * The force acting on the body. Since the body force (and {{#crossLink "Body/angularForce:property"}}{{/crossLink}}) will be zeroed after each step, so you need to set the force before each step.
	 * @property force
	 * @type {Array}
	 *
	 * @example
	 *     // This produces a forcefield of 1 Newton in the positive x direction.
	 *     for(var i=0; i<numSteps; i++){
	 *         body.force[0] = 1;
	 *         world.step(1/60);
	 *     }
	 *
	 * @example
	 *     // This will apply a rotational force on the body
	 *     for(var i=0; i<numSteps; i++){
	 *         body.angularForce = -3;
	 *         world.step(1/60);
	 *     }
	 */
	public force: Float32Array;

	/**
	 * The angular force acting on the body. See {{#crossLink "Body/force:property"}}{{/crossLink}}.
	 * @property angularForce
	 * @type {number}
	 */
	public angularForce: f32 = 0;

	/**
	 * The linear damping acting on the body in the velocity direction. Should be a value between 0 and 1.
	 * @property damping
	 * @type {Number}
	 * @default 0.1
	 */
	public damping: f32;

	/**
	 * The angular force acting on the body. Should be a value between 0 and 1.
	 * @property angularDamping
	 * @type {Number}
	 * @default 0.1
	 */
	public angularDamping: f32 = 0.1;

	/**
	 * The type of motion this body has. Should be one of: {{#crossLink "Body/STATIC:property"}}Body.STATIC{{/crossLink}}, {{#crossLink "Body/DYNAMIC:property"}}Body.DYNAMIC{{/crossLink}} and {{#crossLink "Body/KINEMATIC:property"}}Body.KINEMATIC{{/crossLink}}.
	 *
	 * * Static bodies do not move, and they do not respond to forces or collision.
	 * * Dynamic bodies body can move and respond to collisions and forces.
	 * * Kinematic bodies only moves according to its .velocity, and does not respond to collisions or force.
	 *
	 * @property type
	 * @type {number}
	 *
	 * @example
	 *     // Bodies are static by default. Static bodies will never move.
	 *     var body = new Body();
	 *     console.log(body.type == Body.STATIC); // true
	 *
	 * @example
	 *     // By setting the mass of a body to a nonzero number, the body
	 *     // will become dynamic and will move and interact with other bodies.
	 *     var dynamicBody = new Body({
	 *         mass : 1
	 *     });
	 *     console.log(dynamicBody.type == Body.DYNAMIC); // true
	 *
	 * @example
	 *     // Kinematic bodies will only move if you change their velocity.
	 *     var kinematicBody = new Body({
	 *         type: Body.KINEMATIC // Type can be set via the options object.
	 *     });
	 */
	public type: f32 = Body.STATIC;

	/**
	 * Bounding circle radius. Update with {{#crossLink "Body/updateBoundingRadius:method"}}{{/crossLink}}.
	 * @readonly
	 * @property boundingRadius
	 * @type {Number}
	 */
	public boundingRadius: f32 = 0;

	/**
	 * Bounding box of this body. Update with {{#crossLink "Body/updateAABB:method"}}{{/crossLink}}.
	 * @property aabb
	 * @type {AABB}
	 */
	public aabb: AABB;

	/**
	 * Indicates if the AABB needs update. Update it with {{#crossLink "Body/updateAABB:method"}}{{/crossLink}}.
	 * @property aabbNeedsUpdate
	 * @type {Boolean}
	 * @see updateAABB
	 *
	 * @example
	 *     // Force update the AABB
	 *     body.aabbNeedsUpdate = true;
	 *     body.updateAABB();
	 *     console.log(body.aabbNeedsUpdate); // false
	 */
	public aabbNeedsUpdate: boolean = true;

	/**
	 * If true, the body will automatically fall to sleep. Note that you need to enable sleeping in the {{#crossLink "World"}}{{/crossLink}} before anything will happen.
	 * @property allowSleep
	 * @type {Boolean}
	 * @default true
	 */
	public allowSleep: boolean = true;

	public wantsToSleep: boolean = false;

	/**
	 * One of {{#crossLink "Body/AWAKE:property"}}Body.AWAKE{{/crossLink}}, {{#crossLink "Body/SLEEPY:property"}}Body.SLEEPY{{/crossLink}} and {{#crossLink "Body/SLEEPING:property"}}Body.SLEEPING{{/crossLink}}.
	 *
	 * The body is initially Body.AWAKE. If its velocity norm is below .sleepSpeedLimit, the sleepState will become Body.SLEEPY. If the body continues to be Body.SLEEPY for .sleepTimeLimit seconds, it will fall asleep (Body.SLEEPY).
	 *
	 * @property sleepState
	 * @type {Number}
	 * @default Body.AWAKE
	 */
	public sleepState: u16 = Body.AWAKE;

	/**
	 * If the speed (the norm of the velocity) is smaller than this value, the body is considered sleepy.
	 * @property sleepSpeedLimit
	 * @type {Number}
	 * @default 0.2
	 */
	public sleepSpeedLimit: f32 = 0.2;

	/**
	 * If the body has been sleepy for this sleepTimeLimit seconds, it is considered sleeping.
	 * @property sleepTimeLimit
	 * @type {Number}
	 * @default 1
	 */
	public sleepTimeLimit: f32 = 1;

	/**
	 * Gravity scaling factor. If you want the body to ignore gravity, set this to zero. If you want to reverse gravity, set it to -1.
	 * @property {Number} gravityScale
	 * @default 1
	 */
	public gravityScale:number = 1;

	/**
	 * Whether to produce contact forces when in contact with other bodies. Note that contacts will be generated, but they will be disabled. That means that this body will move through other bodies, but it will still trigger contact events, etc.
	 * @property {Boolean} collisionResponse
	 */
	public collisionResponse: boolean = true;

	/**
	 * How long the body has been sleeping.
	 * @readonly
	 * @property {Number} idleTime
	 */
	public idleTime: f32 = 0;

	/**
	 * The last time when the body went to SLEEPY state.
	 * @readonly
	 * @property {Number} timeLastSleepy
	 * @private
	 */
	public timeLastSleepy: f32 = 0;

	/**
	 * If the body speed exceeds this threshold, CCD (continuous collision detection) will be enabled. Set it to a negative number to disable CCD completely for this body.
	 * @property {number} ccdSpeedThreshold
	 * @default -1
	 */
	public ccdSpeedThreshold: f32 = -1;

	/**
	 * The number of iterations that should be used when searching for the time of impact during CCD. A larger number will assure that there's a small penetration on CCD collision, but a small number will give more performance.
	 * @property {number} ccdIterations
	 * @default 10
	 */
	public ccdIterations: f32 = 10;

	/**
	 * @property {number} islandId
	 */
	public islandId: f32 = -1;

	public concavePath: Float32Array[]; // TODO: what is the type of this?

	private _wakeUpAfterNarrowphase: boolean = false;

	private _shapeAABB = new AABB();
	private _tmp = vec2create();

	/**
	 * A rigid body. Has got a center of mass, position, velocity and a number of
	 * shapes that are used for collisions.
	 *
	 * @class Body
	 * @constructor
	 * @extends EventEmitter
	 * @param {Object} [options]
	 * @param {Boolean} [options.allowSleep=true]
	 * @param {Number} [options.angle=0]
	 * @param {Number} [options.angularDamping=0.1]
	 * @param {Number} [options.angularForce=0]
	 * @param {Number} [options.angularVelocity=0]
	 * @param {Number} [options.ccdIterations=10]
	 * @param {Number} [options.ccdSpeedThreshold=-1]
	 * @param {Boolean} [options.collisionResponse]
	 * @param {Number} [options.damping=0.1]
	 * @param {Boolean} [options.fixedRotation=false]
	 * @param {Boolean} [options.fixedX=false]
	 * @param {Boolean} [options.fixedY=false]
	 * @param {Array} [options.force]
	 * @param {Number} [options.gravityScale=1]
	 * @param {Number} [options.mass=0] A number >= 0. If zero, the .type will be set to Body.STATIC.
	 * @param {Array} [options.position]
	 * @param {Number} [options.sleepSpeedLimit]
	 * @param {Number} [options.sleepTimeLimit]
	 * @param {Number} [options.type] See {{#crossLink "Body/type:property"}}{{/crossLink}}
	 * @param {Array} [options.velocity]
	 *
	 * @example
	 *
	 *     // Create a typical dynamic body
	 *     var body = new Body({
	 *         mass: 1, // non-zero mass will set type to Body.DYNAMIC
	 *         position: [0, 5],
	 *         angle: 0,
	 *         velocity: [0, 0],
	 *         angularVelocity: 0
	 *     });
	 *
	 *     // Add a circular shape to the body
	 *     var circleShape = new Circle({ radius: 0.5 });
	 *     body.addShape(circleShape);
	 *
	 *     // Add the body to the world
	 *     world.addBody(body);
	 *
	 * @example
	 *
	 *     // Create a static plane body
	 *     var planeBody = new Body({
	 *         mass: 0, // zero mass will set type to Body.STATIC
	 *         position: [0, 0]
	 *     });
	 *     var planeShape = new Plane();
	 *     planeBody.addShape(planeShape);
	 *     world.addBody(planeBody);
	 *
	 * @example
	 *
	 *     // Create a moving kinematic box body
	 *     var platformBody = new Body({
	 *         type: Body.KINEMATIC,
	 *         position: [0, 3],
	 *         velocity: [1, 0]
	 *     });
	 *     var boxShape = new Box({ width: 2, height: 0.5 });
	 *     platformBody.addShape(boxShape);
	 *     world.addBody(platformBody);
	 */
	constructor(options?: {
		id?: u32,
		mass?: f32,
		fixedRotation?: boolean,
		fixedX?: boolean,
		fixedY?: boolean,
		position?: Float32Array,
		velocity?: Float32Array,
		angle?: f32,
		angularVelocity?: f32,
		force?: Float32Array,
		angularForce?: f32,
		damping?: f32,
		angularDamping?: f32,
		sleepTimeLimit?: f32,
		type?: u16,
		allowSleep?: boolean,
		sleepSpeedLimit?: f32,
		gravityScale?: f32,
		collisionResponse?: boolean,
		ccdSpeedThreshold?: f32,
		ccdIterations?: f32,
	}){
		super(options);


		this.id = options?.id ?? ++_idCounter;
		this.mass = options?.mass ?? 0;
		this.fixedRotation = options?.fixedRotation ?? false;
		this.fixedX = options?.fixedX ?? false;
		this.fixedY = options?.fixedY ?? false;
		this.massMultiplier = vec2create();
		this.position = options?.position ? vec2.clone(options.position) : vec2create();
		this.interpolatedPosition = vec2.clone(this.position);
		this.previousPosition = vec2.clone(this.position);
		this.velocity = options?.velocity ? vec2.clone(options.velocity) : vec2create();
		this.vlambda = vec2create();
		this.angle = options?.angle ?? 0;
		this.previousAngle = this.angle;
		this.interpolatedAngle = this.angle;
		this.angularVelocity = options?.angularVelocity ?? 0;
		this.force = options?.force ? vec2.clone(options.force) : vec2create();
		this.angularForce = options?.angularForce ?? 0;
		this.damping = options?.damping ?? 0.1;
		this.angularDamping = options?.angularDamping ?? 0.1;
		this.sleepTimeLimit = options?.sleepTimeLimit ?? 1;

		if(options?.type !== undefined){
			this.type = options.type;
		} else if(!(options?.mass)){
			this.type = Body.STATIC;
		} else {
			this.type = Body.DYNAMIC;
		}

		this.aabb = new AABB();
		this.allowSleep = options?.allowSleep ?? true;
		this.sleepSpeedLimit = options?.sleepSpeedLimit ?? 0.2;
		this.gravityScale = options?.gravityScale ?? 1;
		this.collisionResponse = options?.collisionResponse ?? true;
		this.ccdSpeedThreshold = options?.ccdSpeedThreshold ?? -1;
		this.ccdIterations = options?.ccdIterations ?? 10;

		this.updateMassProperties();
	}

	/**
	 * @private
	 * @method updateSolveMassProperties
	 */
	updateSolveMassProperties(){
		if(this.sleepState === Body.SLEEPING || this.type === Body.KINEMATIC){
			this.invMassSolve = 0;
			this.invInertiaSolve = 0;
		} else {
			this.invMassSolve = this.invMass;
			this.invInertiaSolve = this.invInertia;
		}
	};

	/**
	 * Set the total density of the body
	 * @method setDensity
	 * @param {number} density
	 */
	setDensity(density: f32) {
		var totalArea = this.getArea();
		this.mass = totalArea * density;
		this.updateMassProperties();
	};

	/**
	 * Get the total area of all shapes in the body
	 * @method getArea
	 * @return {Number}
	 */
	getArea(): f32 {
		var totalArea = 0;
		for(var i=0; i<this.shapes.length; i++){
			totalArea += this.shapes[i].area;
		}
		return totalArea;
	};

	/**
	 * Get the AABB from the body. The AABB is updated if necessary.
	 * @method getAABB
	 * @return {AABB} The AABB instance from the body.
	 */
	getAABB(): AABB{ // TODO: switch to typescript getter.
		if(this.aabbNeedsUpdate){
			this.updateAABB();
		}
		return this.aabb;
	};

	/**
	 * Updates the AABB of the Body, and set .aabbNeedsUpdate = false.
	 * @method updateAABB
	 */
	updateAABB() {
		var shapes = this.shapes,
			N = shapes.length,
			offset = tmp,
			bodyAngle = this.angle;

		for(var i=0; i!==N; i++){
			var shape = shapes[i],
				angle = shape.angle + bodyAngle;

			// Get shape world offset
			vec2.toGlobalFrame(offset, shape.position, this.position, bodyAngle);

			// Get shape AABB
			shape.computeAABB(this._shapeAABB, offset, angle);

			if(i===0){
				this.aabb.copy(this._shapeAABB);
			} else {
				this.aabb.extend(this._shapeAABB);
			}
		}

		this.aabbNeedsUpdate = false;
	};

	/**
	 * Update the bounding radius of the body (this.boundingRadius). Should be done if any of the shape dimensions or positions are changed.
	 * @method updateBoundingRadius
	 */
	updateBoundingRadius(){
		var shapes = this.shapes,
			N = shapes.length,
			radius = 0;

		for(var i=0; i!==N; i++){
			var shape = shapes[i],
				offset = vec2.length(shape.position),
				r = shape.boundingRadius;
			if(offset + r > radius){
				radius = offset + r;
			}
		}

		this.boundingRadius = radius;
	};

	/**
	 * Add a shape to the body. You can pass a local transform when adding a shape,
	 * so that the shape gets an offset and angle relative to the body center of mass.
	 * Will automatically update the mass properties and bounding radius.
	 *
	 * @method addShape
	 * @param  {Shape}              shape
	 * @param  {Array} [offset] Local body offset of the shape.
	 * @param  {Number}             [angle]  Local body angle.
	 *
	 * @example
	 *     var body = new Body(),
	 *         shape = new Circle({ radius: 1 });
	 *
	 *     // Add the shape to the body, positioned in the center
	 *     body.addShape(shape);
	 *
	 *     // Add another shape to the body, positioned 1 unit length from the body center of mass along the local x-axis.
	 *     body.addShape(shape,[1,0]);
	 *
	 *     // Add another shape to the body, positioned 1 unit length from the body center of mass along the local y-axis, and rotated 90 degrees CCW.
	 *     body.addShape(shape,[0,1],Math.PI/2);
	 */
	addShape(shape: Shape, offset: Float32Array, angle: f32 = 0){
		if(shape.body){
			throw new Error('A shape can only be added to one body.');
		}
		var world = this.world;
		if(world && world.stepping){
			throw new Error('A shape cannot be added during step.');
		}
		shape.body = this;

		// Copy the offset vector
		if(offset){
			vec2.copy(shape.position, offset);
		} else {
			vec2.set(shape.position, 0, 0);
		}

		shape.angle = angle || 0;

		this.shapes.push(shape);
		this.updateMassProperties();
		this.updateBoundingRadius();

		this.aabbNeedsUpdate = true;
	};

	/**
	 * Remove a shape.
	 * @method removeShape
	 * @param  {Shape} shape
	 * @return {Boolean} True if the shape was found and removed, else false.
	 */
	removeShape(shape: Shape): boolean{
		var world = this.world;
		if(world && world.stepping){
			throw new Error('A shape cannot be removed during step.');
		}

		var idx = this.shapes.indexOf(shape);

		if(idx !== -1){
			this.shapes.splice(idx,1);
			this.aabbNeedsUpdate = true;
			shape.body = undefined;
			return true;
		} else {
			return false;
		}
	};

	/**
	 * Updates .inertia, .invMass, .invInertia for this Body. Should be called when changing the structure or mass of the Body.
	 *
	 * @method updateMassProperties
	 *
	 * @example
	 *     body.mass += 1;
	 *     body.updateMassProperties();
	 */
	updateMassProperties(){
		if(this.type === Body.STATIC || this.type === Body.KINEMATIC){

			// Consider making it infinity.
			this.mass = Infinity;
			this.invMass = 0;
			this.inertia = Infinity;
			this.invInertia = 0;

		} else {

			var shapes = this.shapes,
				N = shapes.length,
				I = 0;

			if(!this.fixedRotation){
				for(var i=0; i<N; i++){
					var shape = shapes[i],
						r2 = vec2.squaredLength(shape.position),
						Icm = shape.computeMomentOfInertia();
					I += Icm + r2;
				}
				this.inertia = this.mass * I;
				this.invInertia = I>0 ? 1/I : 0;

			} else {
				this.inertia = Infinity;
				this.invInertia = 0;
			}

			// Inverse mass properties are easy
			this.invMass = 1 / this.mass;

			vec2.set(
				this.massMultiplier,
				this.fixedX ? 0 : 1,
				this.fixedY ? 0 : 1
			);
		}
	};

	/**
	 * Apply force to a point relative to the center of mass of the body. This could for example be a point on the Body surface. Applying force this way will add to Body.force and Body.angularForce.
	 * @method applyForce
	 * @param  {Array} force The force vector to add, oriented in world space.
	 * @param  {Array} [relativePoint] A point relative to the body in world space. If not given, it is set to zero and all of the force will be exerted on the center of mass.
	 * @example
	 *     var body = new Body({ mass: 1 });
	 *     var relativePoint = [1, 0]; // Will apply the force at [body.position[0] + 1, body.position[1]]
	 *     var force = [0, 1]; // up
	 *     body.applyForce(force, relativePoint);
	 *     console.log(body.force); // [0, 1]
	 *     console.log(body.angularForce); // 1
	 */
	applyForce(force: Float32Array, relativePoint: Float32Array){

		// Add linear force
		add(this.force, this.force, force);

		if(relativePoint){

			// Compute produced rotational force
			var rotForce = vec2.crossLength(relativePoint,force);

			// Add rotational force
			this.angularForce += rotForce;
		}
	};

	/**
	 * Apply force to a point relative to the center of mass of the body. This could for example be a point on the Body surface. Applying force this way will add to Body.force and Body.angularForce.
	 * @method applyForceLocal
	 * @param  {Array} localForce The force vector to add, oriented in local body space.
	 * @param  {Array} [localPoint] A point relative to the body in local body space. If not given, it is set to zero and all of the force will be exerted on the center of mass.
	 * @example
	 *     var body = new Body({ mass: 1 });
	 *     var localPoint = [1, 0]; // x=1 locally in the body
	 *     var localForce = [0, 1]; // up, locally in the body
	 *     body.applyForceLocal(localForce, localPoint);
	 *     console.log(body.force); // [0, 1]
	 *     console.log(body.angularForce); // 1
	 */
	applyForceLocal(localForce: Float32Array, localPoint: Float32Array){
		// These 3 lines were originally outside of this function. Not sure why.
		var Body_applyForce_forceWorld = vec2create();
		var Body_applyForce_pointWorld = vec2create();
		var Body_applyForce_pointLocal = vec2create();

		localPoint = localPoint || Body_applyForce_pointLocal;
		var worldForce = Body_applyForce_forceWorld;
		var worldPoint = Body_applyForce_pointWorld;
		this.vectorToWorldFrame(worldForce, localForce);
		this.vectorToWorldFrame(worldPoint, localPoint);
		this.applyForce(worldForce, worldPoint);
	};

	/**
	 * Apply impulse to a point relative to the body. This could for example be a point on the Body surface. An impulse is a force added to a body during a short period of time (impulse = force * time). Impulses will be added to Body.velocity and Body.angularVelocity.
	 * @method applyImpulse
	 * @param  {Array} impulseVector The impulse vector to add, oriented in world space.
	 * @param  {Array} [relativePoint] A point relative to the body in world space. If not given, it is set to zero and all of the impulse will be exerted on the center of mass.
	 * @example
	 *     var body = new Body({ mass: 1 });
	 *     var relativePoint = [0, 0]; // center of the body
	 *     var impulseVector = [0, 1]; // world up
	 *     body.applyImpulse(impulseVector, relativePoint);
	 */
	applyImpulse(impulseVector: Float32Array, relativePoint: Float32Array){
		var Body_applyImpulse_velo = vec2create(); // Was originally outside of this function. 

		if(this.type !== Body.DYNAMIC){
			return;
		}

		// Compute produced central impulse velocity
		var velo = Body_applyImpulse_velo;
		vec2.scale(velo, impulseVector, this.invMass);
		vec2.multiply(velo, this.massMultiplier, velo);

		// Add linear impulse
		add(this.velocity, velo, this.velocity);

		if(relativePoint){
			// Compute produced rotational impulse velocity
			var rotVelo = vec2.crossLength(relativePoint, impulseVector);
			rotVelo *= this.invInertia;

			// Add rotational Impulse
			this.angularVelocity += rotVelo;
		}
	};

	/**
	 * Apply impulse to a point relative to the body. This could for example be a point on the Body surface. An impulse is a force added to a body during a short period of time (impulse = force * time). Impulses will be added to Body.velocity and Body.angularVelocity.
	 * @method applyImpulseLocal
	 * @param  {Array} localImpulse The impulse vector to add, oriented in local body space.
	 * @param  {Array} [localPoint] A point relative to the body in local body space. If not given, it is set to zero and all of the impulse will be exerted on the center of mass.
	 * @example
	 *     var body = new Body({ mass: 1 });
	 *     var localPoint = [1, 0]; // x=1, locally in the body
	 *     var localImpulse = [0, 1]; // up, locally in the body
	 *     body.applyImpulseLocal(localImpulse, localPoint);
	 *     console.log(body.velocity); // [1, 0]
	 *     console.log(body.angularVelocity); // 1
	 */
	applyImpulseLocal(localImpulse: Float32Array, localPoint: Float32Array){
		// Originally outside of this function.
		var Body_applyImpulse_impulseWorld = vec2create();
		var Body_applyImpulse_pointWorld = vec2create();
		var Body_applyImpulse_pointLocal = vec2create();

		localPoint = localPoint || Body_applyImpulse_pointLocal;
		var worldImpulse = Body_applyImpulse_impulseWorld;
		var worldPoint = Body_applyImpulse_pointWorld;
		this.vectorToWorldFrame(worldImpulse, localImpulse);
		this.vectorToWorldFrame(worldPoint, localPoint);
		this.applyImpulse(worldImpulse, worldPoint);
	};

	/**
	 * Transform a world point to local body frame.
	 * @method toLocalFrame
	 * @param  {Array} out          The point to store the result in
	 * @param  {Array} worldPoint   The input world point
	 */
	toLocalFrame(out: Float32Array, worldPoint: Float32Array){
		vec2.toLocalFrame(out, worldPoint, this.position, this.angle);
	};

	/**
	 * Transform a local point to world frame.
	 * @method toWorldFrame
	 * @param  {Array} out          The point to store the result in
	 * @param  {Array} localPoint   The input local point
	 */
	toWorldFrame(out: Float32Array, localPoint: Float32Array){
		vec2.toGlobalFrame(out, localPoint, this.position, this.angle);
	};

	/**
	 * Transform a world vector to local body frame.
	 * @method vectorToLocalFrame
	 * @param  {Array} out          The vector to store the result in
	 * @param  {Array} worldVector  The input world vector
	 */
	vectorToLocalFrame(out: Float32Array, worldVector: Float32Array){
		vec2.vectorToLocalFrame(out, worldVector, this.angle);
	};

	/**
	 * Transform a local vector to world frame.
	 * @method vectorToWorldFrame
	 * @param  {Array} out          The vector to store the result in
	 * @param  {Array} localVector  The input local vector
	 */
	vectorToWorldFrame(out: Float32Array, localVector: Float32Array){
		vec2.rotate(out, localVector, this.angle);
	};

	/**
	 * Reads a polygon shape path, and assembles convex shapes from that and puts them at proper offset points.
	 * @method fromPolygon
	 * @param {Array} path An array of 2d vectors, e.g. [[0,0],[0,1],...] that resembles a concave or convex polygon. The shape must be simple and without holes.
	 * @param {Object} [options]
	 * @param {Boolean} [options.optimalDecomp=false]   Set to true if you need optimal decomposition. Warning: very slow for polygons with more than 10 vertices.
	 * @param {Boolean} [options.skipSimpleCheck=false] Set to true if you already know that the path is not intersecting itself.
	 * @param {Number} [options.removeCollinearPoints=0] Set to a number (angle threshold value) to remove collinear points, or 0 to keep all points.
	 * @return {Boolean} True on success, else false.
	 * @example
	 *     var body = new Body();
	 *     var path = [
	 *         [-1, 1],
	 *         [-1, 0],
	 *         [1, 0],
	 *         [1, 1],
	 *         [0.5, 0.5]
	 *     ];
	 *     body.fromPolygon(path);
	 *     console.log(body.shapes); // [Convex, Convex, ...]
	 */
	fromPolygon(path: Float32Array[], options?: {
		removeCollinearPoints?: f32,
		skipSimpleCheck?: boolean,
		optimalDecomp?: boolean
	}){
		// Remove all shapes
		for(var i=this.shapes.length; i>=0; --i){
			this.removeShape(this.shapes[i]);
		}

		// Copy the path
		var p = [];
		for(var i=0; i<path.length; i++){
			p[i] = vec2.clone(path[i]);
		}

		// Make it counter-clockwise
		decomp.makeCCW(p);

		if(options?.removeCollinearPoints != 0){
			decomp.removeCollinearPoints(p, options?.removeCollinearPoints ?? 0);
		}

		// Check if any line segment intersects the path itself
		if(!options?.skipSimpleCheck){
			if(!decomp.isSimple(p)){
				return false;
			}
		}

		// Save this path for later
		this.concavePath = [];
		for(var i=0; i<p.length; i++){
			this.concavePath[i] = vec2.clone(p[i]);
		}

		// Slow or fast decomp?
		let convexes: Array<Array<Float32Array>>;
		if(options?.optimalDecomp){
			convexes = decomp.decomp(p) ?? new Array<Array<Float32Array>>();
		} else {
			convexes = decomp.quickDecomp(p) ?? new Array<Array<Float32Array>>();
		}

		var cm = vec2create();

		// Add convexes
		for(var i=0; i!==convexes.length; i++){
			// Create convex
			var c = new Convex(undefined, convexes[i] );

			// Move all vertices so its center of mass is in the local center of the convex
			for(var j=0; j!==c.vertices.length; j++){
				var v = c.vertices[j];
				sub(v,v,c.centerOfMass);
			}

			vec2.copy(cm,c.centerOfMass);

			c = new Convex(undefined, c.vertices );

			// Add the shape
			this.addShape(c,cm);
		}

		this.adjustCenterOfMass();

		this.aabbNeedsUpdate = true;

		return true;
	}

	/**
	 * Moves the shape offsets so their center of mass becomes the body center of mass.
	 * @method adjustCenterOfMass
	 * @example
	 *     var body = new Body({ position: [0, 0] });
	 *     var shape = new Circle({ radius: 1 });
	 *     body.addShape(shape, [1, 0], 0);
	 *     body.adjustCenterOfMass();
	 *     console.log(body.position); // [1, 0]
	 *     console.log(shape.position); // [0, 0]
	 */
	adjustCenterOfMass(){

		var adjustCenterOfMass_tmp2 = vec2create(),
			adjustCenterOfMass_tmp3 = vec2create(),
			adjustCenterOfMass_tmp4 = vec2create();

		var offset_times_area = adjustCenterOfMass_tmp2,
			sum =               adjustCenterOfMass_tmp3,
			cm =                adjustCenterOfMass_tmp4,
			totalArea =         0;
		vec2.set(sum,0,0);

		for(var i=0; i!==this.shapes.length; i++){
			var s = this.shapes[i];
			vec2.scale(offset_times_area, s.position, s.area);
			add(sum, sum, offset_times_area);
			totalArea += s.area;
		}

		vec2.scale(cm,sum,1/totalArea);

		// Now move all shapes
		for(var i=0; i!==this.shapes.length; i++){
			var s = this.shapes[i];
			sub(s.position, s.position, cm);
		}

		// Move the body position too
		add(this.position,this.position,cm);

		// And concave path
		for(var i=0; this.concavePath && i<this.concavePath.length; i++){
			sub(this.concavePath[i], this.concavePath[i], cm);
		}

		this.updateMassProperties();
		this.updateBoundingRadius();
	}

	/**
	 * Sets the force on the body to zero.
	 * @method setZeroForce
	 */
	setZeroForce(){
		var f = this.force;
		f[0] = f[1] = this.angularForce = 0;
	}

	resetConstraintVelocity(){
		var b = this,
			vlambda = b.vlambda;
		vec2.set(vlambda,0,0);
		b.wlambda = 0;
	}

	addConstraintVelocity(){
		var b = this,
			v = b.velocity;
		add( v, v, b.vlambda);
		b.angularVelocity += b.wlambda;
	}

	/**
	 * Apply damping, see <a href="http://code.google.com/p/bullet/issues/detail?id=74">this</a> for details.
	 * @method applyDamping
	 * @param  {number} dt Current time step
	 */
	applyDamping(dt: f32){
		if(this.type === Body.DYNAMIC){ // Only for dynamic bodies
			var v = this.velocity;
			vec2.scale(v, v, Math.pow(1 - this.damping,dt));
			this.angularVelocity *= Math.pow(1 - this.angularDamping,dt);
		}
	}

	/**
	 * Wake the body up. Normally you should not need this, as the body is automatically awoken at events such as collisions.
	 * Sets the sleepState to {{#crossLink "Body/AWAKE:property"}}Body.AWAKE{{/crossLink}} and emits the wakeUp event if the body wasn't awake before.
	 * @method wakeUp
	 */
	wakeUp(){
		var s = this.sleepState;
		this.sleepState = Body.AWAKE;
		this.idleTime = 0;
		if(s !== Body.AWAKE){
			super.emit(wakeUpEvent);
		}
	}

	/**
	 * Force body sleep
	 * @method sleep
	 */
	sleep(){
		this.sleepState = Body.SLEEPING;
		this.angularVelocity = this.angularForce = 0;
		vec2.set(this.velocity,0,0);
		vec2.set(this.force,0,0);
		super.emit(sleepEvent);
	}

	/**
	 * Called every timestep to update internal sleep timer and change sleep state if needed.
	 * @method sleepTick
	 * @param {number} time The world time in seconds
	 * @param {boolean} dontSleep
	 * @param {number} dt
	 */
	sleepTick(time: f32, dontSleep: boolean, dt: f32){
		if(!this.allowSleep || this.type === Body.SLEEPING){
			return;
		}

		this.wantsToSleep = false;

		var speedSquared = vec2.squaredLength(this.velocity) + Math.pow(this.angularVelocity,2),
			speedLimitSquared = Math.pow(this.sleepSpeedLimit,2);

		// Add to idle time
		if(speedSquared >= speedLimitSquared){
			this.idleTime = 0;
			this.sleepState = Body.AWAKE;
		} else {
			this.idleTime += dt;
			if(this.sleepState !== Body.SLEEPY){
				this.sleepState = Body.SLEEPY;
				super.emit(sleepyEvent);
			}
		}

		if(this.idleTime > this.sleepTimeLimit){
			if(!dontSleep){
				this.sleep();
			} else {
				this.wantsToSleep = true;
			}
		}
	}

	/**
	 * Check if the body is overlapping another body. Note that this method only works if the body was added to a World and if at least one step was taken.
	 * @method overlaps
	 * @param  {Body} body
	 * @return {boolean}
	 */
	overlaps(body: Body): boolean{
		return this.world.overlapKeeper.bodiesAreOverlapping(this, body);
	}

	/**
	 * Move the body forward in time given its current velocity.
	 * @method integrate
	 * @param  {Number} dt
	 */
	integrate(dt: f32){

		let minv = this.invMass,
			f = this.force,
			pos = this.position,
			velo = this.velocity;

		// Save old position
		vec2.copy(this.previousPosition, this.position);
		this.previousAngle = this.angle;

		// Velocity update
		if(!this.fixedRotation){
			this.angularVelocity += this.angularForce * this.invInertia * dt;
		}
		vec2.scale(integrate_fhMinv, f, dt * minv);
		vec2.multiply(integrate_fhMinv, this.massMultiplier, integrate_fhMinv);
		add(velo, integrate_fhMinv, velo);

		// CCD
		if(!this.integrateToTimeOfImpact(dt)){

			// Regular position update
			vec2.scale(integrate_velodt, velo, dt);
			add(pos, pos, integrate_velodt);
			if(!this.fixedRotation){
				this.angle += this.angularVelocity * dt;
			}
		}

		this.aabbNeedsUpdate = true;
	}

	integrateToTimeOfImpact(dt: f32): boolean{

		let result = new RaycastResult();
		let ray = new Ray({
			mode: Ray.CLOSEST,
			skipBackfaces: true
		});

		let direction = vec2create();
		let end = vec2create();
		let startToEnd = vec2create();
		let rememberPosition = vec2create();

		if(this.ccdSpeedThreshold < 0 || vec2.squaredLength(this.velocity) < Math.pow(this.ccdSpeedThreshold, 2)){
			return false;
		}

		// Ignore all the ignored body pairs
		// This should probably be done somewhere else for optimization
		let ignoreBodies = [];
		let disabledPairs = this.world.disabledBodyCollisionPairs;
		for(let i=0; i<disabledPairs.length; i+=2){
			let bodyA = disabledPairs[i];
			let bodyB = disabledPairs[i+1];
			if(bodyA === this){
				ignoreBodies.push(bodyB);
			} else if(bodyB === this){
				ignoreBodies.push(bodyA);
			}
		}

		vec2.normalize(direction, this.velocity);

		vec2.scale(end, this.velocity, dt);
		add(end, end, this.position);

		sub(startToEnd, end, this.position);
		let startToEndAngle = this.angularVelocity * dt;
		let len = vec2.length(startToEnd);

		let timeOfImpact = 1;

		let hitBody;
		vec2.copy(ray.from, this.position);
		vec2.copy(ray.to, end);
		ray.update();
		for(let i=0; i<this.shapes.length; i++){
			let shape = this.shapes[i];
			result.reset();
			ray.collisionGroup = shape.collisionGroup;
			ray.collisionMask = shape.collisionMask;
			this.world.raycast(result, ray);
			hitBody = result.body;

			if(hitBody === this || ignoreBodies.indexOf(hitBody) !== -1){
				hitBody = null;
			}

			if(hitBody){
				break;
			}
		}

		if(!hitBody || !timeOfImpact){
			return false;
		}
		result.getHitPoint(end, ray);
		sub(startToEnd, end, this.position);
		timeOfImpact = vec2.distance(end, this.position) / len; // guess

		let rememberAngle = this.angle;
		vec2.copy(rememberPosition, this.position);

		// Got a start and end point. Approximate time of impact using binary search
		let iter = 0;
		let tmin = 0;
		let tmid = timeOfImpact;
		let tmax = 1;
		while (tmax >= tmin && iter < this.ccdIterations) {
			iter++;

			// calculate the midpoint
			tmid = (tmax + tmin) / 2;

			// Move the body to that point
			vec2.scale(integrate_velodt, startToEnd, tmid);
			add(this.position, rememberPosition, integrate_velodt);
			this.angle = rememberAngle + startToEndAngle * tmid;
			this.updateAABB();

			// check overlap
			let overlaps = this.aabb.overlaps(hitBody.aabb) && this.world.narrowphase.bodiesOverlap(this, hitBody, true);

			if (overlaps) {
				// change max to search lower interval
				tmax = tmid;
			} else {
				// change min to search upper interval
				tmin = tmid;
			}
		}

		timeOfImpact = tmax; // Need to guarantee overlap to resolve collisions

		vec2.copy(this.position, rememberPosition);
		this.angle = rememberAngle;

		// move to TOI
		vec2.scale(integrate_velodt, startToEnd, timeOfImpact);
		add(this.position, this.position, integrate_velodt);
		if(!this.fixedRotation){
			this.angle += startToEndAngle * timeOfImpact;
		}

		return true;
	}

	/**
	 * Get velocity of a point in the body.
	 * @method getVelocityAtPoint
	 * @param  {Array} result A vector to store the result in
	 * @param  {Array} relativePoint A world oriented vector, indicating the position of the point to get the velocity from
	 * @return {Array} The result vector
	 * @example
	 *     var body = new Body({
	 *         mass: 1,
	 *         velocity: [1, 0],
	 *         angularVelocity: 1
	 *     });
	 *     var result = [];
	 *     var point = [1, 0];
	 *     body.getVelocityAtPoint(result, point);
	 *     console.log(result); // [1, 1]
	 */
	getVelocityAtPoint(result: Float32Array, relativePoint: Float32Array): Float32Array{
		vec2.crossVZ(result, relativePoint, this.angularVelocity);
		vec2.subtract(result, this.velocity, result);
		return result;
	}

	/**
	 * Dynamic body.
	 * @property DYNAMIC
	 * @type {Number}
	 * @static
	 */
	static DYNAMIC: u16 = 1;

	/**
	 * Static body.
	 * @property STATIC
	 * @type {Number}
	 * @static
	 */
	static STATIC: u16 = 2;

	/**
	 * Kinematic body.
	 * @property KINEMATIC
	 * @type {Number}
	 * @static
	 */
	static KINEMATIC: u16 = 4;

	/**
	 * @property AWAKE
	 * @type {Number}
	 * @static
	 */
	static AWAKE: u16 = 0;

	/**
	 * @property SLEEPY
	 * @type {Number}
	 * @static
	 */
	static SLEEPY: u16 = 1;

	/**
	 * @property SLEEPING
	 * @type {Number}
	 * @static
	 */
	static SLEEPING: u16 = 2;
}

/**
 * @event sleepy
 */
var sleepyEvent = {
	type: "sleepy"
};

/**
 * @event sleep
 */
var sleepEvent = {
	type: "sleep"
};

/**
 * @event wakeup
 */
var wakeUpEvent = {
	type: "wakeup"
};