//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import vec2 from "../math/vec2";

import Circle from "../shapes/circle";
import { CircleOptions } from "../shapes/circle";
import Convex from "../shapes/convex";
import Shape from "../shapes/shape";
import Box from "../shapes/box";
import { BoxOptions } from "../shapes/box";
import ContactMaterial from "../material/contact-material";
import Body from "../objects/body";
import Equation from "../equations/equation";
import ContactEquation from "../equations/contact-equation";
import Capsule from "../shapes/capsule";
import Plane from "../shapes/plane";
import Line from "../shapes/line";
import Particle from "../shapes/particle";
import Heightfield from "../shapes/heightfield";
import ContactEquationPool from "../utils/contact-equation-pool";
import FrictionEquationPool from "../utils/friction-equation-pool";
import TupleDictionary from "../utils/tuple-dictionary";
import FrictionEquation from "../equations/friction-equation";

var yAxis = vec2.fromValues(0,1);
var tmp1 = vec2.create()
,   tmp2 = vec2.create()
,   tmp3 = vec2.create()
,   tmp4 = vec2.create()
,   tmp5 = vec2.create()
,   tmp6 = vec2.create()
,   tmp7 = vec2.create()
,   tmp8 = vec2.create()
,   tmp9 = vec2.create()
,   tmp10 = vec2.create()
,   tmp11 = vec2.create()
,   tmp12 = vec2.create()
,   tmp13 = vec2.create()
,   tmp14 = vec2.create()
,   tmp15 = vec2.create()
,   tmpArray: Array<Float32Array> = [];


var findMaxSeparation_n = vec2.create();
var findMaxSeparation_v1 = vec2.create();
var findMaxSeparation_tmp = vec2.create();
var findMaxSeparation_tmp2 = vec2.create();

var findIncidentEdge_normal1 = vec2.create();

var collidePolygons_tempVec = vec2.create();
var collidePolygons_tmpVec = vec2.create();
var collidePolygons_localTangent = vec2.create();
var collidePolygons_localNormal = vec2.create();
var collidePolygons_planePoint = vec2.create();
var collidePolygons_tangent = vec2.create();
var collidePolygons_normal = vec2.create();
var collidePolygons_negativeTangent = vec2.create();
var collidePolygons_v11 = vec2.create();
var collidePolygons_v12 = vec2.create();
var collidePolygons_dist = vec2.create();
var collidePolygons_clipPoints1 = [vec2.create(), vec2.create()];
var collidePolygons_clipPoints2 = [vec2.create(), vec2.create()];
var collidePolygons_incidentEdge = [vec2.create(), vec2.create()];

var pic_localPoint = vec2.create(),
	pic_r0 = vec2.create(),
	pic_r1 = vec2.create();

var bodiesOverlap_shapePositionA = vec2.create(),
	bodiesOverlap_shapePositionB = vec2.create();

var capsuleCapsule_tempVec1 = vec2.create(),
	capsuleCapsule_tempVec2 = vec2.create();

var convexCapsule_tempVec = vec2.create();

var planeCapsule_tmp1 = vec2.create(), 
	planeCapsule_tmp2 = vec2.create();

var circleHeightfield_candidate = vec2.create(),
	circleHeightfield_dist = vec2.create(),
	circleHeightfield_v0 = vec2.create(),
	circleHeightfield_v1 = vec2.create(),
	circleHeightfield_minCandidate = vec2.create(),
	circleHeightfield_worldNormal = vec2.create(),
	circleHeightfield_minCandidateNormal = vec2.create();

var convexHeightfield_v0 = vec2.create(),
	convexHeightfield_v1 = vec2.create(),
	convexHeightfield_tilePos = vec2.create(),
	convexHeightfield_tempConvexShape = new Convex(0, [vec2.create(),vec2.create(),vec2.create(),vec2.create()], null );

function setConvexToCapsuleShapeMiddle(convexShape: Box, capsuleShape: Capsule): void{
	let capsuleRadius = capsuleShape.radius;
	let halfCapsuleLength = capsuleShape.length * 0.5;
	let verts = convexShape.vertices;
	vec2.set(verts[0], -halfCapsuleLength, -capsuleRadius);
	vec2.set(verts[1],  halfCapsuleLength, -capsuleRadius);
	vec2.set(verts[2],  halfCapsuleLength,  capsuleRadius);
	vec2.set(verts[3], -halfCapsuleLength,  capsuleRadius);
}

/*
* Check if a point is in a polygon
*/
function pointInConvex(worldPoint: Float32Array, convexShape: Convex, convexOffset: Float32Array, convexAngle: f32): boolean{



	let localPoint = pic_localPoint,
		r0 = pic_r0,
		r1 = pic_r1,
		verts = convexShape.vertices,
		lastCross: f32 = -1;

	vec2.toLocalFrame(localPoint, worldPoint, convexOffset, convexAngle);

	for(let i: i32 =0, numVerts=verts.length; i!==numVerts+1; i++){
		let v0: Float32Array = verts[i % numVerts],
			v1: Float32Array = verts[(i+1) % numVerts];

		vec2.subtract(r0, v0, localPoint);
		vec2.subtract(r1, v1, localPoint);

		let cross: f32 = vec2.crossLength(r0,r1);

		if(lastCross == -1){
			lastCross = cross;
		}

		// If we got a different sign of the distance vector, the point is out of the polygon
		if(cross*lastCross < 0){
			return false;
		}
		lastCross = cross;
	}
	return true;
}

/*
* Check if a point is in a polygon
*/
function pointInConvexLocal(localPoint: Float32Array, convexShape: Convex): boolean{
	let r0: Float32Array = pic_r0,
		r1: Float32Array = pic_r1,
		verts: Float32Array[] = convexShape.vertices,
		lastCross: f32 = -1,
		numVerts: i32 = verts.length;

	for(let i: i32 = 0; i < numVerts + 1; i++){
		let v0 = verts[i % numVerts],
			v1 = verts[(i + 1) % numVerts];

		vec2.subtract(r0, v0, localPoint);
		vec2.subtract(r1, v1, localPoint);

		let cross = vec2.crossLength(r0,r1);

		if(lastCross == -1){
			lastCross = cross;
		}

		// If we got a different sign of the distance vector, the point is out of the polygon
		if(cross * lastCross < 0){
			return false;
		}
		lastCross = cross;
	}
	return true;
}

function addSub(out: Float32Array, a: Float32Array, b: Float32Array, c: Float32Array): void{
	out[0] = a[0] + b[0] - c[0];
	out[1] = a[1] + b[1] - c[1];
}

function findMaxSeparation(maxSeparationOut: Float32Array, poly1: Convex, position1: Float32Array, angle1: f32, poly2: Convex, position2: Float32Array, angle2: f32): u32
{
	// Find the max separation between poly1 and poly2 using edge normals from poly1.

	let count1 = poly1.vertices.length;
	let count2 = poly2.vertices.length;
	let n1s = poly1.normals;
	let v1s = poly1.vertices;
	let v2s = poly2.vertices;

	let n = findMaxSeparation_n;
	let v1 = findMaxSeparation_v1;
	let tmp = findMaxSeparation_tmp;
	let tmp2 = findMaxSeparation_tmp2;

	let angle: f32 = angle1 - angle2;

	let bestIndex: u32 = 0;
	let maxSeparation: f32 = -Infinity;
	for (let i = 0; i < count1; ++i)
	{
		// Get poly1 normal in frame2.
		vec2.rotate(n, n1s[i], angle);

		// Get poly1 vertex in frame2
		vec2.toGlobalFrame(tmp2, v1s[i], position1, angle1);
		vec2.toLocalFrame(v1, tmp2, position2, angle2);

		// Find deepest point for normal i.
		let si: f32 = Infinity;
		for (let j = 0; j < count2; ++j)
		{
			vec2.subtract(tmp, v2s[j], v1);
			let sij = vec2.dot(n, tmp);
			if (sij < si)
			{
				si = sij;
			}
		}

		if (si > maxSeparation)
		{
			maxSeparation = si;
			bestIndex = i;
		}
	}

	// Use a vec2 for storing the float value and always return int, for perf
	maxSeparationOut[0] = maxSeparation;

	return bestIndex;
}

function findIncidentEdge(clipVerticesOut: Float32Array[], poly1: Convex, position1: Float32Array, angle1: f32, edge1: u32, poly2: Convex, position2: Float32Array, angle2: f32): void
{
	
	let normals1 = poly1.normals;
	let count2 = poly2.vertices.length;
	let vertices2 = poly2.vertices;
	let normals2 = poly2.normals;

	// Get the normal of the reference edge in poly2's frame.
	let normal1 = findIncidentEdge_normal1;
	vec2.rotate(normal1, normals1[edge1], angle1 - angle2);

	// Find the incident edge on poly2.
	let index = 0;
	let minDot = Infinity;
	for (let i = 0; i < count2; ++i)
	{
		let dot = vec2.dot(normal1, normals2[i]);
		if (dot < minDot)
		{
			minDot = dot;
			index = i;
		}
	}

	// Build the clip vertices for the incident edge.
	let i1 = index;
	let i2 = i1 + 1 < count2 ? i1 + 1 : 0;

	vec2.toGlobalFrame(clipVerticesOut[0], vertices2[i1], position2, angle2);
	vec2.toGlobalFrame(clipVerticesOut[1], vertices2[i2], position2, angle2);
}

function clipSegmentToLine(vOut: Float32Array[], vIn: Float32Array[], normal: Float32Array, offset: f32): u16
{
	// Start with no output points
	let numOut: u16 = 0;

	// Calculate the distance of end points to the line
	let distance0 = vec2.dot(normal, vIn[0]) - offset;
	let distance1 = vec2.dot(normal, vIn[1]) - offset;

	// If the points are behind the plane
	if (distance0 <= 0.0){
		vec2.copy(vOut[numOut++], vIn[0]);
	}
	if (distance1 <= 0.0){
		vec2.copy(vOut[numOut++], vIn[1]);
	}

	// If the points are on different sides of the plane
	if (distance0 * distance1 < 0.0)
	{
		// Find intersection point of edge and plane
		let interp = distance0 / (distance0 - distance1);
		let v = vOut[numOut];
		vec2.subtract(v, vIn[1], vIn[0]);
		vec2.scale(v, v, interp);
		vec2.add(v, v, vIn[0]);
		++numOut;
	}

	return numOut;
}

export default class Narrowphase{

	/**
	 * @property contactEquations
	 * @type {Array}
	 */
	contactEquations: Array<ContactEquation> = [];

	/**
	 * @property frictionEquations
	 * @type {Array}
	 */
	frictionEquations: Array<FrictionEquation> = [];

	/**
	 * Whether to make friction equations in the upcoming contacts.
	 * @property enableFriction
	 * @type {boolean}
	 */
	enableFriction: boolean = true;

	/**
	 * Whether to make equations enabled in upcoming contacts.
	 * @property enabledEquations
	 * @type {boolean}
	 */
	enabledEquations: boolean = true;

	/**
	 * The friction slip force to use when creating friction equations.
	 * @property slipForce
	 * @type {Number}
	 */
	slipForce: f32 = 10.0;

	/**
	 * Keeps track of the allocated ContactEquations.
	 * @property {ContactEquationPool} contactEquationPool
	 *
	 * @example
	 *
	 *     // Allocate a few equations before starting the simulation.
	 *     // This way, no contact objects need to be created on the fly in the game loop.
	 *     world.narrowphase.contactEquationPool.resize(1024);
	 *     world.narrowphase.frictionEquationPool.resize(1024);
	 */
	contactEquationPool: ContactEquationPool = new ContactEquationPool(32);

	/**
	 * Keeps track of the allocated ContactEquations.
	 * @property {FrictionEquationPool} frictionEquationPool
	 */
	frictionEquationPool: FrictionEquationPool = new FrictionEquationPool(64);

	/**
	 * Enable reduction of friction equations. If disabled, a box on a plane will generate 2 contact equations and 2 friction equations. If enabled, there will be only one friction equation. Same kind of simplifications are made  for all collision types.
	 * @property enableFrictionReduction
	 * @type {boolean}
	 * @deprecated This flag will be removed when the feature is stable enough.
	 * @default true
	 */
	enableFrictionReduction: boolean = true;

	/**
	 * Keeps track of the colliding bodies last step.
	 * @private
	 * @property collidingBodiesLastStep
	 * @type {TupleDictionary}
	 */
	collidingBodiesLastStep: TupleDictionary<u32> = new TupleDictionary();

	/**
	 * @property currentContactMaterial
	 * @type {ContactMaterial}
	 */
	currentContactMaterial: ContactMaterial|null = null;


	/**
	 * Narrowphase. Creates contacts and friction given shapes and transforms.
	 * @class Narrowphase
	 * @constructor
	 */
	constructor(){
	}

	/**
	 * @method bodiesOverlap
	 * @param  {Body} bodyA
	 * @param  {Body} bodyB
	 * @param  {boolean} [checkCollisionMasks=false]
	 * @return {boolean}
	 */
	bodiesOverlap(bodyA: Body, bodyB: Body, checkCollisionMasks: boolean = false): boolean{

		let shapePositionA = bodiesOverlap_shapePositionA;
		let shapePositionB = bodiesOverlap_shapePositionB;

		// Loop over all shapes of bodyA
		for(let k=0, Nshapesi=bodyA.shapes.length; k!==Nshapesi; k++){
			let shapeA = bodyA.shapes[k];

			// All shapes of body j
			for(let l=0, Nshapesj=bodyB.shapes.length; l!==Nshapesj; l++){
				let shapeB = bodyB.shapes[l];

				// Check collision groups and masks
				if(checkCollisionMasks && !((shapeA.collisionGroup & shapeB.collisionMask) !== 0 && (shapeB.collisionGroup & shapeA.collisionMask) !== 0)){
					return false;
				}

				bodyA.toWorldFrame(shapePositionA, shapeA.position);
				bodyB.toWorldFrame(shapePositionB, shapeB.position);

				let result = this.testContact(bodyA, shapeA, shapePositionA, bodyB, shapeB, shapePositionB, true);

				if(result) return true;
			}
		}

		return false;
	};

	/**
	 * Check if the bodies were in contact since the last reset().
	 * @method collidedLastStep
	 * @param  {Body} bodyA
	 * @param  {Body} bodyB
	 * @return {boolean}
	 */
	collidedLastStep(bodyA: Body, bodyB: Body): boolean{
		let id1: u32 = bodyA.id,
			id2: u32 = bodyB.id;
		return !!this.collidingBodiesLastStep.get(id1, id2);
	};

	/**
	 * Throws away the old equations and gets ready to create new
	 * @method reset
	 */
	reset(): void{
		this.collidingBodiesLastStep.reset();

		let eqs = this.contactEquations;
		let l = eqs.length;
		while(l--){
			let eq = eqs[l],
				id1 = eq.bodyA!.id,
				id2 = eq.bodyB!.id;
			this.collidingBodiesLastStep.set(id1, id2, 1);
		}

		let ce = this.contactEquations,
			fe = this.frictionEquations;
		for(let i: i32 = 0; i<ce.length; i++){
			this.contactEquationPool.release(ce[i]);
		}
		for(let i: i32 = 0; i<fe.length; i++){
			this.frictionEquationPool.release(fe[i]);
		}

		// Reset
		this.contactEquations.length = this.frictionEquations.length = 0;
	};

	/**
	 * Creates a ContactEquation, either by reusing an existing object or creating a new one.
	 * @method createContactEquation
	 * @param  {Body} bodyA
	 * @param  {Body} bodyB
	 * @return {ContactEquation}
	 */
	createContactEquation(bodyA: Body, bodyB: Body, shapeA: Shape, shapeB: Shape): ContactEquation{
		let c = this.contactEquationPool.get();
		let currentContactMaterial = this.currentContactMaterial!;
		c.bodyA = bodyA;
		c.bodyB = bodyB;
		c.shapeA = shapeA;
		c.shapeB = shapeB;
		c.enabled = this.enabledEquations;
		c.firstImpact = !this.collidedLastStep(bodyA,bodyB);

		c.restitution = currentContactMaterial.restitution;
		c.stiffness = currentContactMaterial.stiffness;
		c.relaxation = currentContactMaterial.relaxation;
		c.offset = currentContactMaterial.contactSkinSize;

		c.needsUpdate = true;

		return c;
	};

	/**
	 * Creates a FrictionEquation, either by reusing an existing object or creating a new one.
	 * @method createFrictionEquation
	 * @param  {Body} bodyA
	 * @param  {Body} bodyB
	 * @return {FrictionEquation}
	 */
	createFrictionEquation(bodyA: Body, bodyB: Body, shapeA: Shape, shapeB: Shape): FrictionEquation{
		let c = this.frictionEquationPool.get();
		let currentContactMaterial = this.currentContactMaterial!;
		c.bodyA = bodyA;
		c.bodyB = bodyB;
		c.shapeA = shapeA;
		c.shapeB = shapeB;
		c.setSlipForce(this.slipForce);
		c.enabled = this.enabledEquations;

		c.frictionCoefficient = currentContactMaterial.friction;
		c.relativeVelocity = currentContactMaterial.surfaceVelocity;
		c.stiffness = currentContactMaterial.frictionStiffness;
		c.relaxation = currentContactMaterial.frictionRelaxation;
		c.needsUpdate = true;

		c.contactEquations.length = 0;
		return c;
	};

	/**
	 * Creates a FrictionEquation given the data in the ContactEquation. Uses same offset vectors ri and rj, but the tangent vector will be constructed from the collision normal.
	 * @method createFrictionFromContact
	 * @param  {ContactEquation} contactEquation
	 * @return {FrictionEquation}
	 */
	createFrictionFromContact(c: ContactEquation): FrictionEquation{
		let eq = this.createFrictionEquation(c.bodyA!, c.bodyB!, c.shapeA!, c.shapeB!);
		vec2.copy(eq.contactPointA, c.contactPointA);
		vec2.copy(eq.contactPointB, c.contactPointB);
		vec2.rotate90cw(eq.t, c.normalA);
		eq.contactEquations.push(c);
		return eq;
	};

	// Take the average N latest contact point on the plane.
	createFrictionFromAverage(numContacts: i32): FrictionEquation{
		let c = this.contactEquations[this.contactEquations.length - 1];
		let eq = this.createFrictionEquation(c.bodyA!, c.bodyB!, c.shapeA!, c.shapeB!);
		let bodyA = c.bodyA;
		vec2.set(eq.contactPointA, 0, 0);
		vec2.set(eq.contactPointB, 0, 0);
		vec2.set(eq.t, 0, 0);
		for(let i: i32 = 0; i < numContacts; i++){
			c = this.contactEquations[this.contactEquations.length - 1 - i];
			if(c.bodyA === bodyA){
				vec2.add(eq.t, eq.t, c.normalA);
				vec2.add(eq.contactPointA, eq.contactPointA, c.contactPointA);
				vec2.add(eq.contactPointB, eq.contactPointB, c.contactPointB);
			} else {
				vec2.subtract(eq.t, eq.t, c.normalA);
				vec2.add(eq.contactPointA, eq.contactPointA, c.contactPointB);
				vec2.add(eq.contactPointB, eq.contactPointB, c.contactPointA);
			}
			eq.contactEquations.push(c);
		}

		let invNumContacts: f32 = 1.0/(numContacts as f32);
		vec2.scale(eq.contactPointA, eq.contactPointA, invNumContacts);
		vec2.scale(eq.contactPointB, eq.contactPointB, invNumContacts);
		vec2.normalize(eq.t, eq.t);
		vec2.rotate90cw(eq.t, eq.t);
		return eq;
	};

	testContact(
		bodyA: Body,
		shapeA: Shape,
		offsetA: Float32Array,
		bodyB: Body,
		shapeB: Shape,
		offsetB: Float32Array,
		justTest: boolean
		// meta?: {
		// 	radiusA?: f32,
		// 	radiusB?: f32
		// }
	): u16{
		let result: u16 = 0;

		if(shapeA.type > shapeB.type)
		{
			let bTmp = bodyB;
			bodyB = bodyA;
			bodyA = bTmp;

			let sTmp = shapeB;
			shapeB = shapeA;
			shapeA = sTmp;

			let pTmp = offsetB;
			offsetB = offsetA;
			offsetA = pTmp;
		}

		let sa: Shape = shapeA;
		let sb: Shape = shapeB;

		switch(shapeA.type | shapeB.type){
			case 0b1:{ // Circle/circle
				if(sa instanceof Circle){
					let sa2 = sa as Circle;
					if(sb instanceof Circle){
						let sb2 = sb as Circle;
						result = this.circleCircle(bodyA, sa2, offsetA, 
							bodyB, sb2, offsetB, 
							justTest, sa2.radius, sb2.radius);
					}
				}
				break;
			}
			case 0b11:{ // Particle/circle.
				if(sa instanceof Circle){
					let sa2 = sa as Circle;
					if(sb instanceof Particle){
						let sb2 = sb as Particle;
						result = this.circleParticle(bodyA, sa2, offsetA, 
							bodyB, sb2, offsetB, 
							justTest);
					}
				}
				break;
			}
			case 0b101:{ // Plane/circle.
				if(sa instanceof Circle){
					let sa2 = sa as Circle;
					if(sb instanceof Plane){
						let sb2 = sb as Plane;
						result = this.circlePlane(bodyA, sa2, offsetA, 
							bodyB, sb2, offsetB, bodyB.angle + sb.angle,
							justTest);
					}
				}
				break;
			}
			case 0b100001: // Box/circle.
			case 0b1001:{ // Convex/circle.
				if(sa instanceof Circle){
					let sa2 = sa as Circle;
					if(sb instanceof Convex){
						let sb2 = sb as Convex;
						result = this.circleConvex(bodyA, sa2, offsetA, 
							bodyB, sb2, offsetB, bodyB.angle + sb.angle,
							justTest, sa2.radius);
					}
				}
				break;
			}
			case 0b10001:{ // Line/circle.
				if(sa instanceof Circle){
					let sa2 = sa as Circle;
					if(sb instanceof Line){
						let sb2 = sb as Line;
						result = this.circleLine(bodyA, sa2, offsetA, 
							bodyB, sb2, offsetB, bodyB.angle + sb.angle,
							justTest, 0, sa2.radius);
					}
				}
				break;
			}
			case 0b1000001:{ // Capsule/circle.
				if(sa instanceof Circle){
					let sa2 = sa as Circle;
					if(sb instanceof Capsule){
						let sb2 = sb as Capsule;
						result = this.circleCapsule(bodyA, sa2, offsetA,
							bodyB, sb2, offsetB, bodyB.angle + sb.angle,
							justTest);
					}
				}
				break;
			}
			case 0b10000001:{ // Heightfield/circle.
				if(sa instanceof Circle){
					let sa2 = sa as Circle;
					if(sb instanceof Heightfield){
						let sb2 = sb as Heightfield;
						result = this.circleHeightfield(bodyA, sa2, offsetA,
							bodyB, sb2, offsetB, 
							justTest, sa2.radius);
					}
				}
				break;
			}
			case 0b110:{ // Plane/particle.
				
				if(sa instanceof Particle){
					let sa2 = sa as Particle;
					if(sb instanceof Plane){
						let sb2 = sb as Plane;
						result = this.particlePlane(bodyA, sa2, offsetA, 
							bodyB, sb2, offsetB, bodyB.angle + sb.angle, 
							justTest);
					}
				}
				break;
			}
			case 0b100010: // Box/particle.
			case 0b1010:{ // Convex/particle.
				if(sa instanceof Particle){
					let sa2 = sa as Particle;
					if(sb instanceof Convex){
						let sb2 = sb as Convex;
						result = this.particleConvex(bodyA, sa2, offsetA, 
							bodyB, sb2, offsetB, bodyB.angle + sb.angle, 
							justTest);
					}
				}
				break;
			}
			case 0b1010:{ // Capsule/particle.
				if(sa instanceof Particle){
					let sa2 = sa as Particle;
					if(sb instanceof Capsule){
						let sb2 = sb as Capsule;
						result = this.particleCapsule(bodyA, sa2, offsetA, 
							bodyB, sb2, offsetB, bodyB.angle + sb.angle, 
							justTest);
					}
				}
				break;
			}
			case 0b100100: // Box/plane.
			case 0b1100:{ // Convex/plane.
				if(sa instanceof Plane){
					let sa2 = sa as Plane;
					if(sb instanceof Convex){
						let sb2 = sb as Convex;
						result = this.planeConvex(bodyA, sa2, offsetA, bodyA.angle + sa.angle,
							bodyB, sb2, offsetB, bodyB.angle + sb.angle,
							justTest);
					}
				}
				break;
			}
			case 0b10100:{ // Line/plane.
				if(sa instanceof Plane){
					let sa2 = sa as Plane;
					if(sb instanceof Line){
						let sb2 = sb as Line;
						result = this.planeLine(bodyA, sa2, offsetA, bodyA.angle + sa.angle,
							bodyB, sb2, offsetB, bodyB.angle + sb.angle,
							justTest);
					}
				}
				break;
			}
			case 0b1000100:{ // Capsule/plane.
				if(sa instanceof Plane){
					let sa2 = sa as Plane;
					if(sb instanceof Capsule){
						let sb2 = sb as Capsule;
						result = this.planeCapsule(bodyA, sa2, offsetA, bodyA.angle + sa.angle,
							bodyB, sb2, offsetB, bodyB.angle + sb.angle,
							justTest);
					}
				}
				break;
			}
			case 0b100000: // Box/box.
			case 0b101000: // Box/convex.
			case 0b1000:{ // Convex/convex.
				if(sa instanceof Convex){
					let sa2 = sa as Convex;
					if(sb instanceof Convex){
						let sb2 = sb as Convex;
						result = this.convexConvex(bodyA, sa2, offsetA, bodyA.angle + sa.angle,
							bodyB, sb2, offsetB, bodyB.angle + sb.angle, 
							justTest);
					}
				}
				break;
			}
			case 0b11000:{ // Line/convex.
				// let sa = sa as Convex;
				// let sb = sb as Line;
				// NOT SUPPORTED!
				// result = this.convexLine(bodyA, sa, offsetA, bodyA.angle + sa.angle,
				// 	bodyB, sb, offsetB, bodyB.angle + sb.angle, 
				// 	justTest);
				break;
			}
			case 0b1001000:{ // Capsule/convex.
				if(sa instanceof Convex){
					let sa2 = sa as Convex;
					if(sb instanceof Capsule){
						let sb2 = sb as Capsule;
						result = this.convexCapsule(bodyA, sa2, offsetA, bodyA.angle + sa.angle,
							bodyB, sb2, offsetB, bodyB.angle + sb.angle, 
							justTest);
					}
				}
				break;
			}
			case 0b10001000:{ // Heightfield/convex.
				if(sa instanceof Convex){
					let sa2 = sa as Convex;
					if(sb instanceof Heightfield){
						let sb2 = sb as Heightfield;
						result = this.convexHeightfield(bodyA, sa2, offsetA, bodyA.angle + sa.angle,
							bodyB, sb2, offsetB,
							justTest);
					}
				}
				break;
			}
			case 0b10000:{ // Line/line.
				// let sa = sa as Line;
				// let sb = sb as Line;
				// NOT SUPPORTED!
				// result = this.lineLine(bodyA, sa, shapePositionA, bodyA.angle + sa.angle,
				// 	bodyB, sb, offsetB, bodyB.angle + sb.angle,
				// 	justTest);
				break;
			}
			case 0b110000:{ // Box/line.
				// let sa = sa as Line;
				// let sb = sb as Box;
				// NOT SUPPORTED!
				// result = this.lineBox(bodyA, sa, shapePositionA, bodyA.angle + sa.angle,
				// 	bodyB, sb, offsetB, bodyB.angle + sb.angle,
				// 	justTest);
				break;
			}
			case 0b1010000:{ // Capsule/line.
				// let sa = sa as Line;
				// let sb = sb as Capsule;
				// NOT SUPPORTED!
				// result = this.lineCapsule(bodyA, sa, shapePositionA, bodyA.angle + sa.angle,
				// 	bodyB, sb, offsetB, bodyB.angle + sb.angle,
				// 	justTest);
				break;
			}
			case 0b1000000:{ // Capsule/capsule.
				if(sa instanceof Capsule){
					let sa2 = sa as Capsule;
					if(sb instanceof Capsule){
						let sb2 = sb as Capsule;
						result = this.capsuleCapsule(bodyA, sa2, offsetA, bodyA.angle + sa.angle,
							bodyB, sb2, offsetB, bodyB.angle + sb.angle, 
							justTest);
					}
					}
				break;
			}
		}

		return result;
	}

	/**
	 * Convex/line narrowphase
	 * @method convexLine
	 * @param  {Body}       convexBody
	 * @param  {Convex}     convexShape
	 * @param  {Array}      convexOffset
	 * @param  {Number}     convexAngle
	 * @param  {Body}       lineBody
	 * @param  {Line}       lineShape
	 * @param  {Array}      lineOffset
	 * @param  {Number}     lineAngle
	 * @param {boolean}     justTest
	 * @return {number}
	 * @todo Implement me!
	 */
	//Narrowphase.prototype[Shape.CONVEX | Shape.LINE] =
	convexLine(
		/*
		convexBody,
		convexShape,
		convexOffset,
		convexAngle,
		lineBody,
		lineShape,
		lineOffset,
		lineAngle,
		justTest
		*/
	): u32{
		// TODO
		return 0;
	};

	/**
	 * Line/box narrowphase
	 * @method lineBox
	 * @param  {Body}       lineBody
	 * @param  {Line}       lineShape
	 * @param  {Array}      lineOffset
	 * @param  {Number}     lineAngle
	 * @param  {Body}       boxBody
	 * @param  {Box}  boxShape
	 * @param  {Array}      boxOffset
	 * @param  {Number}     boxAngle
	 * @param  {boolean}    justTest
	 * @return {number}
	 * @todo Implement me!
	 */
	//Narrowphase.prototype[Shape.LINE | Shape.BOX] =
	lineBox(
		/*
		lineBody,
		lineShape,
		lineOffset,
		lineAngle,
		boxBody,
		boxShape,
		boxOffset,
		boxAngle,
		justTest
		*/
	): u32{
		// TODO
		return 0;
	};

	/**
	 * Convex/capsule narrowphase
	 * @method convexCapsule
	 * @param  {Body}       convexBody
	 * @param  {Convex}     convexShape
	 * @param  {Array}      convexPosition
	 * @param  {Number}     convexAngle
	 * @param  {Body}       capsuleBody
	 * @param  {Capsule}    capsuleShape
	 * @param  {Array}      capsulePosition
	 * @param  {Number}     capsuleAngle
	 * @return {number}
	 */
	//Narrowphase.prototype[Shape.CONVEX | Shape.CAPSULE] =
	//Narrowphase.prototype[Shape.BOX | Shape.CAPSULE] =
	convexCapsule(
		convexBody: Body,
		convexShape: Convex,
		convexPosition: Float32Array,
		convexAngle: f32,
		capsuleBody: Body,
		capsuleShape: Capsule,
		capsulePosition: Float32Array,
		capsuleAngle: f32,
		justTest: boolean
	): u16{

		let convexCapsule_tempRect = new Box(null);

		// Check the circles
		// Add offsets!
		let circlePos = convexCapsule_tempVec;
		let halfLength = capsuleShape.length / 2;
		vec2.set(circlePos, halfLength, 0);
		vec2.toGlobalFrame(circlePos, circlePos, capsulePosition, capsuleAngle);
		let result1 = this.circleConvex(capsuleBody,capsuleShape,circlePos, convexBody,convexShape,convexPosition,convexAngle, justTest, capsuleShape.radius);

		vec2.set(circlePos,-halfLength, 0);
		vec2.toGlobalFrame(circlePos, circlePos, capsulePosition, capsuleAngle);
		let result2 = this.circleConvex(capsuleBody,capsuleShape,circlePos, convexBody,convexShape,convexPosition,convexAngle, justTest, capsuleShape.radius);

		if(justTest && (result1 + result2) !== 0){
			return 1;
		}

		// Check center rect
		let r = convexCapsule_tempRect;
		setConvexToCapsuleShapeMiddle(r,capsuleShape);
		let result = this.convexConvex(convexBody,convexShape,convexPosition,convexAngle, capsuleBody,r,capsulePosition,capsuleAngle, justTest);

		return result + result1 + result2;
	};

	/**
	 * Capsule/line narrowphase
	 * @method lineCapsule
	 * @param  {Body}       lineBody
	 * @param  {Line}       lineShape
	 * @param  {Array}      linePosition
	 * @param  {Number}     lineAngle
	 * @param  {Body}       capsuleBody
	 * @param  {Capsule}    capsuleShape
	 * @param  {Array}      capsulePosition
	 * @param  {Number}     capsuleAngle
	 * @return {number}
	 * @todo Implement me!
	 */
	//Narrowphase.prototype[Shape.LINE | Shape.CAPSULE] =
	lineCapsule(
		/*
		lineBody,
		lineShape,
		linePosition,
		lineAngle,
		capsuleBody,
		capsuleShape,
		capsulePosition,
		capsuleAngle,
		justTest
		*/
	): u32{
		// TODO
		return 0;
	};

	/**
	 * Capsule/capsule narrowphase
	 * @method capsuleCapsule
	 * @param  {Body}       bi
	 * @param  {Capsule}    si
	 * @param  {Array}      xi
	 * @param  {Number}     ai
	 * @param  {Body}       bj
	 * @param  {Capsule}    sj
	 * @param  {Array}      xj
	 * @param  {Number}     aj
	 */
	//Narrowphase.prototype[Shape.CAPSULE] =
	capsuleCapsule(bi: Body, si: Capsule, xi: Float32Array, ai: f32, bj: Body, sj: Capsule, xj: Float32Array, aj: f32, justTest: boolean): u16{
		throw "Capsule-capsule collisions are not currently supported.";
		return 0;


		// let capsuleCapsule_tempRect1 = new Box({ width: 1, height: 1 });

		// let enableFrictionBefore: boolean = false;

		// // Check the circles
		// // Add offsets!
		// let circlePosi = capsuleCapsule_tempVec1,
		// 	circlePosj = capsuleCapsule_tempVec2;

		// let numContacts = 0;

		// // Need 4 circle checks, between all
		// for(let i: i32 = 0; i<2; i++){

		// 	vec2.set(circlePosi,(i===0?-1:1)*si.length/2,0);
		// 	vec2.toGlobalFrame(circlePosi, circlePosi, xi, ai);

		// 	for(let j: i32 =0; j<2; j++){

		// 		vec2.set(circlePosj,(j===0?-1:1)*sj.length/2, 0);
		// 		vec2.toGlobalFrame(circlePosj, circlePosj, xj, aj);

		// 		// Temporarily turn off friction
		// 		if(this.enableFrictionReduction){
		// 			enableFrictionBefore = this.enableFriction;
		// 			this.enableFriction = false;
		// 		}

		// 		let result = this.circleCircle(bi,si,circlePosi, bj,sj,circlePosj, justTest, si.radius, sj.radius);

		// 		if(this.enableFrictionReduction){
		// 			this.enableFriction = enableFrictionBefore;
		// 		}

		// 		if(justTest && result !== 0){
		// 			return 1;
		// 		}

		// 		numContacts += result;
		// 	}
		// }

		// if(this.enableFrictionReduction){
		// 	// Temporarily turn off friction
		// 	enableFrictionBefore = this.enableFriction;
		// 	this.enableFriction = false;
		// }

		// // Check circles against the center boxs
		// let rect = capsuleCapsule_tempRect1;
		// setConvexToCapsuleShapeMiddle(rect,si);
		// let result1 = this.convexCapsule(bi,rect,xi,ai, bj,sj,xj,aj, justTest);

		// if(this.enableFrictionReduction){
		// 	this.enableFriction = enableFrictionBefore;
		// }

		// if(justTest && result1 !== 0){
		// 	return 1;
		// }
		// numContacts += result1;

		// if(this.enableFrictionReduction){
		// 	// Temporarily turn off friction
		// 	let enableFrictionBefore = this.enableFriction;
		// 	this.enableFriction = false;
		// }

		// setConvexToCapsuleShapeMiddle(rect,sj);
		// let result2 = this.convexCapsule(bj,rect,xj,aj, bi,si,xi,ai, justTest);

		// if(this.enableFrictionReduction){
		// 	this.enableFriction = enableFrictionBefore;
		// }

		// if(justTest && result2 !== 0){
		// 	return 1;
		// }
		// numContacts += result2;

		// if(this.enableFrictionReduction){
		// 	if(numContacts && this.enableFriction){
		// 		this.frictionEquations.push(this.createFrictionFromAverage(numContacts));
		// 	}
		// }

		// return numContacts;
	};

	/**
	 * Line/line narrowphase
	 * @method lineLine
	 * @param  {Body}       bodyA
	 * @param  {Line}       shapeA
	 * @param  {Array}      positionA
	 * @param  {Number}     angleA
	 * @param  {Body}       bodyB
	 * @param  {Line}       shapeB
	 * @param  {Array}      positionB
	 * @param  {Number}     angleB
	 * @return {number}
	 * @todo Implement me!
	 */
	//Narrowphase.prototype[Shape.LINE] =
	lineLine(
	/* bodyA,
		shapeA,
		positionA,
		angleA,
		bodyB,
		shapeB,
		positionB,
		angleB,
		justTest*/
	): u32{
		// TODO
		return 0;
	};

	/**
	 * Plane/line Narrowphase
	 * @method planeLine
	 * @param  {Body}   planeBody
	 * @param  {Plane}  planeShape
	 * @param  {Array}  planeOffset
	 * @param  {Number} planeAngle
	 * @param  {Body}   lineBody
	 * @param  {Line}   lineShape
	 * @param  {Array}  lineOffset
	 * @param  {Number} lineAngle
	 */
	//Narrowphase.prototype[Shape.PLANE | Shape.LINE] =
	planeLine(planeBody: Body, planeShape: Plane, planeOffset: Float32Array, planeAngle: f32,
			  lineBody: Body,  lineShape: Line,  lineOffset: Float32Array,  lineAngle: f32, justTest: boolean): u16{
		let worldVertex0 = tmp1,
			worldVertex1 = tmp2,
			worldVertex01 = tmp3,
			worldVertex11 = tmp4,
			worldEdge = tmp5,
			worldEdgeUnit = tmp6,
			dist = tmp7,
			worldNormal = tmp8,
			worldTangent = tmp9,
			verts = tmpArray,
			numContacts:u16 = 0;

		// Get start and end points
		vec2.set(worldVertex0, -lineShape.length/2, 0);
		vec2.set(worldVertex1,  lineShape.length/2, 0);

		// Not sure why we have to use worldVertex*1 here, but it won't work otherwise. Tired.
		vec2.toGlobalFrame(worldVertex01, worldVertex0, lineOffset, lineAngle);
		vec2.toGlobalFrame(worldVertex11, worldVertex1, lineOffset, lineAngle);

		vec2.copy(worldVertex0,worldVertex01);
		vec2.copy(worldVertex1,worldVertex11);

		// Get vector along the line
		vec2.subtract(worldEdge, worldVertex1, worldVertex0);
		vec2.normalize(worldEdgeUnit, worldEdge);

		// Get tangent to the edge.
		vec2.rotate90cw(worldTangent, worldEdgeUnit);

		vec2.rotate(worldNormal, yAxis, planeAngle);

		// Check line ends
		verts[0] = worldVertex0;
		verts[1] = worldVertex1;
		for(let i: i32 = 0; i<verts.length; i++){
			let v = verts[i];

			vec2.subtract(dist, v, planeOffset);

			let d = vec2.dot(dist,worldNormal);

			if(d < 0){

				if(justTest){
					return 1;
				}

				let c = this.createContactEquation(planeBody,lineBody,planeShape,lineShape);
				numContacts++;

				vec2.copy(c.normalA, worldNormal);
				vec2.normalize(c.normalA,c.normalA);

				// distance vector along plane normal
				vec2.scale(dist, worldNormal, d);

				// Vector from plane center to contact
				vec2.subtract(c.contactPointA, v, dist);
				vec2.subtract(c.contactPointA, c.contactPointA, planeBody.position);

				// From line center to contact
				vec2.subtract(c.contactPointB, v,    lineOffset);
				vec2.add(c.contactPointB, c.contactPointB, lineOffset);
				vec2.subtract(c.contactPointB, c.contactPointB, lineBody.position);

				this.contactEquations.push(c);

				if(!this.enableFrictionReduction){
					if(this.enableFriction){
						this.frictionEquations.push(this.createFrictionFromContact(c));
					}
				}
			}
		}

		if(justTest){
			return 0;
		}

		if(!this.enableFrictionReduction){
			if(numContacts && this.enableFriction){
				this.frictionEquations.push(this.createFrictionFromAverage(numContacts));
			}
		}

		return numContacts;
	};

	//Narrowphase.prototype[Shape.PARTICLE | Shape.CAPSULE] =
	particleCapsule(
		particleBody: Body,
		particleShape: Particle,
		particlePosition: Float32Array,
		capsuleBody: Body,
		capsuleShape: Capsule,
		capsulePosition: Float32Array,
		capsuleAngle: f32,
		justTest: boolean
	): u16{
		throw "NOT SUPPORTED";
		//return this.circleLine(particleBody,particleShape,particlePosition, capsuleBody,capsuleShape,capsulePosition,capsuleAngle, justTest, capsuleShape.radius, 0);
	};

	/**
	 * Circle/line Narrowphase
	 * @method circleLine
	 * @param  {Body} circleBody
	 * @param  {Circle} circleShape
	 * @param  {Array} circleOffset
	 * @param  {Body} lineBody
	 * @param  {Line} lineShape
	 * @param  {Array} lineOffset
	 * @param  {Number} lineAngle
	 * @param {boolean} justTest If set to true, this function will return the result (intersection or not) without adding equations.
	 * @param {Number} lineRadius Radius to add to the line. Can be used to test Capsules.
	 * @param {Number} circleRadius If set, this value overrides the circle shape radius.
	 * @return {number}
	 */
	//Narrowphase.prototype[Shape.CIRCLE | Shape.LINE] =
	circleLine(
		circleBody: Body,
		circleShape: Shape,
		circleOffset: Float32Array,
		//circleAngle: f32,
		lineBody: Body,
		lineShape: Line,
		lineOffset: Float32Array,
		lineAngle: f32,
		justTest: boolean,
		lineRadius: f32,
		circleRadius: f32
	): u16{
		lineRadius = lineRadius;

		let orthoDist = tmp1;
		let lineToCircleOrthoUnit = tmp2;
		let projectedPoint = tmp3;
		let centerDist = tmp4;
		let worldTangent = tmp5;
		let worldEdge = tmp6;
		let worldEdgeUnit = tmp7;
		let worldVertex0 = tmp8;
		let worldVertex1 = tmp9;
		let worldVertex01 = tmp10;
		let worldVertex11 = tmp11;
		let dist = tmp12;
		let lineToCircle = tmp13;
		let lineEndToLineRadius = tmp14;

		let verts = tmpArray;

		let halfLineLength = lineShape.length / 2;

		// Get start and end points
		vec2.set(worldVertex0, -halfLineLength, 0);
		vec2.set(worldVertex1,  halfLineLength, 0);

		// Not sure why we have to use worldVertex*1 here, but it won't work otherwise. Tired.
		vec2.toGlobalFrame(worldVertex01, worldVertex0, lineOffset, lineAngle);
		vec2.toGlobalFrame(worldVertex11, worldVertex1, lineOffset, lineAngle);

		vec2.copy(worldVertex0,worldVertex01);
		vec2.copy(worldVertex1,worldVertex11);

		// Get vector along the line
		vec2.subtract(worldEdge, worldVertex1, worldVertex0);
		vec2.normalize(worldEdgeUnit, worldEdge);

		// Get tangent to the edge.
		vec2.rotate90cw(worldTangent, worldEdgeUnit);

		// Check distance from the plane spanned by the edge vs the circle
		vec2.subtract(dist, circleOffset, worldVertex0);
		let d = vec2.dot(dist, worldTangent); // Distance from center of line to circle center
		vec2.subtract(centerDist, worldVertex0, lineOffset);

		vec2.subtract(lineToCircle, circleOffset, lineOffset);

		let radiusSum = circleRadius + lineRadius;

		if(Mathf.abs(d) < radiusSum){

			// Now project the circle onto the edge
			vec2.scale(orthoDist, worldTangent, d);
			vec2.subtract(projectedPoint, circleOffset, orthoDist);

			// Add the missing line radius
			vec2.scale(lineToCircleOrthoUnit, worldTangent, vec2.dot(worldTangent, lineToCircle));
			vec2.normalize(lineToCircleOrthoUnit,lineToCircleOrthoUnit);
			vec2.scale(lineToCircleOrthoUnit, lineToCircleOrthoUnit, lineRadius);
			vec2.add(projectedPoint,projectedPoint,lineToCircleOrthoUnit);

			// Check if the point is within the edge span
			let pos =  vec2.dot(worldEdgeUnit, projectedPoint);
			let pos0 = vec2.dot(worldEdgeUnit, worldVertex0);
			let pos1 = vec2.dot(worldEdgeUnit, worldVertex1);

			if(pos > pos0 && pos < pos1){
				// We got contact!

				if(justTest){
					return 1;
				}

				let c = this.createContactEquation(circleBody,lineBody,circleShape,lineShape);

				vec2.scale(c.normalA, orthoDist, -1);
				vec2.normalize(c.normalA, c.normalA);

				vec2.scale( c.contactPointA, c.normalA,  circleRadius);
				vec2.add(c.contactPointA, c.contactPointA, circleOffset);
				vec2.subtract(c.contactPointA, c.contactPointA, circleBody.position);

				vec2.subtract(c.contactPointB, projectedPoint, lineOffset);
				vec2.add(c.contactPointB, c.contactPointB, lineOffset);
				vec2.subtract(c.contactPointB, c.contactPointB, lineBody.position);

				this.contactEquations.push(c);

				if(this.enableFriction){
					this.frictionEquations.push(this.createFrictionFromContact(c));
				}

				return 1;
			}
		}

		// Add corner
		verts[0] = worldVertex0;
		verts[1] = worldVertex1;

		for(let i: i32 = 0; i<verts.length; i++){
			let v = verts[i];

			vec2.subtract(dist, v, circleOffset);

			if(vec2.squaredLength(dist) < Mathf.pow(radiusSum, 2)){

				if(justTest){
					return 1;
				}

				let c = this.createContactEquation(circleBody,lineBody,circleShape,lineShape);

				vec2.copy(c.normalA, dist);
				vec2.normalize(c.normalA,c.normalA);

				// Vector from circle to contact point is the normal times the circle radius
				vec2.scale(c.contactPointA, c.normalA, circleRadius);
				vec2.add(c.contactPointA, c.contactPointA, circleOffset);
				vec2.subtract(c.contactPointA, c.contactPointA, circleBody.position);

				vec2.subtract(c.contactPointB, v, lineOffset);
				vec2.scale(lineEndToLineRadius, c.normalA, -lineRadius);
				vec2.add(c.contactPointB, c.contactPointB, lineEndToLineRadius);
				vec2.add(c.contactPointB, c.contactPointB, lineOffset);
				vec2.subtract(c.contactPointB, c.contactPointB, lineBody.position);

				this.contactEquations.push(c);

				if(this.enableFriction){
					this.frictionEquations.push(this.createFrictionFromContact(c));
				}

				return 1;
			}
		}

		return 0;
	};

	/**
	 * Circle/capsule Narrowphase
	 * @method circleCapsule
	 * @param  {Body}   bi
	 * @param  {Circle} si
	 * @param  {Array}  xi
	 * @param  {Body}   bj
	 * @param  {Line}   sj
	 * @param  {Array}  xj
	 * @param  {Number} aj
	 */
	//Narrowphase.prototype[Shape.CIRCLE | Shape.CAPSULE] =
	// TODO:
	circleCapsule(bi: Body, si: Circle ,xi: Float32Array, bj: Body, sj: Capsule, xj: Float32Array, aj: f32, justTest: boolean): u16{
		throw "NOT SUPPORTED!";
		//return this.circleLine(bi,si,xi, bj,sj,xj,aj, justTest, 0, si.radius);
	};

	/**
	 * Circle/convex Narrowphase.
	 * @method circleConvex
	 * @param  {Body} circleBody
	 * @param  {Circle} circleShape
	 * @param  {Array} circleOffset
	 * @param  {Body} convexBody
	 * @param  {Convex} convexShape
	 * @param  {Array} convexOffset
	 * @param  {Number} convexAngle
	 * @param  {boolean} justTest
	 * @param  {Number} circleRadius
	 * @return {number}
	 * @todo Should probably do a separating axis test like https://github.com/erincatto/Box2D/blob/master/Box2D/Box2D/Collision/b2CollideCircle.cpp#L62
	 */
	//Narrowphase.prototype[Shape.CIRCLE | Shape.CONVEX] =
	//Narrowphase.prototype[Shape.CIRCLE | Shape.BOX] =
	circleConvex(
		circleBody: Body,
		circleShape: Shape,
		circleOffset: Float32Array,
		convexBody: Body,
		convexShape: Convex,
		convexOffset: Float32Array,
		convexAngle: f32,
		justTest: boolean,
		circleRadius: f32
	): u16{

		let worldVertex0: Float32Array = tmp1,
			worldVertex1: Float32Array = tmp2,
			edge: Float32Array = tmp3,
			edgeUnit: Float32Array = tmp4,
			normal: Float32Array = tmp5,
			zero: Float32Array = tmp6,
			localCirclePosition: Float32Array = tmp7,
			r: Float32Array = tmp8,
			dist: Float32Array = tmp10,
			worldVertex: Float32Array = tmp11,
			closestEdgeProjectedPoint: Float32Array = tmp13,
			candidate: Float32Array = tmp14,
			candidateDist: Float32Array = tmp15,
			found: i32 = -1,
			minCandidateDistance: f32 = Infinity;

		vec2.set(zero, 0, 0);

		// New algorithm:
		// 1. Check so center of circle is not inside the polygon. If it is, this wont work...
		// 2. For each edge
		// 2. 1. Get point on circle that is closest to the edge (scale normal with -radius)
		// 2. 2. Check if point is inside.

		vec2.toLocalFrame(localCirclePosition, circleOffset, convexOffset, convexAngle);

		let vertices = convexShape.vertices;
		let normals = convexShape.normals;
		let numVertices = vertices.length;
		let normalIndex = -1;

		// Find the min separating edge.
		let separation = -Infinity;
		let radius = convexShape.boundingRadius + circleRadius;

		for (let i = 0; i < numVertices; i++){
			vec2.subtract(r, localCirclePosition, vertices[i]);
			let s = vec2.dot(normals[i], r);

			if (s > radius){
				// Early out.
				return 0;
			}

			if (s > separation){
				separation = s;
				normalIndex = i;
			}
		}

		// Check edges first
		for(let i: i32 = normalIndex + numVertices - 1; i < normalIndex + numVertices + 2; i++){
			let v0 = vertices[i % numVertices],
				n = normals[i % numVertices];

			// Get point on circle, closest to the convex
			vec2.scale(candidate, n, -circleRadius);
			vec2.add(candidate,candidate,localCirclePosition);

			if(pointInConvexLocal(candidate,convexShape)){

				vec2.subtract(candidateDist,v0,candidate);
				let candidateDistance = Mathf.abs(vec2.dot(candidateDist, n));

				if(candidateDistance < minCandidateDistance){
					minCandidateDistance = candidateDistance;
					found = i;
				}
			}
		}

		if(found !== -1){

			if(justTest){
				return 1;
			}

			let v0 = vertices[found % numVertices],
				v1 = vertices[(found+1) % numVertices];

			vec2.toGlobalFrame(worldVertex0, v0, convexOffset, convexAngle);
			vec2.toGlobalFrame(worldVertex1, v1, convexOffset, convexAngle);

			vec2.subtract(edge, worldVertex1, worldVertex0);

			vec2.normalize(edgeUnit, edge);

			// Get tangent to the edge. Points out of the Convex
			vec2.rotate90cw(normal, edgeUnit);

			// Get point on circle, closest to the convex
			vec2.scale(candidate, normal, -circleRadius);
			vec2.add(candidate,candidate,circleOffset);

			vec2.scale(closestEdgeProjectedPoint, normal, minCandidateDistance);
			vec2.add(closestEdgeProjectedPoint,closestEdgeProjectedPoint,candidate);

			let c = this.createContactEquation(circleBody,convexBody,circleShape,convexShape);
			vec2.subtract(c.normalA, candidate, circleOffset);
			vec2.normalize(c.normalA, c.normalA);

			vec2.scale(c.contactPointA,  c.normalA, circleRadius);
			vec2.add(c.contactPointA, c.contactPointA, circleOffset);
			vec2.subtract(c.contactPointA, c.contactPointA, circleBody.position);

			vec2.subtract(c.contactPointB, closestEdgeProjectedPoint, convexOffset);
			vec2.add(c.contactPointB, c.contactPointB, convexOffset);
			vec2.subtract(c.contactPointB, c.contactPointB, convexBody.position);

			this.contactEquations.push(c);

			if(this.enableFriction){
				this.frictionEquations.push( this.createFrictionFromContact(c) );
			}

			return 1;
		}

		// Check closest vertices
		if(circleRadius > 0 && normalIndex !== -1){
			for(let i: i32 = normalIndex + numVertices; i < normalIndex + numVertices + 2; i++){
				let localVertex = vertices[i % numVertices];

				vec2.subtract(dist, localVertex, localCirclePosition);

				if(vec2.squaredLength(dist) < circleRadius * circleRadius){

					if(justTest){
						return 1;
					}

					vec2.toGlobalFrame(worldVertex, localVertex, convexOffset, convexAngle);
					vec2.subtract(dist, worldVertex, circleOffset);

					let c = this.createContactEquation(circleBody,convexBody,circleShape,convexShape);

					vec2.copy(c.normalA, dist);
					vec2.normalize(c.normalA,c.normalA);

					// Vector from circle to contact point is the normal times the circle radius
					vec2.scale(c.contactPointA, c.normalA, circleRadius);
					vec2.add(c.contactPointA, c.contactPointA, circleOffset);
					vec2.subtract(c.contactPointA, c.contactPointA, circleBody.position);

					vec2.subtract(c.contactPointB, worldVertex, convexOffset);
					vec2.add(c.contactPointB, c.contactPointB, convexOffset);
					vec2.subtract(c.contactPointB, c.contactPointB, convexBody.position);

					this.contactEquations.push(c);

					if(this.enableFriction){
						this.frictionEquations.push(this.createFrictionFromContact(c));
					}

					return 1;
				}
			}
		}

		return 0;
	};

	/**
	 * Particle/convex Narrowphase
	 * @method particleConvex
	 * @param  {Body} particleBody
	 * @param  {Particle} particleShape
	 * @param  {Array} particleOffset
	 * @param  {Number} particleAngle
	 * @param  {Body} convexBody
	 * @param  {Convex} convexShape
	 * @param  {Array} convexOffset
	 * @param  {Number} convexAngle
	 * @param {boolean} justTest
	 * @return {number}
	 * @todo use pointInConvex and code more similar to circleConvex
	 * @todo don't transform each vertex, but transform the particle position to convex-local instead
	 */
	//Narrowphase.prototype[Shape.PARTICLE | Shape.CONVEX] =
	//Narrowphase.prototype[Shape.PARTICLE | Shape.BOX] =
	particleConvex(
		particleBody: Body,
		particleShape: Particle,
		particleOffset: Float32Array,
		convexBody: Body,
		convexShape: Convex,
		convexOffset: Float32Array,
		convexAngle: f32,
		justTest: boolean
	): u16{
		let worldVertex0 = tmp1,
			worldVertex1 = tmp2,
			worldEdge = tmp3,
			worldEdgeUnit = tmp4,
			worldTangent = tmp5,
			centerDist = tmp6,
			convexToparticle = tmp7,
			closestEdgeProjectedPoint = tmp13,
			candidateDist = tmp14,
			minEdgeNormal = tmp15,
			minCandidateDistance = Infinity,
			found = false,
			verts = convexShape.vertices;

		// Check if the particle is in the polygon at all
		if(!pointInConvex(particleOffset,convexShape,convexOffset,convexAngle)){
			return 0;
		}

		if(justTest){
			return 1;
		}

		// Check edges first
		for(let i: i32 = 0, numVerts=verts.length; i!==numVerts+1; i++){
			let v0 = verts[i%numVerts],
				v1 = verts[(i+1)%numVerts];

			// Transform vertices to world
			// @todo transform point to local space instead
			vec2.rotate(worldVertex0, v0, convexAngle);
			vec2.rotate(worldVertex1, v1, convexAngle);
			vec2.add(worldVertex0, worldVertex0, convexOffset);
			vec2.add(worldVertex1, worldVertex1, convexOffset);

			// Get world edge
			vec2.subtract(worldEdge, worldVertex1, worldVertex0);
			vec2.normalize(worldEdgeUnit, worldEdge);

			// Get tangent to the edge. Points out of the Convex
			vec2.rotate90cw(worldTangent, worldEdgeUnit);

			// Check distance from the infinite line (spanned by the edge) to the particle
			//vec2.subtract(dist, particleOffset, worldVertex0);
			//let d = vec2.dot(dist, worldTangent);
			vec2.subtract(centerDist, worldVertex0, convexOffset);

			vec2.subtract(convexToparticle, particleOffset, convexOffset);

			vec2.subtract(candidateDist,worldVertex0,particleOffset);
			let candidateDistance = Mathf.abs(vec2.dot(candidateDist,worldTangent));

			if(candidateDistance < minCandidateDistance){
				minCandidateDistance = candidateDistance;
				vec2.scale(closestEdgeProjectedPoint,worldTangent,candidateDistance);
				vec2.add(closestEdgeProjectedPoint,closestEdgeProjectedPoint,particleOffset);
				vec2.copy(minEdgeNormal,worldTangent);
				found = true;
			}
		}

		if(found){
			let c = this.createContactEquation(particleBody,convexBody,particleShape,convexShape);

			vec2.scale(c.normalA, minEdgeNormal, -1);
			vec2.normalize(c.normalA, c.normalA);

			// Particle has no extent to the contact point
			vec2.set(c.contactPointA,  0, 0);
			vec2.add(c.contactPointA, c.contactPointA, particleOffset);
			vec2.subtract(c.contactPointA, c.contactPointA, particleBody.position);

			// From convex center to point
			vec2.subtract(c.contactPointB, closestEdgeProjectedPoint, convexOffset);
			vec2.add(c.contactPointB, c.contactPointB, convexOffset);
			vec2.subtract(c.contactPointB, c.contactPointB, convexBody.position);

			this.contactEquations.push(c);

			if(this.enableFriction){
				this.frictionEquations.push( this.createFrictionFromContact(c) );
			}

			return 1;
		}


		return 0;
	};

	/**
	 * Circle/circle Narrowphase
	 * @method circleCircle
	 * @param  {Body} bodyA
	 * @param  {Circle} shapeA
	 * @param  {Array} offsetA
	 * @param  {Body} bodyB
	 * @param  {Circle} shapeB
	 * @param  {Array} offsetB
	 * @param {boolean} justTest
	 * @param {Number} [radiusA] Optional radius to use for shapeA
	 * @param {Number} [radiusB] Optional radius to use for shapeB
	 * @return {number}
	 */
	//Narrowphase.prototype[Shape.CIRCLE] =
	circleCircle(
		bodyA: Body,
		shapeA: Circle,
		offsetA: Float32Array,
		bodyB: Body,
		shapeB: Circle,
		offsetB: Float32Array,
		justTest: boolean,
		radiusA: f32,
		radiusB: f32
	): u16{

		let dist = tmp1;

		vec2.subtract(dist,offsetA,offsetB);
		let r = radiusA + radiusB;
		if(vec2.squaredLength(dist) > r*r){
			return 0;
		}

		if(justTest){
			return 1;
		}

		let c = this.createContactEquation(bodyA,bodyB,shapeA,shapeB);
		let cpA = c.contactPointA;
		let cpB = c.contactPointB;
		let normalA = c.normalA;

		vec2.subtract(normalA, offsetB, offsetA);
		vec2.normalize(normalA,normalA);

		vec2.scale( cpA, normalA,  radiusA);
		vec2.scale( cpB, normalA, -radiusB);

		addSub(cpA, cpA, offsetA, bodyA.position);
		addSub(cpB, cpB, offsetB, bodyB.position);

		this.contactEquations.push(c);

		if(this.enableFriction){
			this.frictionEquations.push(this.createFrictionFromContact(c));
		}
		return 1;
	};

	/**
	 * Plane/Convex Narrowphase
	 * @method planeConvex
	 * @param  {Body} planeBody
	 * @param  {Plane} planeShape
	 * @param  {Array} planeOffset
	 * @param  {Number} planeAngle
	 * @param  {Body} convexBody
	 * @param  {Convex} convexShape
	 * @param  {Array} convexOffset
	 * @param  {Number} convexAngle
	 * @param {boolean} justTest
	 * @return {number}
	 * @todo only use the deepest contact point + the contact point furthest away from it
	 */
	//Narrowphase.prototype[Shape.PLANE | Shape.CONVEX] =
	//Narrowphase.prototype[Shape.PLANE | Shape.BOX] =
	planeConvex(
		planeBody: Body,
		planeShape: Plane,
		planeOffset: Float32Array,
		planeAngle: f32,
		convexBody: Body,
		convexShape: Convex,
		convexOffset: Float32Array,
		convexAngle: f32,
		justTest: boolean
	): u16{
		let worldVertex = tmp1,
			worldNormal = tmp2,
			dist = tmp3,
			localPlaneOffset = tmp4,
			localPlaneNormal = tmp5,
			localDist = tmp6;

		let numReported: u16 = 0;
		vec2.rotate(worldNormal, yAxis, planeAngle);

		// Get convex-local plane offset and normal
		vec2.vectorToLocalFrame(localPlaneNormal, worldNormal, convexAngle);
		vec2.toLocalFrame(localPlaneOffset, planeOffset, convexOffset, convexAngle);

		let vertices = convexShape.vertices;
		for(let i: i32 = 0, numVerts=vertices.length; i!==numVerts; i++){
			let v = vertices[i];

			vec2.subtract(localDist, v, localPlaneOffset);

			if(vec2.dot(localDist,localPlaneNormal) <= 0){

				if(justTest){
					return 1;
				}

				vec2.toGlobalFrame(worldVertex, v, convexOffset, convexAngle);

				vec2.subtract(dist, worldVertex, planeOffset);

				// Found vertex
				numReported++;

				let c = this.createContactEquation(planeBody,convexBody,planeShape,convexShape);

				vec2.subtract(dist, worldVertex, planeOffset);

				vec2.copy(c.normalA, worldNormal);

				let d = vec2.dot(dist, c.normalA);
				vec2.scale(dist, c.normalA, d);

				// rj is from convex center to contact
				vec2.subtract(c.contactPointB, worldVertex, convexBody.position);

				// ri is from plane center to contact
				vec2.subtract( c.contactPointA, worldVertex, dist);
				vec2.subtract( c.contactPointA, c.contactPointA, planeBody.position);

				this.contactEquations.push(c);

				if(!this.enableFrictionReduction){
					if(this.enableFriction){
						this.frictionEquations.push(this.createFrictionFromContact(c));
					}
				}
			}
		}

		if(this.enableFrictionReduction){
			if(this.enableFriction && numReported){
				this.frictionEquations.push(this.createFrictionFromAverage(numReported));
			}
		}

		return numReported;
	};

	/**
	 * Narrowphase for particle vs plane
	 * @method particlePlane
	 * @param  {Body}       particleBody
	 * @param  {Particle}   particleShape
	 * @param  {Array}      particleOffset
	 * @param  {Body}       planeBody
	 * @param  {Plane}      planeShape
	 * @param  {Array}      planeOffset
	 * @param  {Number}     planeAngle
	 * @param {boolean}     justTest
	 * @return {number}
	 */
	//Narrowphase.prototype[Shape.PARTICLE | Shape.PLANE] =
	particlePlane(
		particleBody: Body,
		particleShape: Particle,
		particleOffset: Float32Array,
		planeBody: Body,
		planeShape: Plane,
		planeOffset: Float32Array,
		planeAngle: f32,
		justTest: boolean
	): u16{
		let dist = tmp1,
			worldNormal = tmp2;

		planeAngle = planeAngle || 0;

		vec2.subtract(dist, particleOffset, planeOffset);
		vec2.rotate(worldNormal, yAxis, planeAngle);

		let d = vec2.dot(dist, worldNormal);

		if(d > 0){
			return 0;
		}
		if(justTest){
			return 1;
		}

		let c = this.createContactEquation(planeBody,particleBody,planeShape,particleShape);

		vec2.copy(c.normalA, worldNormal);
		vec2.scale( dist, c.normalA, d );
		// dist is now the distance vector in the normal direction

		// ri is the particle position projected down onto the plane, from the plane center
		vec2.subtract( c.contactPointA, particleOffset, dist);
		vec2.subtract( c.contactPointA, c.contactPointA, planeBody.position);

		// rj is from the body center to the particle center
		vec2.subtract( c.contactPointB, particleOffset, particleBody.position );

		this.contactEquations.push(c);

		if(this.enableFriction){
			this.frictionEquations.push(this.createFrictionFromContact(c));
		}
		return 1;
	};

	/**
	 * Circle/Particle Narrowphase
	 * @method circleParticle
	 * @param  {Body} circleBody
	 * @param  {Circle} circleShape
	 * @param  {Array} circleOffset
	 * @param  {Body} particleBody
	 * @param  {Particle} particleShape
	 * @param  {Array} particleOffset
	 * @param  {boolean} justTest
	 * @return {number}
	 */
	//Narrowphase.prototype[Shape.CIRCLE | Shape.PARTICLE] =
	circleParticle(
		circleBody: Body,
		circleShape: Circle,
		circleOffset: Float32Array,
		particleBody: Body,
		particleShape: Particle,
		particleOffset: Float32Array,
		justTest: boolean
	): u16{
		let dist = tmp1;
		let circleRadius = circleShape.radius;

		vec2.subtract(dist, particleOffset, circleOffset);
		if(vec2.squaredLength(dist) > circleRadius*circleRadius){
			return 0;
		}
		if(justTest){
			return 1;
		}

		let c = this.createContactEquation(circleBody,particleBody,circleShape,particleShape);
		let normalA = c.normalA;
		let contactPointA = c.contactPointA;
		let contactPointB = c.contactPointB;

		vec2.copy(normalA, dist);
		vec2.normalize(normalA, normalA);

		// Vector from circle to contact point is the normal times the circle radius
		vec2.scale(contactPointA, normalA, circleRadius);
		vec2.add(contactPointA, contactPointA, circleOffset);
		vec2.subtract(contactPointA, contactPointA, circleBody.position);

		// Vector from particle center to contact point is zero
		vec2.subtract(contactPointB, particleOffset, particleBody.position);

		this.contactEquations.push(c);

		if(this.enableFriction){
			this.frictionEquations.push(this.createFrictionFromContact(c));
		}

		return 1;
	};

	/**
	 * @method planeCapsule
	 * @param  {Body} planeBody
	 * @param  {Circle} planeShape
	 * @param  {Array} planeOffset
	 * @param  {Number} planeAngle
	 * @param  {Body} capsuleBody
	 * @param  {Particle} capsuleShape
	 * @param  {Array} capsuleOffset
	 * @param  {Number} capsuleAngle
	 * @param {boolean} justTest
	 * @return {number}
	 */
	//Narrowphase.prototype[Shape.PLANE | Shape.CAPSULE] =
	planeCapsule(
		planeBody: Body,
		planeShape: Plane,
		planeOffset: Float32Array,
		planeAngle: f32,
		capsuleBody: Body,
		capsuleShape: Capsule,
		capsuleOffset: Float32Array,
		capsuleAngle: f32,
		justTest: boolean
	): u16{

		let circleOptions = new CircleOptions();
		circleOptions.radius = 1;
		let planeCapsule_tmpCircle = new Circle(circleOptions);

		let end1 = planeCapsule_tmp1,
			end2 = planeCapsule_tmp2,
			circle = planeCapsule_tmpCircle,
			halfLength = capsuleShape.length / 2;

		// Compute world end positions
		vec2.set(end1, -halfLength, 0);
		vec2.set(end2, halfLength, 0);
		vec2.toGlobalFrame(end1, end1, capsuleOffset, capsuleAngle);
		vec2.toGlobalFrame(end2, end2, capsuleOffset, capsuleAngle);

		circle.radius = capsuleShape.radius;

		let enableFrictionBefore: boolean = this.enableFriction;

		// Temporarily turn off friction
		if(this.enableFrictionReduction){
			this.enableFriction = false;
		}

		// Do Narrowphase as two circles
		let numContacts1 = this.circlePlane(capsuleBody,circle,end1,planeBody,planeShape,planeOffset,planeAngle, justTest),
			numContacts2 = this.circlePlane(capsuleBody,circle,end2,planeBody,planeShape,planeOffset,planeAngle, justTest);

		// Restore friction
		if(this.enableFrictionReduction){
			this.enableFriction = enableFrictionBefore;
		}

		if(justTest){
			return numContacts1 + numContacts2;
		} else {
			let numTotal = numContacts1 + numContacts2;
			if(this.enableFrictionReduction){
				if(numTotal){
					this.frictionEquations.push(this.createFrictionFromAverage(numTotal));
				}
			}
			return numTotal;
		}
	};

	/**
	 * @method circlePlane
	 * @param  {Body}    circleBody
	 * @param  {Circle}  circleShape
	 * @param  {Array}   circleOffset
	 * @param  {Body}    planeBody
	 * @param  {Plane}   planeShape
	 * @param  {Array}   planeOffset
	 * @param  {Number}  planeAngle
	 * @param  {boolean} justTest
	 * @return {number}
	 */
	//Narrowphase.prototype[Shape.CIRCLE | Shape.PLANE] =
	circlePlane(
		circleBody: Body,
		circleShape: Circle,
		circleOffset: Float32Array,
		planeBody: Body,
		planeShape: Plane,
		planeOffset: Float32Array,
		planeAngle: f32,
		justTest: boolean
	): u16{
		let circleRadius = circleShape.radius;

		// Vector from plane to circle
		let planeToCircle = tmp1,
			worldNormal = tmp2,
			temp = tmp3;

		vec2.subtract(planeToCircle, circleOffset, planeOffset);

		// World plane normal
		vec2.rotate(worldNormal, yAxis, planeAngle);

		// Normal direction distance
		let d = vec2.dot(worldNormal, planeToCircle);

		if(d > circleRadius){
			return 0; // No overlap. Abort.
		}

		if(justTest){
			return 1;
		}

		// Create contact
		let contact = this.createContactEquation(planeBody,circleBody,planeShape,circleShape);

		// ni is the plane world normal
		vec2.copy(contact.normalA, worldNormal);

		// rj is the vector from circle center to the contact point
		let cpB = contact.contactPointB;
		vec2.scale(cpB, contact.normalA, -circleRadius);
		vec2.add(cpB, cpB, circleOffset);
		vec2.subtract(cpB, cpB, circleBody.position);

		// ri is the distance from plane center to contact.
		let cpA = contact.contactPointA;
		vec2.scale(temp, contact.normalA, d);
		vec2.subtract(cpA, planeToCircle, temp ); // Subtract normal distance vector from the distance vector
		vec2.add(cpA, cpA, planeOffset);
		vec2.subtract(cpA, cpA, planeBody.position);

		this.contactEquations.push(contact);

		if(this.enableFriction){
			this.frictionEquations.push( this.createFrictionFromContact(contact) );
		}

		return 1;
	};

	// Find edge normal of max separation on A - return if separating axis is found
	// Find edge normal of max separation on B - return if separation axis is found
	// Choose reference edge as min(minA, minB)
	// Find incident edge
	// Clip
	// The normal points from 1 to 2

	/*function collidePolygons(
		manifold,
		polyA, positionA, angleA,
		polyB, positionB, angleB,
		incidentEdge
	) {*/

	/**
	 * Convex/convex Narrowphase.See <a href="http://www.altdevblogaday.com/2011/05/13/contact-generation-between-3d-convex-meshes/">this article</a> for more info.
	 * @method convexConvex
	 * @param  {Body} bi
	 * @param  {Convex} si
	 * @param  {Array} xi
	 * @param  {Number} ai
	 * @param  {Body} bj
	 * @param  {Convex} sj
	 * @param  {Array} xj
	 * @param  {Number} aj
	 * @param  {boolean} justTest
	 * @return {number}
	 */
	//Narrowphase.prototype[Shape.CONVEX] =
	//Narrowphase.prototype[Shape.CONVEX | Shape.BOX] =
	//Narrowphase.prototype[Shape.BOX] =
	convexConvex(
		bodyA: Body,
		polyA: Convex,
		positionA: Float32Array,
		angleA: f32,
		bodyB: Body,
		polyB: Convex,
		positionB: Float32Array,
		angleB: f32,
		justTest: boolean
	): u16{
		let maxManifoldPoints = 2;

		let totalRadius: f32 = 0;
		let dist: Float32Array = collidePolygons_dist;

		let tempVec: Float32Array = collidePolygons_tempVec;
		let tmpVec: Float32Array = collidePolygons_tmpVec;

		let edgeA: i32 = findMaxSeparation(tempVec, polyA, positionA, angleA, polyB, positionB, angleB);
		let separationA: f32 = tempVec[0];
		if (separationA > totalRadius){
			return 0;
		}

		let edgeB: u32 = findMaxSeparation(tmpVec, polyB, positionB, angleB, polyA, positionA, angleA);
		let separationB = tmpVec[0];
		if (separationB > totalRadius){
			return 0;
		}

		let poly1: Convex;	// reference polygon
		let poly2: Convex;	// incident polygon

		let position1: Float32Array;
		let position2: Float32Array;
		let angle1: f32;
		let angle2: f32;
		let body1: Body;
		let body2: Body;

		let edge1: i32;					// reference edge
		let type: u16;

		if (separationB > separationA)
		{
			poly1 = polyB;
			poly2 = polyA;
			body1 = bodyB;
			body2 = bodyA;
			position1 = positionB;
			angle1 = angleB;
			position2 = positionA;
			angle2 = angleA;
			edge1 = edgeB;
			type = 1; // faceB
		}
		else
		{
			poly1 = polyA;
			poly2 = polyB;
			body1 = bodyA;
			body2 = bodyB;
			position1 = positionA;
			angle1 = angleA;
			position2 = positionB;
			angle2 = angleB;
			edge1 = edgeA;
			type = 0; // faceA
		}

		let incidentEdge = collidePolygons_incidentEdge;
		findIncidentEdge(incidentEdge, poly1, position1, angle1, edge1, poly2, position2, angle2);

		let count1 = poly1.vertices.length;
		let vertices1 = poly1.vertices;

		let iv1: i32 = edge1;
		let iv2: i32 = edge1 + 1 < count1 ? edge1 + 1 : 0;

		let v11 = collidePolygons_v11;
		let v12 = collidePolygons_v12;
		vec2.copy(v11, vertices1[iv1]);
		vec2.copy(v12, vertices1[iv2]);

		let localTangent = collidePolygons_localTangent;
		vec2.subtract(localTangent, v12, v11);
		vec2.normalize(localTangent, localTangent);

		let localNormal = collidePolygons_localNormal;
		vec2.crossVZ(localNormal, localTangent, 1.0);
		let planePoint = collidePolygons_planePoint;
		vec2.add(planePoint, v11, v12);
		vec2.scale(planePoint, planePoint, 0.5);

		let tangent = collidePolygons_tangent; // tangent in world space
		vec2.rotate(tangent, localTangent, angle1);
		let normal = collidePolygons_normal; // normal in world space
		vec2.crossVZ(normal, tangent, 1.0);

		vec2.toGlobalFrame(v11, v11, position1, angle1);
		vec2.toGlobalFrame(v12, v12, position1, angle1);

		// Face offset.
		let frontOffset = vec2.dot(normal, v11);

		// Side offsets, extended by polytope skin thickness.
		let sideOffset1 = -vec2.dot(tangent, v11) + totalRadius;
		let sideOffset2 = vec2.dot(tangent, v12) + totalRadius;

		// Clip incident edge against extruded edge1 side edges.
		let clipPoints1 = collidePolygons_clipPoints1;
		let clipPoints2 = collidePolygons_clipPoints2;
		let np = 0;

		// Clip to box side 1
		let negativeTangent = collidePolygons_negativeTangent;
		vec2.scale(negativeTangent, tangent, -1);
		np = clipSegmentToLine(clipPoints1, incidentEdge, negativeTangent, sideOffset1/*, iv1*/);

		if (np < 2){
			return 0;
		}

		// Clip to negative box side 1
		np = clipSegmentToLine(clipPoints2, clipPoints1,  tangent, sideOffset2/*, iv2*/);

		if (np < 2){
			return 0;
		}

		let pointCount: u16 = 0;
		for (let i = 0; i < maxManifoldPoints; ++i)
		{
			let separation = vec2.dot(normal, clipPoints2[i]) - frontOffset;

			if (separation <= totalRadius)
			{
				if(justTest){
					return 1;
				}

				++pointCount;

				let c = this.createContactEquation(body1,body2,poly1,poly2);

				vec2.copy(c.normalA, normal);
				vec2.copy(c.contactPointB, clipPoints2[i]);
				vec2.subtract(c.contactPointB, c.contactPointB, body2.position);

				vec2.scale(dist, normal, -separation);
				vec2.add(c.contactPointA, clipPoints2[i], dist);
				vec2.subtract(c.contactPointA, c.contactPointA, body1.position);

				this.contactEquations.push(c);

				if(this.enableFriction && !this.enableFrictionReduction){
					this.frictionEquations.push(this.createFrictionFromContact(c));
				}
			}
		}

		if(pointCount && this.enableFrictionReduction && this.enableFriction){
			this.frictionEquations.push(this.createFrictionFromAverage(pointCount));
		}

		return pointCount;
	};

	//Narrowphase.prototype[Shape.CIRCLE | Shape.HEIGHTFIELD] =
	circleHeightfield( circleBody: Body,circleShape: Circle,circlePos: Float32Array,
						hfBody: Body,hfShape: Heightfield,hfPos: Float32Array, justTest: boolean, radius: f32 ): u16{

		let data: f32[] = hfShape.heights,
			w: f32 = hfShape.elementWidth,
			dist: Float32Array = circleHeightfield_dist,
			candidate: Float32Array = circleHeightfield_candidate,
			minCandidate: Float32Array = circleHeightfield_minCandidate,
			minCandidateNormal: Float32Array = circleHeightfield_minCandidateNormal,
			worldNormal: Float32Array = circleHeightfield_worldNormal,
			v0: Float32Array = circleHeightfield_v0,
			v1: Float32Array = circleHeightfield_v1;

		// Get the index of the points to test against
		
		// FIXME: What the hell is going on here. Are these f32s or integers?
		let idxA: i32 = Mathf.floor( (circlePos[0] - radius - hfPos[0]) / w ) as i32,
			idxB: i32 = Mathf.ceil( (circlePos[0] + radius - hfPos[0]) / w ) as i32;

		/*if(idxB < 0 || idxA >= data.length)
			return justTest ? false : 0;*/

		if(idxA < 0){
			idxA = 0;
		}

		if(idxB >= data.length){
			idxB = data.length - 1;
		}

		// Get max and min
		let max: f32 = data[idxA],
			min: f32 = data[idxB];
		for(let i: i32 = idxA; i<idxB; i++){
			if(data[i] < min){
				min = data[i];
			}
			if(data[i] > max){
				max = data[i];
			}
		}

		if(circlePos[1]-radius > max){
			return 0;
		}

		/*
		if(circlePos[1]+radius < min){
			// Below the minimum point... We can just guess.
			// TODO
		}
		*/

		// 1. Check so center of circle is not inside the field. If it is, this wont work...
		// 2. For each edge
		// 2. 1. Get point on circle that is closest to the edge (scale normal with -radius)
		// 2. 2. Check if point is inside.

		let found = false;

		// Check all edges first
		for(let i: i32 = idxA; i<idxB; i++){

			// Get points
			vec2.set(v0,     (i as f32)*w, data[i]  );
			vec2.set(v1, ((i as f32)+1.0)*w, data[i+1]);
			vec2.add(v0,v0,hfPos); // @todo transform circle to local heightfield space instead
			vec2.add(v1,v1,hfPos);

			// Get normal
			vec2.subtract(worldNormal, v1, v0);
			vec2.rotate(worldNormal, worldNormal, Mathf.PI/2);
			vec2.normalize(worldNormal,worldNormal);

			// Get point on circle, closest to the edge
			vec2.scale(candidate,worldNormal,-radius);
			vec2.add(candidate,candidate,circlePos);

			// Distance from v0 to the candidate point
			vec2.subtract(dist,candidate,v0);

			// Check if it is in the element "stick"
			let d = vec2.dot(dist,worldNormal);
			if(candidate[0] >= v0[0] && candidate[0] < v1[0] && d <= 0){

				if(justTest){
					return 1;
				}

				found = true;

				// Store the candidate point, projected to the edge
				vec2.scale(dist,worldNormal,-d);
				vec2.add(minCandidate,candidate,dist);
				vec2.copy(minCandidateNormal,worldNormal);

				let c = this.createContactEquation(hfBody,circleBody,hfShape,circleShape);

				// Normal is out of the heightfield
				vec2.copy(c.normalA, minCandidateNormal);

				// Vector from circle to heightfield
				vec2.scale(c.contactPointB,  c.normalA, -radius);
				vec2.add(c.contactPointB, c.contactPointB, circlePos);
				vec2.subtract(c.contactPointB, c.contactPointB, circleBody.position);

				vec2.copy(c.contactPointA, minCandidate);
				vec2.subtract(c.contactPointA, c.contactPointA, hfBody.position);

				this.contactEquations.push(c);

				if(this.enableFriction){
					this.frictionEquations.push( this.createFrictionFromContact(c) );
				}
			}
		}

		// Check all vertices
		found = false;
		if(radius > 0){
			for(let i: i32 = idxA; i<=idxB; i++){

				// Get point
				vec2.set(v0, (i as f32) * w, data[i]);
				vec2.add(v0,v0,hfPos);

				vec2.subtract(dist, circlePos, v0);

				if(vec2.squaredLength(dist) < Mathf.pow(radius, 2)){

					if(justTest){
						return 1;
					}

					found = true;

					let c = this.createContactEquation(hfBody,circleBody,hfShape,circleShape);

					// Construct normal - out of heightfield
					vec2.copy(c.normalA, dist);
					vec2.normalize(c.normalA,c.normalA);

					vec2.scale(c.contactPointB, c.normalA, -radius);
					vec2.add(c.contactPointB, c.contactPointB, circlePos);
					vec2.subtract(c.contactPointB, c.contactPointB, circleBody.position);

					vec2.subtract(c.contactPointA, v0, hfPos);
					vec2.add(c.contactPointA, c.contactPointA, hfPos);
					vec2.subtract(c.contactPointA, c.contactPointA, hfBody.position);

					this.contactEquations.push(c);

					if(this.enableFriction){
						this.frictionEquations.push(this.createFrictionFromContact(c));
					}
				}
			}
		}

		if(found){
			return 1;
		}

		return 0;

	}

	//Narrowphase.prototype[Shape.BOX | Shape.HEIGHTFIELD] =
	//Narrowphase.prototype[Shape.CONVEX | Shape.HEIGHTFIELD] =
	convexHeightfield( convexBody: Body, convexShape: Convex, convexPos: Float32Array, convexAngle: f32,
						hfBody: Body, hfShape: Heightfield, hfPos: Float32Array, justTest: boolean ): u16{
			
		let data = hfShape.heights,
			w = hfShape.elementWidth,
			v0 = convexHeightfield_v0,
			v1 = convexHeightfield_v1,
			tilePos = convexHeightfield_tilePos,
			tileConvex = convexHeightfield_tempConvexShape;

		// Get the index of the points to test against
		let idxA: i32 = Mathf.floor( (convexBody.aabb.lowerBound[0] - hfPos[0]) / w ) as i32,
			idxB: i32 = Mathf.ceil(  (convexBody.aabb.upperBound[0] - hfPos[0]) / w ) as i32;

		if(idxA < 0){
			idxA = 0;
		}
		if(idxB >= data.length){
			idxB = data.length-1;
		}

		// Get max and min
		let max = data[idxA],
			min = data[idxB];
		for(let i: i32 = idxA; i<idxB; i++){
			if(data[i] < min){
				min = data[i];
			}
			if(data[i] > max){
				max = data[i];
			}
		}

		if(convexBody.aabb.lowerBound[1] > max){
			return 0;
		}

		let numContacts: u16 = 0;

		// Loop over all edges
		// @todo If possible, construct a convex from several data points (need o check if the points make a convex shape)
		// @todo transform convex to local heightfield space.
		// @todo bail out if the heightfield tile is not tall enough.
		for(let i: i32 = idxA; i<idxB; i++){

			// Get points
			vec2.set(v0, (i as f32)*w, data[i]  );
			vec2.set(v1, ((i+1) as f32)*w, data[i+1]);
			vec2.add(v0,v0,hfPos);
			vec2.add(v1,v1,hfPos);

			// Construct a convex
			let tileHeight: f32 = 100.0; // todo
			vec2.set(tilePos, (v1[0] + v0[0])*0.5, (v1[1] + v0[1] - tileHeight)*0.5);

			vec2.subtract(tileConvex.vertices[0], v1, tilePos);
			vec2.subtract(tileConvex.vertices[1], v0, tilePos);
			vec2.copy(tileConvex.vertices[2], tileConvex.vertices[1]);
			vec2.copy(tileConvex.vertices[3], tileConvex.vertices[0]);
			tileConvex.vertices[2][1] -= tileHeight;
			tileConvex.vertices[3][1] -= tileHeight;
			tileConvex.updateNormals();

			// Do convex collision
			numContacts += this.convexConvex(   convexBody, convexShape, convexPos, convexAngle,
												hfBody, tileConvex, tilePos, 0, justTest);
		}

		return numContacts;
	}
}