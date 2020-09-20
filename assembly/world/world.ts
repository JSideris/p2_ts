//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import GSSolver from  "../solver/gs-solver";
import vec2 from  "../math/vec2";
import Shape from  "../shapes/shape";
import EventEmitter from  "../events/event-emitter";
import { EventArgument } from  "../events/event-emitter";
import Body from  "../objects/body";
import Material from  "../material/material";
import ContactMaterial from  "../material/contact-material";
import AABB from  "../collision/aabb";
import SAPBroadphase from  "../collision/sap-broadphase";
import Narrowphase from  "../collision/narrowphase";
import Utils from  "../utils/utils";
//import arrayRemove from  "ayRemo"; // Get rid of this dependency!
import OverlapKeeper from  "../utils/overlap-keeper";
import UnionFind from  "./union-find";
import Equation from "../equations/equation";
import Solver from "../solver/solver";
import Spring from "../objects/spring";
import Broadphase from "../collision/broadphase";
import Constraint from "../constraints/constraint";
import FrictionEquation from "../equations/friction-equation";
import ContactEquation from "../equations/contact-equation";
import RaycastResult from "../collision/raycast-result";
import Ray from "../collision/ray";
import OverlapKeeperRecord from "../utils/overlap-keeper-record";

//import f32 from "f32";

/**
 * Fired after the step().
 * @event postStep
 */
export class PostStepEvent extends EventArgument {
	constructor(){
		super("postStep");
	}
};

var postStepEvent:PostStepEvent = new PostStepEvent();

/**
 * Fired when a body is added to the world.
 * @event addBody
 * @param {Body} body
 */
export class AddBodyEvent extends EventArgument{
	body: Body|null = null;
	sapBroadphase : SAPBroadphase|null = null;
	constructor(){
		super("addBody");
	}
}

/**
 * Fired when a body is removed from the world.
 * @event removeBody
 * @param {Body} body
 */
export class RemoveBodyEvent extends EventArgument{
	body : Body|null = null;
	sapBroadphase : SAPBroadphase|null = null;
	constructor(){
		super("removeBody");
	}
}

/**
 * Fired when a spring is added to the world.
 * @event addSpring
 * @param {Spring} spring
 */
export class AddSpringEvent extends EventArgument{
	spring: Spring|null = null;

	constructor(){
		super("addSpring");
	}
}
var addSpringEvent = new AddSpringEvent();

/**
 * Fired when a first contact is created between two bodies. This event is fired after the step has been done.
 * @event impact
 * @param {Body} bodyA
 * @param {Body} bodyB
 * @deprecated Impact event will be removed. Use beginContact instead.
 */
export class ImpactEvent extends EventArgument{
	bodyA: Body|null = null;
	bodyB: Body|null = null;
	shapeA: Shape|null = null;
	shapeB: Shape|null = null;
	contactEquation: ContactEquation|null = null;

	constructor(){
		super("impact");
	}
}
var impactEvent = new ImpactEvent();


/**
 * Fired after the Broadphase has collected collision pairs in the world.
 * Inside the event handler, you can modify the pairs array as you like, to
 * prevent collisions between objects that you don't want.
 * @event postBroadphase
 * @param {Array} pairs An array of collision pairs. If this array is [body1,body2,body3,body4], then the body pairs 1,2 and 3,4 would advance to narrowphase.
 */
export class PostBroadphaseEvent extends EventArgument{
	pairs: Body[]|null = null;
	constructor(){
		super("postBroadphase");
	}
}
var postBroadphaseEvent = new PostBroadphaseEvent;


export class BeginContactEvent extends EventArgument{
	shapeA: Shape|null = null;
	shapeB: Shape|null = null;
	bodyA: Body|null = null;
	bodyB: Body|null = null;
	contactEquations: ContactEquation[] = [];

	constructor(){
		super("beginContact");
	}
}

/**
 * Fired when two shapes starts start to overlap. Fired in the narrowphase, during step.
 * @event beginContact
 * @param {Shape} shapeA
 * @param {Shape} shapeB
 * @param {Body}  bodyA
 * @param {Body}  bodyB
 * @param {Array} contactEquations
 */
var beginContactEvent = new BeginContactEvent();

/**
 * Fired when two shapes stop overlapping, after the narrowphase (during step).
 * @event endContact
 * @param {Shape} shapeA
 * @param {Shape} shapeB
 * @param {Body}  bodyA
 * @param {Body}  bodyB
 */
export class EndContactEvent extends EventArgument {
	shapeA: Shape|null = null;
	shapeB: Shape|null = null;
	bodyA: Body|null = null;
	bodyB: Body|null = null;

	constructor(){
		super("endContact");
	}
};

var endContactEvent = new EndContactEvent();

var hitTest_tmp1 = vec2.create(),
	hitTest_tmp2 = vec2.create();

/**
 * Fired just before equations are added to the solver to be solved. Can be used to control what equations goes into the solver.
 * @event preSolve
 * @param {Array} contactEquations  An array of contacts to be solved.
 * @param {Array} frictionEquations An array of friction equations to be solved.
 */
export class PreSolveEvent extends EventArgument{
	contactEquations: ContactEquation[]|null = null;
	frictionEquations: FrictionEquation[]|null = null;

	constructor(){
		super("preSolve");
	}
}
var preSolveEvent = new PreSolveEvent();

function sortBodiesByIsland(a: Body,b: Body): i32{
	return a.islandId - b.islandId;
}

function sortEquationsByIsland(equationA: Equation, equationB: Equation): i32{
	if(!equationA.bodyA || !equationA.bodyB || !equationB.bodyA || !equationB.bodyB) return 0;

	let islandA: i32 = equationA.bodyA!.islandId > 0 ? equationA.bodyA!.islandId : equationA.bodyB!.islandId;
	let islandB: i32 = equationB.bodyA!.islandId > 0 ? equationB.bodyA!.islandId : equationB.bodyB!.islandId;

	if(islandA !== islandB){
		return islandA - islandB;
	} else {
		// Sort by equation type if same island
		return equationA.index - equationB.index;
	}
}

// Why not just make this a private method in world?
// What are all these props???
function runNarrowphase(world: World, np: Narrowphase, bi: Body, si: Shape, xi: Float32Array, ai: f32, bj: Body, sj: Shape, xj: Float32Array, aj: f32, cm: ContactMaterial, glen: f32): void{

	let xiw = vec2.create();
	let xjw = vec2.create();

	// Check collision groups and masks
	if(!((si.collisionGroup & sj.collisionMask) !== 0 && (sj.collisionGroup & si.collisionMask) !== 0)){
		return;
	}

	// Get world position and angle of each shape
	vec2.toGlobalFrame(xiw, xi, bi.position, bi.angle);
	vec2.toGlobalFrame(xjw, xj, bj.position, bj.angle);

	if(vec2.distance(xiw,xjw) > si.boundingRadius + sj.boundingRadius){
		return;
	}

	let aiw = ai + bi.angle;
	let ajw = aj + bj.angle;

	np.enableFriction = cm.friction > 0;
	let reducedMass: f32;
	if(bi.type === Body.STATIC || bi.type === Body.KINEMATIC){
		reducedMass = bj.mass;
	} else if(bj.type === Body.STATIC || bj.type === Body.KINEMATIC){
		reducedMass = bi.mass;
	} else {
		reducedMass = (bi.mass*bj.mass)/(bi.mass+bj.mass);
	}
	np.slipForce = cm.friction*glen*reducedMass;
	np.currentContactMaterial = cm;
	np.enabledEquations = bi.collisionResponse && bj.collisionResponse && si.collisionResponse && sj.collisionResponse;

	let sensor = si.sensor || sj.sensor;
	let numFrictionBefore = np.frictionEquations.length;

	let numContacts = np.testContact(bi, si, xiw, bj, sj, xjw, sensor);
	
	let numFrictionEquations: i32 = np.frictionEquations.length - numFrictionBefore;

	if(numContacts){

		if( bi.allowSleep &&
			bi.type === Body.DYNAMIC &&
			bi.sleepState  === Body.SLEEPING &&
			bj.sleepState  === Body.AWAKE &&
			bj.type !== Body.STATIC
		){
			let speedSquaredB = vec2.squaredLength(bj.velocity) + Mathf.pow(bj.angularVelocity,2);
			let speedLimitSquaredB = Mathf.pow(bj.sleepSpeedLimit,2);
			if(speedSquaredB >= speedLimitSquaredB*2){
				bi._wakeUpAfterNarrowphase = true;
			}
		}

		if( bj.allowSleep &&
			bj.type === Body.DYNAMIC &&
			bj.sleepState  === Body.SLEEPING &&
			bi.sleepState  === Body.AWAKE &&
			bi.type !== Body.STATIC
		){
			let speedSquaredA = vec2.squaredLength(bi.velocity) + Mathf.pow(bi.angularVelocity,2);
			let speedLimitSquaredA = Mathf.pow(bi.sleepSpeedLimit,2);
			if(speedSquaredA >= speedLimitSquaredA*2){
				bj._wakeUpAfterNarrowphase = true;
			}
		}

		world.overlapKeeper.setOverlapping(bi, si, bj, sj);
		if(world.has('beginContact', null) && world.overlapKeeper.isNewOverlap(si, sj)){

			// Report new shape overlap
			let e = beginContactEvent;
			e.shapeA = si;
			e.shapeB = sj;
			e.bodyA = bi;
			e.bodyB = bj;

			// Reset contact equations
			e.contactEquations.length = 0;

			if(!sensor){
				for(let i: i32 = np.contactEquations.length - numContacts; i<np.contactEquations.length; i++){
					e.contactEquations.push(np.contactEquations[i]);
				}
			}

			world.emit(e);
		}

		// divide the max friction force by the number of contacts
		if(!sensor && numFrictionEquations > 1){ // Why divide by 1?
			for(let i: i32 = np.frictionEquations.length - numFrictionEquations; i<np.frictionEquations.length; i++){
				let f = np.frictionEquations[i];
				f.setSlipForce(f.getSlipForce() / (numFrictionEquations as f32));
			}
		}
	}
}

function setGlobalEquationParams(world: World, relaxation: f32, stiffness: f32): void {
	let constraints = world.constraints;
	for(let i: i32 = 0; i < constraints.length; i++){
		let c = constraints[i];
		let eqs = c.equations;
		for(let j: i32 = 0; j < eqs.length; j++){
			let eq = eqs[j];
			eq.relaxation = relaxation != -1 ? relaxation : eq.relaxation;
			eq.stiffness = stiffness != -1 ? stiffness : eq.stiffness;
			eq.needsUpdate = true;
		}
	}
}

export class WorldOptions{
	gravity: Float32Array|null = null;
	islandSplit: boolean = true;
}

export default class World extends EventEmitter{

	/**
	 * All springs in the world. To add a spring to the world, use {{#crossLink "World/addSpring:method"}}{{/crossLink}}.
	 *
	 * @property springs
	 * @type {Array}
	 */
	springs: Spring[] = [];

	/**
	 * All bodies in the world. To add a body to the world, use {{#crossLink "World/addBody:method"}}{{/crossLink}}.
	 * @property {Array} bodies
	 */
	bodies: Body[] = [];

	/**
	 * Disabled body collision pairs. See {{#crossLink "World/disableBodyCollision:method"}}.
	 * @private
	 * @property {Array} disabledBodyCollisionPairs
	 */
	disabledBodyCollisionPairs: Array<Body> = [];

	/**
	 * The solver used to satisfy constraints and contacts. Default is {{#crossLink "GSSolver"}}{{/crossLink}}.
	 * @property {Solver} solver
	 */
	solver: Solver = new GSSolver(null);

	/**
	 * The narrowphase to use to generate contacts.
	 *
	 * @property narrowphase
	 * @type {Narrowphase}
	 */
	narrowphase: Narrowphase = new Narrowphase();

	/**
	 * Gravity in the world. This is applied on all bodies in the beginning of each step().
	 *
	 * @property gravity
	 * @type {Array}
	 */
	gravity: Float32Array = vec2.fromValues(0, -9.78);

	/**
	 * Gravity to use when approximating the friction max force (mu*mass*gravity).
	 * @property {Number} frictionGravity
	 */
	frictionGravity: f32 = 10;

	/**
	 * Set to true if you want .frictionGravity to be automatically set to the length of .gravity.
	 * @property {boolean} useWorldGravityAsFrictionGravity
	 * @default true
	 */
	useWorldGravityAsFrictionGravity: boolean = true;

	/**
	 * If the length of .gravity is zero, and .useWorldGravityAsFrictionGravity=true, then switch to using .frictionGravity for friction instead. This fallback is useful for gravityless games.
	 * @property {boolean} useFrictionGravityOnZeroGravity
	 * @default true
	 */
	useFrictionGravityOnZeroGravity: boolean = true;

	/**
	 * The broadphase algorithm to use.
	 *
	 * @property broadphase
	 * @type {Broadphase}
	 */
	broadphase: Broadphase = new SAPBroadphase();

	/**
	 * User-added constraints.
	 *
	 * @property constraints
	 * @type {Array}
	 */
	constraints: Constraint[] = [];

	/**
	 * Dummy default material in the world, used in .defaultContactMaterial
	 * @property {Material} defaultMaterial
	 */
	defaultMaterial: Material = new Material();

	/**
	 * The default contact material to use, if no contact material was set for the colliding materials.
	 * @property {ContactMaterial} defaultContactMaterial
	 */
	defaultContactMaterial: ContactMaterial|null = null;

	/**
	 * For keeping track of what time step size we used last step
	 * @property lastTimeStep
	 * @type {Number}
	 */
	lastTimeStep: f32 = 1/60;

	/**
	 * Enable to automatically apply spring forces each step.
	 * @property applySpringForces
	 * @type {boolean}
	 * @default true
	 */
	applySpringForces: boolean = true;

	/**
	 * Enable to automatically apply body damping each step.
	 * @property applyDamping
	 * @type {boolean}
	 * @default true
	 */
	applyDamping: boolean = true;

	/**
	 * Enable to automatically apply gravity each step.
	 * @property applyGravity
	 * @type {boolean}
	 * @default true
	 */
	applyGravity: boolean = true;

	/**
	 * Enable/disable constraint solving in each step.
	 * @property solveConstraints
	 * @type {boolean}
	 * @default true
	 */
	solveConstraints: boolean = true;

	/**
	 * The ContactMaterials added to the World.
	 * @property contactMaterials
	 * @type {Array}
	 */
	contactMaterials: Array<ContactMaterial> = [];

	/**
	 * World time.
	 * @property time
	 * @type {Number}
	 */
	time: f32 = 0.0;

	accumulator: f32 = 0;

	/**
	 * Is true during step().
	 * @property {boolean} stepping
	 */
	stepping: boolean = false;

	/**
	 * Whether to enable island splitting. Island splitting can be an advantage for both precision and performance.
	 * @property {boolean} islandSplit
	 * @default false
	 */
	islandSplit: boolean = true;

	/**
	 * Set to true if you want to the world to emit the "impact" event. Turning this off could improve performance.
	 * @property emitImpactEvent
	 * @type {boolean}
	 * @default true
	 * @deprecated Impact event will be removed. Use beginContact instead.
	 */
	emitImpactEvent: boolean = true;

	/**
	 * How to deactivate bodies during simulation. Possible modes are: {{#crossLink "World/NO_SLEEPING:property"}}World.NO_SLEEPING{{/crossLink}}, {{#crossLink "World/BODY_SLEEPING:property"}}World.BODY_SLEEPING{{/crossLink}} and {{#crossLink "World/ISLAND_SLEEPING:property"}}World.ISLAND_SLEEPING{{/crossLink}}.
	 * If sleeping is enabled, you might need to {{#crossLink "Body/wakeUp:method"}}wake up{{/crossLink}} the bodies if they fall asleep when they shouldn't. If you want to enable sleeping in the world, but want to disable it for a particular body, see {{#crossLink "Body/allowSleep:property"}}Body.allowSleep{{/crossLink}}.
	 * @property sleepMode
	 * @type {number}
	 * @default World.NO_SLEEPING
	 */
	sleepMode: u16 = World.NO_SLEEPING;

	/**
	 * @property {UnionFind} unionFind
	 */
	unionFind: UnionFind = new UnionFind(1);

	// Id counters
	private _constraintIdCounter: u32 = 0;
	private _bodyIdCounter: u32 = 0;

	/**
	 * @property {OverlapKeeper} overlapKeeper
	 */
	overlapKeeper: OverlapKeeper = new OverlapKeeper();

	// Special non-static events.
	addBodyEvent: AddBodyEvent = new AddBodyEvent();
	removeBodyEvent: RemoveBodyEvent = new RemoveBodyEvent();

	/**
	 * The dynamics world, where all bodies and constraints live.
	 *
	 * @class World
	 * @constructor
	 * @param {Object} [options]
	 * @param {Solver} [options.solver] Defaults to GSSolver.
	 * @param {Array} [options.gravity] Defaults to y=-9.78.
	 * @param {Broadphase} [options.broadphase] Defaults to SAPBroadphase
	 * @param {boolean} [options.islandSplit=true]
	 * @extends EventEmitter
	 *
	 * @example
	 *     let world = new World({
	 *         gravity: [0, -10],
	 *         broadphase: new SAPBroadphase()
	 *     });
	 *     world.addBody(new Body());
	 */
	constructor(options: WorldOptions){
		super();

		if(options){
			if(options.gravity) vec2.copy(this.gravity, options.gravity!);
			this.islandSplit = options.islandSplit;
		}
	
		this.frictionGravity = vec2.length(this.gravity) || 10;
		this.broadphase.setWorld(this);
		this.defaultContactMaterial = new ContactMaterial(this.defaultMaterial, this.defaultMaterial, null);

		this.addBodyEvent.sapBroadphase = this.broadphase as SAPBroadphase;
		this.removeBodyEvent.sapBroadphase = this.broadphase as SAPBroadphase;
	}

	/**
	 * Never deactivate bodies.
	 * @static
	 * @property {number} NO_SLEEPING
	 */
	static NO_SLEEPING: u16 = 1;

	/**
	 * Deactivate individual bodies if they are sleepy.
	 * @static
	 * @property {number} BODY_SLEEPING
	 */
	static BODY_SLEEPING: u16 = 2;

	/**
	 * Deactivates bodies that are in contact, if all of them are sleepy. Note that you must enable {{#crossLink "World/islandSplit:property"}}.islandSplit{{/crossLink}} for this to work.
	 * @static
	 * @property {number} ISLAND_SLEEPING
	 */
	static ISLAND_SLEEPING: u16 = 4;

	/**
	 * Add a constraint to the simulation. Note that both bodies connected to the constraint must be added to the world first. Also note that you can't run this method during step.
	 *
	 * @method addConstraint
	 * @param {Constraint} constraint
	 * @example
	 *     let constraint = new LockConstraint(bodyA, bodyB);
	 *     world.addConstraint(constraint);
	 */
	addConstraint(constraint: Constraint): void{
		if(this.stepping){
			throw new Error('Constraints cannot be added during step.');
		}

		let bodies = this.bodies;
		if(bodies.indexOf(constraint.bodyA) === -1){
			throw new Error('Cannot add Constraint: bodyA is not added to the World.');
		}
		if(bodies.indexOf(constraint.bodyB) === -1){
			throw new Error('Cannot add Constraint: bodyB is not added to the World.');
		}

		this.constraints.push(constraint);
	}

	/**
	 * Add a ContactMaterial to the simulation.
	 * @method addContactMaterial
	 * @param {ContactMaterial} contactMaterial
	 */
	addContactMaterial(contactMaterial: ContactMaterial): void{
		this.contactMaterials.push(contactMaterial);
	}

	/**
	 * Removes a contact material
	 *
	 * @method removeContactMaterial
	 * @param {ContactMaterial} cm
	 */
	removeContactMaterial(cm: ContactMaterial): void{
		Utils.arrayRemove(this.contactMaterials, cm);
	}

	/**
	 * Get a contact material given two materials
	 * @method getContactMaterial
	 * @param {Material} materialA
	 * @param {Material} materialB
	 * @return {ContactMaterial} The matching ContactMaterial, or false on fail.
	 * @todo Use faster hash map to lookup from material id's
	 */
	getContactMaterial(materialA: Material,materialB: Material): ContactMaterial | null{
		let cmats = this.contactMaterials;
		for(let i: i32 = 0, N: i32 = cmats.length; i< N; i++){
			let cm = cmats[i];
			if((cm.materialA === materialA && cm.materialB === materialB) || (cm.materialA === materialB && cm.materialB === materialA)){
				return cm;
			}
		}
		return null;
	}

	/**
	 * Removes a constraint. Note that you can't run this method during step.
	 *
	 * @method removeConstraint
	 * @param {Constraint} constraint
	 */
	removeConstraint(constraint: Constraint): void{
		if(this.stepping){
			throw new Error('Constraints cannot be removed during step.');
		}
		Utils.arrayRemove(this.constraints, constraint);
	}

	/**
	 * Step the physics world forward in time.
	 *
	 * There are two modes. The simple mode is fixed timestepping without interpolation. In this case you only use the first argument. The second case uses interpolation. In that you also provide the time since the function was last used, as well as the maximum fixed timesteps to take.
	 *
	 * @method step
	 * @param {Number} dt                       The fixed time step size to use.
	 * @param {Number} [timeSinceLastCalled=0]  The time elapsed since the function was last called.
	 * @param {Number} [maxSubSteps=10]         Maximum number of fixed steps to take per function call.
	 *
	 * @example
	 *     // Simple fixed timestepping without interpolation
	 *     let fixedTimeStep = 1 / 60;
	 *     let world = new World();
	 *     let body = new Body({ mass: 1 });
	 *     world.addBody(body);
	 *
	 *     function animate(){
	 *         requestAnimationFrame(animate);
	 *         world.step(fixedTimeStep);
	 *         renderBody(body.position, body.angle);
	 *     }
	 *
	 *     // Start animation loop
	 *     requestAnimationFrame(animate);
	 *
	 * @example
	 *     // Fixed timestepping with interpolation
	 *     let maxSubSteps = 10;
	 *     let lastTimeSeconds;
	 *
	 *     function animate(time){
	 *         requestAnimationFrame(animate);
	 *         let timeSeconds = time / 1000;
	 *
	 *         if(lastTimeSeconds){
	 *             let deltaTime = timeSeconds - lastTimeSeconds;
	 *             world.step(fixedTimeStep, deltaTime, maxSubSteps);
	 *         }
	 *
	 *         lastTimeSeconds = timeSeconds;
	 *
	 *         renderBody(body.interpolatedPosition, body.interpolatedAngle);
	 *     }
	 *
	 *     // Start animation loop
	 *     requestAnimationFrame(animate);
	 *
	 * @see http://bulletphysics.org/mediawiki-1.5.8/index.php/Stepping_The_World
	 */
	step(dt: f32,timeSinceLastCalled: f32, maxSubSteps: u16): void {
		maxSubSteps = maxSubSteps || 10;
		timeSinceLastCalled = timeSinceLastCalled || 0;

		if(timeSinceLastCalled === 0){ // Fixed, simple stepping

			this.internalStep(dt);

			// Increment time
			this.time += dt;

		} else {

			this.accumulator += timeSinceLastCalled;
			let substeps: u16 = 0;
			while (this.accumulator >= dt && substeps < maxSubSteps) {
				// Do fixed steps to catch up
				this.internalStep(dt);
				this.time += dt;
				this.accumulator -= dt;
				substeps++;
			}

			let t = (this.accumulator % dt) / dt;
			for(let j: i32 = 0; j < this.bodies.length; j++){
				let b = this.bodies[j];
				vec2.lerp(b.interpolatedPosition, b.previousPosition, b.position, t);
				b.interpolatedAngle = b.previousAngle + t * (b.angle - b.previousAngle);
			}
		}
	}

	/**
	 * Make a fixed step.
	 * @method internalStep
	 * @param  {number} dt
	 * @private
	 */
	internalStep(dt: f32): void{

		let step_mg = vec2.create();

		let endOverlaps: OverlapKeeperRecord[] = [];

		this.stepping = true;

		let Nsprings: u16 = this.springs.length as u16,
			springs: Spring[] = this.springs,
			bodies: Body[] = this.bodies,
			g: Float32Array = this.gravity,
			solver: Solver = this.solver,
			Nbodies: u16 = this.bodies.length as u16,
			broadphase: Broadphase = this.broadphase,
			np: Narrowphase = this.narrowphase,
			constraints: Constraint[] = this.constraints,
			mg: Float32Array = step_mg;

		this.overlapKeeper.tick();

		this.lastTimeStep = dt;

		// Update approximate friction gravity.
		if(this.useWorldGravityAsFrictionGravity){
			let gravityLen = vec2.length(this.gravity);
			if(!(gravityLen === 0 && this.useFrictionGravityOnZeroGravity)){
				// Nonzero gravity. Use it.
				this.frictionGravity = gravityLen;
			}
		}

		// Add gravity to bodies
		if(this.applyGravity){
			for(let i: u16 = 0; i < Nbodies; i++){
				let b = bodies[i],
					fi = b.force;
				if(b.type !== Body.DYNAMIC || b.sleepState === Body.SLEEPING){
					continue;
				}
				vec2.scale(mg, g, b.mass * b.gravityScale); // F=m*g
				vec2.add(fi,fi,mg);
			}
		}

		// Add spring forces
		if(this.applySpringForces){
			for(let i: u16 = 0; i < Nsprings; i++){
				let s = springs[i];
				s.applyForce();
			}
		}

		if(this.applyDamping){
			for(let i: u16 = 0; i < Nbodies; i++){
				let b = bodies[i];
				if(b.type === Body.DYNAMIC){
					b.applyDamping(dt);
				}
			}
		}

		// Broadphase
		let result: Body[] = broadphase.getCollisionPairs();

		// Remove ignored collision pairs
		let ignoredPairs = this.disabledBodyCollisionPairs;
		for(let i: i32 = ignoredPairs.length - 2; i >=0; i -= 2){
			for(let j: i32 = result.length - 2; j >= 0; j -= 2){
				if( (ignoredPairs[i]   === result[j] && ignoredPairs[i+1] === result[j+1]) ||
					(ignoredPairs[i+1] === result[j] && ignoredPairs[i]   === result[j+1])){
					result.splice(j,2);
				}
			}
		}

		// Remove constrained pairs with collideConnected == false
		let Nconstraints = constraints.length;
		for(let i: u16 = 0; i!==Nconstraints; i++){
			let c = constraints[i];
			if(!c.collideConnected){
				for(let j: i32 = result.length - 2; j >= 0; j -= 2){
					if( (c.bodyA === result[j] && c.bodyB === result[j+1]) ||
						(c.bodyB === result[j] && c.bodyA === result[j+1])){
						result.splice(j,2);
					}
				}
			}
		}

		// postBroadphase event
		postBroadphaseEvent.pairs = result;
		this.emit(postBroadphaseEvent);
		postBroadphaseEvent.pairs = null;

		// Narrowphase
		np.reset();
		let defaultContactMaterial = this.defaultContactMaterial!;
		let frictionGravity = this.frictionGravity;
		for(let i: u16 = 0, Nresults = (result.length as u16); i !== Nresults; i+=2){
			let bi = result[i],
				bj = result[i+1];

			// Loop over all shapes of body i
			for(let k=0, Nshapesi=bi.shapes.length; k!==Nshapesi; k++){
				let si = bi.shapes[k],
					xi = si.position,
					ai = si.angle;

				// All shapes of body j
				for(let l=0, Nshapesj=bj.shapes.length; l!==Nshapesj; l++){
					let sj = bj.shapes[l],
						xj = sj.position,
						aj = sj.angle;

					let contactMaterial: ContactMaterial | null = null;
					if(si.material && sj.material){
						contactMaterial = this.getContactMaterial(si.material!, sj.material!);
					}

					runNarrowphase(this,np,bi,si,xi,ai,bj,sj,xj,aj,(contactMaterial || defaultContactMaterial)!, frictionGravity);
				}
			}
		}

		// Wake up bodies
		for(let i: u16 = 0; i < Nbodies; i++){
			let body = bodies[i];
			if(body._wakeUpAfterNarrowphase){
				body.wakeUp();
				body._wakeUpAfterNarrowphase = false;
			}
		}

		// Emit end overlap events
		if(super.has("endContact", null)){
			this.overlapKeeper.getEndOverlaps(endOverlaps);
			let e = endContactEvent;
			let l = endOverlaps.length;
			while(l--){
				let data = endOverlaps[l];
				e.shapeA = data.shapeA;
				e.shapeB = data.shapeB;
				e.bodyA = data.bodyA;
				e.bodyB = data.bodyB;
				this.emit(e);
			}
			endOverlaps.length = 0;
		}

		preSolveEvent.contactEquations = np.contactEquations;
		preSolveEvent.frictionEquations = np.frictionEquations;
		this.emit(preSolveEvent);
		preSolveEvent.contactEquations = null;
		preSolveEvent.frictionEquations = null;

		// update constraint equations
		Nconstraints = constraints.length;

		for(let i: i32 = 0; i < Nconstraints; i++){
			constraints[i].update();
		}

		if(np.contactEquations.length || np.frictionEquations.length || Nconstraints){

			// Get all equations
			let equations: Equation[] = [];

			for (let i: i32 = 0, len = np.contactEquations.length; i < len; i++) {
				equations.push(np.contactEquations[i]);
			}
			for (let i: i32 = 0, len = np.frictionEquations.length; i < len; i++) {
				equations.push(np.frictionEquations[i]);
			}

			for(let i: i32 = 0; i < Nconstraints; i++){
				let a = constraints[i].equations;
				for (let j: i32 = 0, len = a.length; j < len; j++) {
					equations.push(a[j]);
				}
			}

			if(this.islandSplit){

				// Initialize the UnionFind
				let unionFind = this.unionFind;
				unionFind.resize(this.bodies.length + 1);

				// Update equation index
				for(let i: u16 = 0; i < (equations.length as u16); i++){
					equations[i].index = i;
				}

				// Unite bodies if they are connected by an equation
				for(let i: u16 = 0; i < (equations.length as u16); i++){
					let bodyA = equations[i].bodyA;
					let bodyB = equations[i].bodyB;
					if(!bodyA || !bodyB) continue;
					if(bodyA.type === Body.DYNAMIC && bodyB.type === Body.DYNAMIC){
						unionFind.union(bodyA.index, bodyB.index);
					}
				}

				// Find the body islands
				for(let i: u16 = 0; i < (bodies.length as u16); i++){
					let body = bodies[i];
					body.islandId = body.type == Body.DYNAMIC ? unionFind.find(body.index) : -1;
				}

				// Sort equations by island
				equations = equations.sort(sortEquationsByIsland);

				let equationIndex = 0;
				while(equationIndex < equations.length){
					let equation = equations[equationIndex++];
					solver.addEquation(equation);
					if(!equation.bodyA || !equation.bodyB) continue;
					let currentIslandId: i32 = equation.bodyA!.islandId > 0 ? equation.bodyA!.islandId : equation.bodyB!.islandId;
					let nextIslandId: i32 = -1;

					nextIslandId = equation.bodyA!.islandId > 0 ? equation.bodyA!.islandId : equation.bodyB!.islandId;
					if(nextIslandId < 0) nextIslandId = 0;

					if(nextIslandId !== currentIslandId || equationIndex === equations.length){
						// Solve this island
						if(this.solveConstraints){
							solver.solve(dt,this);
						}
						solver.removeAllEquations();
					}
				}

			} else {

				// Solve all as one island
				solver.addEquations(equations);
				if(this.solveConstraints){
					solver.solve(dt,this);
				}
				solver.removeAllEquations();

			}
		}

		// Step forward
		for(let i: u16 =0; i < Nbodies; i++){
			let body = bodies[i];
			if(body.type === Body.DYNAMIC || body.type === Body.KINEMATIC){
				body.integrate(dt);
			}
		}

		// Reset force
		for(let i: u16 =0; i < Nbodies; i++){
			bodies[i].setZeroForce();
		}

		// Emit impact event
		if(this.emitImpactEvent && this.has("impact", null)){
			let ev = impactEvent;
			for(let i: u16 = 0; i < (np.contactEquations.length as u16); i++){
				let eq = np.contactEquations[i];
				if(eq.firstImpact){
					ev.bodyA = eq.bodyA;
					ev.bodyB = eq.bodyB;
					ev.shapeA = eq.shapeA;
					ev.shapeB = eq.shapeB;
					ev.contactEquation = eq;
					this.emit(ev);
				}
			}
		}

		// Sleeping update
		if(this.sleepMode === World.BODY_SLEEPING){

			for(let i: u16 = 0; i < Nbodies; i++){
				bodies[i].sleepTick(this.time, false, dt);
			}

		} else if(this.sleepMode === World.ISLAND_SLEEPING && this.islandSplit){

			// Tell all bodies to sleep tick but dont sleep yet
			for(let i: u16 = 0; i < Nbodies; i++){
				bodies[i].sleepTick(this.time, true, dt);
			}

			// Sleep islands
			let bodiesSortedByIsland = bodies.sort(sortBodiesByIsland);
			let islandEnd: i32 = 1;
			for(let islandStart: i32 = 0; islandStart < bodiesSortedByIsland.length; islandStart = islandEnd){
				let islandId = bodiesSortedByIsland[islandStart].islandId;

				// Get islandEnd index
				/* jshint ignore:start */
				for(islandEnd = islandStart+1; islandEnd < bodiesSortedByIsland.length && bodiesSortedByIsland[islandEnd].islandId === islandId; islandEnd++){}
				/* jshint ignore:end */

				// Don't check static objects
				if(islandId === -1){
					continue;
				}

				let islandShouldSleep = true;
				for(let i: i32 = islandStart; i<islandEnd; i++){
					if(!bodiesSortedByIsland[i].wantsToSleep){
						islandShouldSleep = false;
						break;
					}
				}
				if(islandShouldSleep){
					for(let i: i32 = islandStart; i<islandEnd; i++){
						bodiesSortedByIsland[i].sleep();
					}
				}
			}
		}

		this.stepping = false;

		super.emit(postStepEvent);
	}

	/**
	 * Add a spring to the simulation. Note that this operation can't be done during step.
	 *
	 * @method addSpring
	 * @param {Spring} spring
	 */
	addSpring(spring: Spring): void{
		if(this.stepping){
			throw new Error('Springs cannot be added during step.');
		}
		this.springs.push(spring);
		addSpringEvent.spring = spring;
		this.emit(addSpringEvent);
		addSpringEvent.spring = null;
	}

	/**
	 * Remove a spring. Note that this operation can't be done during step.
	 *
	 * @method removeSpring
	 * @param {Spring} spring
	 */
	removeSpring(spring: Spring): void{
		if(this.stepping){
			throw new Error('Springs cannot be removed during step.');
		}
		Utils.arrayRemove(this.springs, spring);
	}

	/**
	 * Add a body to the simulation. Note that you can't add a body during step: you have to wait until after the step (see the postStep event).
	 * Also note that bodies can only be added to one World at a time.
	 *
	 * @method addBody
	 * @param {Body} body
	 *
	 * @example
	 *     let world = new World(),
	 *         body = new Body();
	 *     world.addBody(body);
	 */
	addBody(body: Body): void{
		if(this.stepping){
			throw new Error('Bodies cannot be added during step.');
		}

		// Already added?
		if(body.world){
			throw new Error('Body is already added to a World.');
		}

		body.index = this.bodies.length;
		this.bodies.push(body);
		body.world = this;

		this.addBodyEvent.body = body;
		this.emit(this.addBodyEvent);
		this.addBodyEvent.body = null;
	}

	/**
	 * Remove a body from the simulation. Note that bodies cannot be removed during step (for example, inside the beginContact event). In that case you need to wait until the step is done (see the postStep event).
	 *
	 * Also note that any constraints connected to the body must be removed before the body.
	 *
	 * @method removeBody
	 * @param {Body} body
	 *
	 * @example
	 *     let removeBody;
	 *     world.on("beginContact",function(event){
	 *         // We cannot remove the body here since the world is still stepping.
	 *         // Instead, schedule the body to be removed after the step is done.
	 *         removeBody = body;
	 *     });
	 *     world.on("postStep",function(event){
	 *         if(removeBody){
	 *             // Safely remove the body from the world.
	 *             world.removeBody(removeBody);
	 *             removeBody = null;
	 *         }
	 *     });
	 */
	removeBody(body: Body): void{
		if(this.stepping){
			throw new Error('Bodies cannot be removed during step.');
		}

		// TODO: would it be smart to have a .constraints array on the body?
		let constraints = this.constraints;
		let l: i32 = constraints.length;
		while (l--) {
			if(constraints[l].bodyA === body || constraints[l].bodyB === body){
				throw new Error('Cannot remove Body from World: it still has constraints connected to it.');
			}
		}

		body.world = null;
		let bodies = this.bodies;
		Utils.arrayRemove(bodies, body);
		body.index = -1;
		l = bodies.length;
		while (l--) {
			bodies[l].index = l;
		}

		// Emit removeBody event
		this.removeBodyEvent.body = body;
		body.resetConstraintVelocity();
		this.emit(this.removeBodyEvent);
		this.removeBodyEvent.body = null;

		// Remove disabled body collision pairs that involve body
		let pairs = this.disabledBodyCollisionPairs;
		let i = 0;
		while (i < pairs.length) {
			if (pairs[i] === body || pairs[i + 1] === body) {
				pairs.splice(i, 2);
			} else {
				i += 2;
			}
		}
	}

	/**
	 * Get a body by its id.
	 * @method getBodyById
	 * @param {number} id
	 * @return {Body} The body, or false if it was not found.
	 */
	getBodyById(id: u16): Body|null{
		let bodies = this.bodies;
		for(let i: i32 = 0; i<bodies.length; i++){
			let b = bodies[i];
			if(b.id === id){
				return b;
			}
		}
		return null;
	}

	/**
	 * Disable collision between two bodies
	 * @method disableBodyCollision
	 * @param {Body} bodyA
	 * @param {Body} bodyB
	 */
	disableBodyCollision(bodyA: Body, bodyB: Body): void{
		this.disabledBodyCollisionPairs.push(bodyA);
		this.disabledBodyCollisionPairs.push(bodyB);
	}

	/**
	 * Enable collisions between the given two bodies, if they were previously disabled using .disableBodyCollision().
	 * @method enableBodyCollision
	 * @param {Body} bodyA
	 * @param {Body} bodyB
	 */
	enableBodyCollision(bodyA: Body,bodyB: Body): void{
		let pairs = this.disabledBodyCollisionPairs;
		for(let i: i32 = 0; i<pairs.length; i+=2){
			if((pairs[i] === bodyA && pairs[i+1] === bodyB) || (pairs[i+1] === bodyA && pairs[i] === bodyB)){
				pairs.splice(i,2);
				return;
			}
		}
	}

	/**
	 * Removes all bodies, constraints, springs, and contact materials from the world.
	 * @method clear
	 */
	clear(): void
	{

		// Remove all solver equations
		this.solver.removeAllEquations();

		// Remove all constraints
		let cs = this.constraints;
		let i = cs.length;
		while(i--){
			this.removeConstraint(cs[i]);
		}

		// Remove all bodies
		let bodies = this.bodies;
		i = bodies.length;
		while(i--){
			this.removeBody(bodies[i]);
		}

		// Remove all springs
		let springs = this.springs;
		i = springs.length;
		while(i--){
			this.removeSpring(springs[i]);
		}

		// Remove all contact materials
		let cms = this.contactMaterials;
		i = cms.length;
		while(i--){
			this.removeContactMaterial(cms[i]);
		}
	}


	/**
	 * Test if a world point overlaps bodies
	 * @method hitTest
	 * @param  {Array} worldPoint Point to use for intersection tests
	 * @param  {Array} bodies A list of objects to check for intersection
	 * @param  {Number} precision Used for matching against particles and lines. Adds some margin to these infinitesimal objects.
	 * @return {Array} Array of bodies that overlap the point
	 * @todo Should use an api similar to the raycast function
	 * @todo Should probably implement a .containsPoint method for all shapes. Would be more efficient
	 * @todo Should use the broadphase
	 * @todo Returning the hit shape would be fine - it carries a reference to the body now
	 */
	hitTest(worldPoint: Float32Array, bodies: Body[], precision: f32): Body[]{

		precision = precision || 0;

		// Create a dummy particle body with a particle shape to test against the bodies
		let shapeWorldPosition = hitTest_tmp1,
			shapeLocalPoint = hitTest_tmp2;

		let result: Body[] = [];

		// Check bodies
		for(let i: i32 = 0, N = bodies.length; i!==N; i++){
			let body = bodies[i];

			for(let j: i32 = 0, NS = body.shapes.length; j!==NS; j++){
				let shape = body.shapes[j];

				// Get local point position in the shape
				shape.worldPointToLocal(shapeLocalPoint, worldPoint);

				if(shape.pointTest(shapeLocalPoint)){
					result.push(body);
				} else {

					// Get shape world position
					vec2.rotate(shapeWorldPosition, shape.position, body.angle);
					vec2.add(shapeWorldPosition, shapeWorldPosition, body.position);

					if(shape.type === Shape.PARTICLE && vec2.squaredDistance(shapeWorldPosition, worldPoint) < precision * precision){
						result.push(body);
					}
				}
			}
		}

		return result;
	}

	/**
	 * Set the stiffness for all equations and contact materials.
	 * @method setGlobalStiffness
	 * @param {Number} stiffness
	 */
	setGlobalStiffness(stiffness: f32): void{
		setGlobalEquationParams(this, -1, stiffness);

		// Set for all contact materials
		let contactMaterials = this.contactMaterials;
		for(let i: i32 = 0; i !== contactMaterials.length; i++){
			let c = contactMaterials[i];
			c.stiffness = c.frictionStiffness = stiffness;
		}

		// Set for default contact material
		let c = this.defaultContactMaterial!;
		c.stiffness = c.frictionStiffness = stiffness;
	}

	/**
	 * Set the relaxation for all equations and contact materials.
	 * @method setGlobalRelaxation
	 * @param {Number} relaxation
	 */
	setGlobalRelaxation(relaxation: f32): void{
		setGlobalEquationParams(this, relaxation, -1);

		// Set for all contact materials
		for(let i: i32 = 0; i !== this.contactMaterials.length; i++){
			let c = this.contactMaterials[i];
			c.relaxation = c.frictionRelaxation = relaxation;
		}

		// Set for default contact material
		let c = this.defaultContactMaterial!;
		c.relaxation = c.frictionRelaxation = relaxation;
	}

	/**
	 * Ray cast against all bodies in the world.
	 * @method raycast
	 * @param  {RaycastResult} result
	 * @param  {Ray} ray
	 * @return {boolean} True if any body was hit.
	 *
	 * @example
	 *     let ray = new Ray({
	 *         mode: Ray.CLOSEST, // or ANY
	 *         from: [0, 0],
	 *         to: [10, 0],
	 *     });
	 *     let result = new RaycastResult();
	 *     world.raycast(result, ray);
	 *
	 *     // Get the hit point
	 *     let hitPoint = vec2.create();
	 *     result.getHitPoint(hitPoint, ray);
	 *     console.log('Hit point: ', hitPoint[0], hitPoint[1], ' at distance ' + result.getHitDistance(ray));
	 *
	 * @example
	 *     let ray = new Ray({
	 *         mode: Ray.ALL,
	 *         from: [0, 0],
	 *         to: [10, 0],
	 *         callback: function(result){
	 *
	 *             // Print some info about the hit
	 *             console.log('Hit body and shape: ', result.body, result.shape);
	 *
	 *             // Get the hit point
	 *             let hitPoint = vec2.create();
	 *             result.getHitPoint(hitPoint, ray);
	 *             console.log('Hit point: ', hitPoint[0], hitPoint[1], ' at distance ' + result.getHitDistance(ray));
	 *
	 *             // If you are happy with the hits you got this far, you can stop the traversal here:
	 *             result.stop();
	 *         }
	 *     });
	 *     let result = new RaycastResult();
	 *     world.raycast(result, ray);
	 */
	raycast(result: RaycastResult, ray: Ray): boolean{

		let tmpAABB:AABB = new AABB(null, null);
		let tmpArray:Body[] = [];

		// Get all bodies within the ray AABB
		ray.getAABB(tmpAABB);
		this.broadphase.aabbQuery(tmpAABB, tmpArray);
		ray.intersectBodies(result, tmpArray);
		tmpArray.length = 0;

		return result.hasHit();
	}
}
