//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import vec2 from "../math/vec2";

var sub = vec2.subtract
,   add = vec2.add
,   dot = vec2.dot
,   rotate = vec2.rotate
,   normalize = vec2.normalize
,   copy = vec2.copy
,   scale = vec2.scale
,   squaredLength = vec2.squaredLength
,   createVec2 = vec2.create;

import Circle from "../shapes/Circle";
import { CircleOptions } from "../shapes/Circle";
import Convex from "../shapes/Convex";
import Shape from "../shapes/Shape";
import Box from "../shapes/Box";
import { BoxOptions } from "../shapes/Box";
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
var tmp1 = createVec2()
,   tmp2 = createVec2()
,   tmp3 = createVec2()
,   tmp4 = createVec2()
,   tmp5 = createVec2()
,   tmp6 = createVec2()
,   tmp7 = createVec2()
,   tmp8 = createVec2()
,   tmp9 = createVec2()
,   tmp10 = createVec2()
,   tmp11 = createVec2()
,   tmp12 = createVec2()
,   tmp13 = createVec2()
,   tmp14 = createVec2()
,   tmp15 = createVec2()
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

var pic_localPoint = createVec2(),
	pic_r0 = createVec2(),
	pic_r1 = createVec2();

var bodiesOverlap_shapePositionA = createVec2(),
	bodiesOverlap_shapePositionB = createVec2();

var capsuleCapsule_tempVec1 = createVec2(),
	capsuleCapsule_tempVec2 = createVec2();

var convexCapsule_tempVec = createVec2();

var planeCapsule_tmp1 = createVec2(), 
	planeCapsule_tmp2 = createVec2();

var circleHeightfield_candidate = createVec2(),
	circleHeightfield_dist = createVec2(),
	circleHeightfield_v0 = createVec2(),
	circleHeightfield_v1 = createVec2(),
	circleHeightfield_minCandidate = createVec2(),
	circleHeightfield_worldNormal = createVec2(),
	circleHeightfield_minCandidateNormal = createVec2();

var convexHeightfield_v0 = createVec2(),
	convexHeightfield_v1 = createVec2(),
	convexHeightfield_tilePos = createVec2(),
	convexHeightfield_tempConvexShape = new Convex(0, [createVec2(),createVec2(),createVec2(),createVec2()], null );

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
		lastCross = null;

	vec2.toLocalFrame(localPoint, worldPoint, convexOffset, convexAngle);

	for(let i=0, numVerts=verts.length; i!==numVerts+1; i++){
		let v0 = verts[i % numVerts],
			v1 = verts[(i+1) % numVerts];

		sub(r0, v0, localPoint);
		sub(r1, v1, localPoint);

		let cross = vec2.crossLength(r0,r1);

		if(lastCross === null){
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
	let r0 = pic_r0,
		r1 = pic_r1,
		verts = convexShape.vertices,
		lastCross = null,
		numVerts = verts.length;

	for(let i=0; i < numVerts + 1; i++){
		let v0 = verts[i % numVerts],
			v1 = verts[(i + 1) % numVerts];

		sub(r0, v0, localPoint);
		sub(r1, v1, localPoint);

		let cross = vec2.crossLength(r0,r1);

		if(lastCross === null){
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
		let si = Infinity;
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
		for(let i=0; i<ce.length; i++){
			this.contactEquationPool.release(ce[i]);
		}
		for(let i=0; i<fe.length; i++){
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
		copy(eq.contactPointA, c.contactPointA);
		copy(eq.contactPointB, c.contactPointB);
		vec2.rotate90cw(eq.t, c.normalA);
		eq.contactEquations.push(c);
		return eq;
	};

	// Take the average N latest contact point on the plane.
	createFrictionFromAverage(numContacts: i16): FrictionEquation{
		let c = this.contactEquations[this.contactEquations.length - 1];
		let eq = this.createFrictionEquation(c.bodyA!, c.bodyB!, c.shapeA!, c.shapeB!);
		let bodyA = c.bodyA;
		vec2.set(eq.contactPointA, 0, 0);
		vec2.set(eq.contactPointB, 0, 0);
		vec2.set(eq.t, 0, 0);
		for(let i=0; i < numContacts; i++){
			c = this.contactEquations[this.contactEquations.length - 1 - i];
			if(c.bodyA === bodyA){
				add(eq.t, eq.t, c.normalA);
				add(eq.contactPointA, eq.contactPointA, c.contactPointA);
				add(eq.contactPointB, eq.contactPointB, c.contactPointB);
			} else {
				sub(eq.t, eq.t, c.normalA);
				add(eq.contactPointA, eq.contactPointA, c.contactPointB);
				add(eq.contactPointB, eq.contactPointB, c.contactPointA);
			}
			eq.contactEquations.push(c);
		}

		let invNumContacts = 1/numContacts;
		scale(eq.contactPointA, eq.contactPointA, invNumContacts);
		scale(eq.contactPointB, eq.contactPointB, invNumContacts);
		normalize(eq.t, eq.t);
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
		let result = 0;

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

		switch(shapeA.type | shapeB.type){
			case 0b1:{ // Circle/circle
				let sa = shapeA as Circle;
				let sb = shapeB as Circle;
				result = this.circleCircle(bodyA, sa, offsetA, 
					bodyB, sb, offsetB, 
					justTest, sa.radius, sb.radius);
				break;
			}
			case 0b11:{ // Particle/circle.
				let sa = shapeA as Circle;
				let sb = shapeB as Particle;
				result = this.circleParticle(bodyA, sa, offsetA, 
					bodyB, sb, offsetB, 
					justTest);
				break;
			}
			case 0b101:{ // Plane/circle.
				let sa = shapeA as Circle;
				let sb = shapeB as Plane;
				result = this.circlePlane(bodyA, sa, offsetA, 
					bodyB, sb, offsetB, bodyB.angle + sb.angle,
					justTest);
				break;
			}
			case 0b100001: // Box/circle.
			case 0b1001:{ // Convex/circle.
				let sa = shapeA as Circle;
				let sb = shapeB as Convex;
				result = this.circleConvex(bodyA, sa, offsetA, 
					bodyB, sb, offsetB, bodyB.angle + sb.angle,
					justTest, sa.radius);
				break;
			}
			case 0b10001:{ // Line/circle.
				let sa = shapeA as Circle;
				let sb = shapeB as Line;
				result = this.circleLine(bodyA, sa, offsetA, 
					bodyB, sb, offsetB, bodyB.angle + sb.angle,
					justTest, 0, sa.radius);
				break;
			}
			case 0b1000001:{ // Capsule/circle.
				let sa = shapeA as Circle;
				let sb = shapeB as Capsule;
				result = this.circleCapsule(bodyA, sa, offsetA,
					bodyB, sb, offsetB, bodyB.angle + sb.angle,
					justTest);
				break;
			}
			case 0b10000001:{ // Heightfield/circle.
				let sa = shapeA as Circle;
				let sb = shapeB as Heightfield;
				result = this.circleHeightfield(bodyA, sa, offsetA,
					bodyB, sb, offsetB, 
					justTest, sa.radius);
				break;
			}
			case 0b110:{ // Plane/particle.
				let sa = shapeA as Particle;
				let sb = shapeB as Plane;
				result = this.particlePlane(bodyA, sa, offsetA, 
					bodyB, sb, offsetB, bodyB.angle + sb.angle, 
					justTest);
				break;
			}
			case 0b100010: // Box/particle.
			case 0b1010:{ // Convex/particle.
				let sa = shapeA as Particle;
				let sb = shapeB as Convex;
				result = this.particleConvex(bodyA, sa, offsetA, 
					bodyB, sb, offsetB, bodyB.angle + sb.angle, 
					justTest);
				break;
			}
			case 0b1010:{ // Capsule/particle.
				let sa = shapeA as Particle;
				let sb = shapeB as Capsule;
				result = this.particleCapsule(bodyA, sa, offsetA, 
					bodyB, sb, offsetB, bodyB.angle + sb.angle, 
					justTest);
				break;
			}
			case 0b100100: // Box/plane.
			case 0b1100:{ // Convex/plane.
				let sa = shapeA as Plane;
				let sb = shapeB as Convex;
				result = this.planeConvex(bodyA, sa, offsetA, bodyA.angle + sa.angle,
					bodyB, sb, offsetB, bodyB.angle + sb.angle,
					justTest);
				break;
			}
			case 0b10100:{ // Line/plane.
				let sa = shapeA as Plane;
				let sb = shapeB as Line;
				result = this.planeLine(bodyA, sa, offsetA, bodyA.angle + sa.angle,
					bodyB, sb, offsetB, bodyB.angle + sb.angle,
					justTest);
				break;
			}
			case 0b1000100:{ // Capsule/plane.
				let sa = shapeA as Plane;
				let sb = shapeB as Capsule;
				result = this.planeCapsule(bodyA, sa, offsetA, bodyA.angle + sa.angle,
					bodyB, sb, offsetB, bodyB.angle + sb.angle,
					justTest);
				break;
			}
			case 0b100000: // Box/box.
			case 0b101000: // Box/convex.
			case 0b1000:{ // Convex/convex.
				let sa = shapeA as Convex;
				let sb = shapeB as Convex;
				result = this.convexConvex(bodyA, sa, offsetA, bodyA.angle + sa.angle,
					bodyB, sb, offsetB, bodyB.angle + sb.angle, 
					justTest);
				break;
			}
			case 0b11000:{ // Line/convex.
				let sa = shapeA as Convex;
				let sb = shapeB as Line;
				// NOT SUPPORTED!
				// result = this.convexLine(bodyA, sa, offsetA, bodyA.angle + sa.angle,
				// 	bodyB, sb, offsetB, bodyB.angle + sb.angle, 
				// 	justTest);
				break;
			}
			case 0b1001000:{ // Capsule/convex.
				let sa = shapeA as Convex;
				let sb = shapeB as Capsule;
				result = this.convexCapsule(bodyA, sa, offsetA, bodyA.angle + sa.angle,
					bodyB, sb, offsetB, bodyB.angle + sb.angle, 
					justTest);
				break;
			}
			case 0b10001000:{ // Heightfield/convex.
				let sa = shapeA as Convex;
				let sb = shapeB as Heightfield;
				result = this.convexHeightfield(bodyA, sa, offsetA, bodyA.angle + sa.angle,
					bodyB, sb, offsetB,
					justTest);
				break;
			}
			case 0b10000:{ // Line/line.
				let sa = shapeA as Line;
				let sb = shapeB as Line;
				// NOT SUPPORTED!
				// result = this.lineLine(bodyA, sa, shapePositionA, bodyA.angle + sa.angle,
				// 	bodyB, sb, offsetB, bodyB.angle + sb.angle,
				// 	justTest);
				break;
			}
			case 0b110000:{ // Box/line.
				let sa = shapeA as Line;
				let sb = shapeB as Box;
				// NOT SUPPORTED!
				// result = this.lineBox(bodyA, sa, shapePositionA, bodyA.angle + sa.angle,
				// 	bodyB, sb, offsetB, bodyB.angle + sb.angle,
				// 	justTest);
				break;
			}
			case 0b1010000:{ // Capsule/line.
				let sa = shapeA as Line;
				let sb = shapeB as Capsule;
				// NOT SUPPORTED!
				// result = this.lineCapsule(bodyA, sa, shapePositionA, bodyA.angle + sa.angle,
				// 	bodyB, sb, offsetB, bodyB.angle + sb.angle,
				// 	justTest);
				break;
			}
			case 0b1000000:{ // Capsule/capsule.
				let sa = shapeA as Capsule;
				let sb = shapeB as Capsule;
				result = this.capsuleCapsule(bodyA, sa, offsetA, bodyA.angle + sa.angle,
					bodyB, sb, offsetB, bodyB.angle + sb.angle, 
					justTest);
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
	): u32{

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
		// for(let i=0; i<2; i++){

		// 	vec2.set(circlePosi,(i===0?-1:1)*si.length/2,0);
		// 	vec2.toGlobalFrame(circlePosi, circlePosi, xi, ai);

		// 	for(let j=0; j<2; j++){

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
			numContacts = 0;

		// Get start and end points
		vec2.set(worldVertex0, -lineShape.length/2, 0);
		vec2.set(worldVertex1,  lineShape.length/2, 0);

		// Not sure why we have to use worldVertex*1 here, but it won't work otherwise. Tired.
		vec2.toGlobalFrame(worldVertex01, worldVertex0, lineOffset, lineAngle);
		vec2.toGlobalFrame(worldVertex11, worldVertex1, lineOffset, lineAngle);

		copy(worldVertex0,worldVertex01);
		copy(worldVertex1,worldVertex11);

		// Get vector along the line
		sub(worldEdge, worldVertex1, worldVertex0);
		normalize(worldEdgeUnit, worldEdge);

		// Get tangent to the edge.
		vec2.rotate90cw(worldTangent, worldEdgeUnit);

		rotate(worldNormal, yAxis, planeAngle);

		// Check line ends
		verts[0] = worldVertex0;
		verts[1] = worldVertex1;
		for(let i=0; i<verts.length; i++){
			let v = verts[i];

			sub(dist, v, planeOffset);

			let d = dot(dist,worldNormal);

			if(d < 0){

				if(justTest){
					return 1;
				}

				let c = this.createContactEquation(planeBody,lineBody,planeShape,lineShape);
				numContacts++;

				copy(c.normalA, worldNormal);
				normalize(c.normalA,c.normalA);

				// distance vector along plane normal
				scale(dist, worldNormal, d);

				// Vector from plane center to contact
				sub(c.contactPointA, v, dist);
				sub(c.contactPointA, c.contactPointA, planeBody.position);

				// From line center to contact
				sub(c.contactPointB, v,    lineOffset);
				add(c.contactPointB, c.contactPointB, lineOffset);
				sub(c.contactPointB, c.contactPointB, lineBody.position);

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
		return this.circleLine(particleBody,particleShape,particlePosition, capsuleBody,capsuleShape,capsulePosition,capsuleAngle, justTest, capsuleShape.radius, 0);
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

		copy(worldVertex0,worldVertex01);
		copy(worldVertex1,worldVertex11);

		// Get vector along the line
		sub(worldEdge, worldVertex1, worldVertex0);
		normalize(worldEdgeUnit, worldEdge);

		// Get tangent to the edge.
		vec2.rotate90cw(worldTangent, worldEdgeUnit);

		// Check distance from the plane spanned by the edge vs the circle
		sub(dist, circleOffset, worldVertex0);
		let d = dot(dist, worldTangent); // Distance from center of line to circle center
		sub(centerDist, worldVertex0, lineOffset);

		sub(lineToCircle, circleOffset, lineOffset);

		let radiusSum = circleRadius + lineRadius;

		if(Math.abs(d) < radiusSum){

			// Now project the circle onto the edge
			scale(orthoDist, worldTangent, d);
			sub(projectedPoint, circleOffset, orthoDist);

			// Add the missing line radius
			scale(lineToCircleOrthoUnit, worldTangent, dot(worldTangent, lineToCircle));
			normalize(lineToCircleOrthoUnit,lineToCircleOrthoUnit);
			scale(lineToCircleOrthoUnit, lineToCircleOrthoUnit, lineRadius);
			add(projectedPoint,projectedPoint,lineToCircleOrthoUnit);

			// Check if the point is within the edge span
			let pos =  dot(worldEdgeUnit, projectedPoint);
			let pos0 = dot(worldEdgeUnit, worldVertex0);
			let pos1 = dot(worldEdgeUnit, worldVertex1);

			if(pos > pos0 && pos < pos1){
				// We got contact!

				if(justTest){
					return 1;
				}

				let c = this.createContactEquation(circleBody,lineBody,circleShape,lineShape);

				scale(c.normalA, orthoDist, -1);
				normalize(c.normalA, c.normalA);

				scale( c.contactPointA, c.normalA,  circleRadius);
				add(c.contactPointA, c.contactPointA, circleOffset);
				sub(c.contactPointA, c.contactPointA, circleBody.position);

				sub(c.contactPointB, projectedPoint, lineOffset);
				add(c.contactPointB, c.contactPointB, lineOffset);
				sub(c.contactPointB, c.contactPointB, lineBody.position);

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

		for(let i=0; i<verts.length; i++){
			let v = verts[i];

			sub(dist, v, circleOffset);

			if(squaredLength(dist) < Math.pow(radiusSum, 2)){

				if(justTest){
					return 1;
				}

				let c = this.createContactEquation(circleBody,lineBody,circleShape,lineShape);

				copy(c.normalA, dist);
				normalize(c.normalA,c.normalA);

				// Vector from circle to contact point is the normal times the circle radius
				scale(c.contactPointA, c.normalA, circleRadius);
				add(c.contactPointA, c.contactPointA, circleOffset);
				sub(c.contactPointA, c.contactPointA, circleBody.position);

				sub(c.contactPointB, v, lineOffset);
				scale(lineEndToLineRadius, c.normalA, -lineRadius);
				add(c.contactPointB, c.contactPointB, lineEndToLineRadius);
				add(c.contactPointB, c.contactPointB, lineOffset);
				sub(c.contactPointB, c.contactPointB, lineBody.position);

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
	circleCapsule(bi: Body, si: Circle ,xi: Float32Array, bj: Body, sj: Line, xj: Float32Array, aj: f32, justTest: boolean): u16{
		return this.circleLine(bi,si,xi, bj,sj,xj,aj, justTest, 0, si.radius);
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

		let worldVertex0 = tmp1,
			worldVertex1 = tmp2,
			edge = tmp3,
			edgeUnit = tmp4,
			normal = tmp5,
			zero = tmp6,
			localCirclePosition = tmp7,
			r = tmp8,
			dist = tmp10,
			worldVertex = tmp11,
			closestEdgeProjectedPoint = tmp13,
			candidate = tmp14,
			candidateDist = tmp15,
			found = -1,
			minCandidateDistance = Infinity;

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
			sub(r, localCirclePosition, vertices[i]);
			let s = dot(normals[i], r);

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
		for(let i=normalIndex + numVertices - 1; i < normalIndex + numVertices + 2; i++){
			let v0 = vertices[i % numVertices],
				n = normals[i % numVertices];

			// Get point on circle, closest to the convex
			scale(candidate, n, -circleRadius);
			add(candidate,candidate,localCirclePosition);

			if(pointInConvexLocal(candidate,convexShape)){

				sub(candidateDist,v0,candidate);
				let candidateDistance = Math.abs(dot(candidateDist, n));

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

			sub(edge, worldVertex1, worldVertex0);

			normalize(edgeUnit, edge);

			// Get tangent to the edge. Points out of the Convex
			vec2.rotate90cw(normal, edgeUnit);

			// Get point on circle, closest to the convex
			scale(candidate, normal, -circleRadius);
			add(candidate,candidate,circleOffset);

			scale(closestEdgeProjectedPoint, normal, minCandidateDistance);
			add(closestEdgeProjectedPoint,closestEdgeProjectedPoint,candidate);

			let c = this.createContactEquation(circleBody,convexBody,circleShape,convexShape);
			sub(c.normalA, candidate, circleOffset);
			normalize(c.normalA, c.normalA);

			scale(c.contactPointA,  c.normalA, circleRadius);
			add(c.contactPointA, c.contactPointA, circleOffset);
			sub(c.contactPointA, c.contactPointA, circleBody.position);

			sub(c.contactPointB, closestEdgeProjectedPoint, convexOffset);
			add(c.contactPointB, c.contactPointB, convexOffset);
			sub(c.contactPointB, c.contactPointB, convexBody.position);

			this.contactEquations.push(c);

			if(this.enableFriction){
				this.frictionEquations.push( this.createFrictionFromContact(c) );
			}

			return 1;
		}

		// Check closest vertices
		if(circleRadius > 0 && normalIndex !== -1){
			for(let i=normalIndex + numVertices; i < normalIndex + numVertices + 2; i++){
				let localVertex = vertices[i % numVertices];

				sub(dist, localVertex, localCirclePosition);

				if(squaredLength(dist) < circleRadius * circleRadius){

					if(justTest){
						return 1;
					}

					vec2.toGlobalFrame(worldVertex, localVertex, convexOffset, convexAngle);
					sub(dist, worldVertex, circleOffset);

					let c = this.createContactEquation(circleBody,convexBody,circleShape,convexShape);

					copy(c.normalA, dist);
					normalize(c.normalA,c.normalA);

					// Vector from circle to contact point is the normal times the circle radius
					scale(c.contactPointA, c.normalA, circleRadius);
					add(c.contactPointA, c.contactPointA, circleOffset);
					sub(c.contactPointA, c.contactPointA, circleBody.position);

					sub(c.contactPointB, worldVertex, convexOffset);
					add(c.contactPointB, c.contactPointB, convexOffset);
					sub(c.contactPointB, c.contactPointB, convexBody.position);

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
		for(let i=0, numVerts=verts.length; i!==numVerts+1; i++){
			let v0 = verts[i%numVerts],
				v1 = verts[(i+1)%numVerts];

			// Transform vertices to world
			// @todo transform point to local space instead
			rotate(worldVertex0, v0, convexAngle);
			rotate(worldVertex1, v1, convexAngle);
			add(worldVertex0, worldVertex0, convexOffset);
			add(worldVertex1, worldVertex1, convexOffset);

			// Get world edge
			sub(worldEdge, worldVertex1, worldVertex0);
			normalize(worldEdgeUnit, worldEdge);

			// Get tangent to the edge. Points out of the Convex
			vec2.rotate90cw(worldTangent, worldEdgeUnit);

			// Check distance from the infinite line (spanned by the edge) to the particle
			//sub(dist, particleOffset, worldVertex0);
			//let d = dot(dist, worldTangent);
			sub(centerDist, worldVertex0, convexOffset);

			sub(convexToparticle, particleOffset, convexOffset);

			sub(candidateDist,worldVertex0,particleOffset);
			let candidateDistance = Math.abs(dot(candidateDist,worldTangent));

			if(candidateDistance < minCandidateDistance){
				minCandidateDistance = candidateDistance;
				scale(closestEdgeProjectedPoint,worldTangent,candidateDistance);
				add(closestEdgeProjectedPoint,closestEdgeProjectedPoint,particleOffset);
				copy(minEdgeNormal,worldTangent);
				found = true;
			}
		}

		if(found){
			let c = this.createContactEquation(particleBody,convexBody,particleShape,convexShape);

			scale(c.normalA, minEdgeNormal, -1);
			normalize(c.normalA, c.normalA);

			// Particle has no extent to the contact point
			vec2.set(c.contactPointA,  0, 0);
			add(c.contactPointA, c.contactPointA, particleOffset);
			sub(c.contactPointA, c.contactPointA, particleBody.position);

			// From convex center to point
			sub(c.contactPointB, closestEdgeProjectedPoint, convexOffset);
			add(c.contactPointB, c.contactPointB, convexOffset);
			sub(c.contactPointB, c.contactPointB, convexBody.position);

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

		sub(dist,offsetA,offsetB);
		let r = radiusA + radiusB;
		if(squaredLength(dist) > r*r){
			return 0;
		}

		if(justTest){
			return 1;
		}

		let c = this.createContactEquation(bodyA,bodyB,shapeA,shapeB);
		let cpA = c.contactPointA;
		let cpB = c.contactPointB;
		let normalA = c.normalA;

		sub(normalA, offsetB, offsetA);
		normalize(normalA,normalA);

		scale( cpA, normalA,  radiusA);
		scale( cpB, normalA, -radiusB);

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

		let numReported = 0;
		rotate(worldNormal, yAxis, planeAngle);

		// Get convex-local plane offset and normal
		vec2.vectorToLocalFrame(localPlaneNormal, worldNormal, convexAngle);
		vec2.toLocalFrame(localPlaneOffset, planeOffset, convexOffset, convexAngle);

		let vertices = convexShape.vertices;
		for(let i=0, numVerts=vertices.length; i!==numVerts; i++){
			let v = vertices[i];

			sub(localDist, v, localPlaneOffset);

			if(dot(localDist,localPlaneNormal) <= 0){

				if(justTest){
					return 1;
				}

				vec2.toGlobalFrame(worldVertex, v, convexOffset, convexAngle);

				sub(dist, worldVertex, planeOffset);

				// Found vertex
				numReported++;

				let c = this.createContactEquation(planeBody,convexBody,planeShape,convexShape);

				sub(dist, worldVertex, planeOffset);

				copy(c.normalA, worldNormal);

				let d = dot(dist, c.normalA);
				scale(dist, c.normalA, d);

				// rj is from convex center to contact
				sub(c.contactPointB, worldVertex, convexBody.position);

				// ri is from plane center to contact
				sub( c.contactPointA, worldVertex, dist);
				sub( c.contactPointA, c.contactPointA, planeBody.position);

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

		sub(dist, particleOffset, planeOffset);
		rotate(worldNormal, yAxis, planeAngle);

		let d = dot(dist, worldNormal);

		if(d > 0){
			return 0;
		}
		if(justTest){
			return 1;
		}

		let c = this.createContactEquation(planeBody,particleBody,planeShape,particleShape);

		copy(c.normalA, worldNormal);
		scale( dist, c.normalA, d );
		// dist is now the distance vector in the normal direction

		// ri is the particle position projected down onto the plane, from the plane center
		sub( c.contactPointA, particleOffset, dist);
		sub( c.contactPointA, c.contactPointA, planeBody.position);

		// rj is from the body center to the particle center
		sub( c.contactPointB, particleOffset, particleBody.position );

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

		sub(dist, particleOffset, circleOffset);
		if(squaredLength(dist) > circleRadius*circleRadius){
			return 0;
		}
		if(justTest){
			return 1;
		}

		let c = this.createContactEquation(circleBody,particleBody,circleShape,particleShape);
		let normalA = c.normalA;
		let contactPointA = c.contactPointA;
		let contactPointB = c.contactPointB;

		copy(normalA, dist);
		normalize(normalA, normalA);

		// Vector from circle to contact point is the normal times the circle radius
		scale(contactPointA, normalA, circleRadius);
		add(contactPointA, contactPointA, circleOffset);
		sub(contactPointA, contactPointA, circleBody.position);

		// Vector from particle center to contact point is zero
		sub(contactPointB, particleOffset, particleBody.position);

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

		sub(planeToCircle, circleOffset, planeOffset);

		// World plane normal
		rotate(worldNormal, yAxis, planeAngle);

		// Normal direction distance
		let d = dot(worldNormal, planeToCircle);

		if(d > circleRadius){
			return 0; // No overlap. Abort.
		}

		if(justTest){
			return 1;
		}

		// Create contact
		let contact = this.createContactEquation(planeBody,circleBody,planeShape,circleShape);

		// ni is the plane world normal
		copy(contact.normalA, worldNormal);

		// rj is the vector from circle center to the contact point
		let cpB = contact.contactPointB;
		scale(cpB, contact.normalA, -circleRadius);
		add(cpB, cpB, circleOffset);
		sub(cpB, cpB, circleBody.position);

		// ri is the distance from plane center to contact.
		let cpA = contact.contactPointA;
		scale(temp, contact.normalA, d);
		sub(cpA, planeToCircle, temp ); // Subtract normal distance vector from the distance vector
		add(cpA, cpA, planeOffset);
		sub(cpA, cpA, planeBody.position);

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

		let totalRadius = 0;
		let dist = collidePolygons_dist;

		let tempVec = collidePolygons_tempVec;
		let tmpVec = collidePolygons_tmpVec;

		let edgeA: u32 = findMaxSeparation(tempVec, polyA, positionA, angleA, polyB, positionB, angleB);
		let separationA = tempVec[0];
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

		let edge1: u32;					// reference edge
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

		let iv1 = edge1;
		let iv2 = edge1 + 1 < count1 ? edge1 + 1 : 0;

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

		let pointCount = 0;
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
				sub(c.contactPointB, c.contactPointB, body2.position);

				vec2.scale(dist, normal, -separation);
				vec2.add(c.contactPointA, clipPoints2[i], dist);
				sub(c.contactPointA, c.contactPointA, body1.position);

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

		let data = hfShape.heights,
			w = hfShape.elementWidth,
			dist = circleHeightfield_dist,
			candidate = circleHeightfield_candidate,
			minCandidate = circleHeightfield_minCandidate,
			minCandidateNormal = circleHeightfield_minCandidateNormal,
			worldNormal = circleHeightfield_worldNormal,
			v0 = circleHeightfield_v0,
			v1 = circleHeightfield_v1;

		// Get the index of the points to test against
		let idxA = Math.floor( (circlePos[0] - radius - hfPos[0]) / w ),
			idxB = Math.ceil(  (circlePos[0] + radius - hfPos[0]) / w );

		/*if(idxB < 0 || idxA >= data.length)
			return justTest ? false : 0;*/

		if(idxA < 0){
			idxA = 0;
		}
		if(idxB >= data.length){
			idxB = data.length-1;
		}

		// Get max and min
		let max = data[idxA],
			min = data[idxB];
		for(let i=idxA; i<idxB; i++){
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
		for(let i=idxA; i<idxB; i++){

			// Get points
			vec2.set(v0,     i*w, data[i]  );
			vec2.set(v1, (i+1)*w, data[i+1]);
			add(v0,v0,hfPos); // @todo transform circle to local heightfield space instead
			add(v1,v1,hfPos);

			// Get normal
			sub(worldNormal, v1, v0);
			rotate(worldNormal, worldNormal, Math.PI/2);
			normalize(worldNormal,worldNormal);

			// Get point on circle, closest to the edge
			scale(candidate,worldNormal,-radius);
			add(candidate,candidate,circlePos);

			// Distance from v0 to the candidate point
			sub(dist,candidate,v0);

			// Check if it is in the element "stick"
			let d = dot(dist,worldNormal);
			if(candidate[0] >= v0[0] && candidate[0] < v1[0] && d <= 0){

				if(justTest){
					return 1;
				}

				found = true;

				// Store the candidate point, projected to the edge
				scale(dist,worldNormal,-d);
				add(minCandidate,candidate,dist);
				copy(minCandidateNormal,worldNormal);

				let c = this.createContactEquation(hfBody,circleBody,hfShape,circleShape);

				// Normal is out of the heightfield
				copy(c.normalA, minCandidateNormal);

				// Vector from circle to heightfield
				scale(c.contactPointB,  c.normalA, -radius);
				add(c.contactPointB, c.contactPointB, circlePos);
				sub(c.contactPointB, c.contactPointB, circleBody.position);

				copy(c.contactPointA, minCandidate);
				sub(c.contactPointA, c.contactPointA, hfBody.position);

				this.contactEquations.push(c);

				if(this.enableFriction){
					this.frictionEquations.push( this.createFrictionFromContact(c) );
				}
			}
		}

		// Check all vertices
		found = false;
		if(radius > 0){
			for(let i=idxA; i<=idxB; i++){

				// Get point
				vec2.set(v0, i*w, data[i]);
				add(v0,v0,hfPos);

				sub(dist, circlePos, v0);

				if(squaredLength(dist) < Math.pow(radius, 2)){

					if(justTest){
						return 1;
					}

					found = true;

					let c = this.createContactEquation(hfBody,circleBody,hfShape,circleShape);

					// Construct normal - out of heightfield
					copy(c.normalA, dist);
					normalize(c.normalA,c.normalA);

					scale(c.contactPointB, c.normalA, -radius);
					add(c.contactPointB, c.contactPointB, circlePos);
					sub(c.contactPointB, c.contactPointB, circleBody.position);

					sub(c.contactPointA, v0, hfPos);
					add(c.contactPointA, c.contactPointA, hfPos);
					sub(c.contactPointA, c.contactPointA, hfBody.position);

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
		let idxA = Math.floor( (convexBody.aabb.lowerBound[0] - hfPos[0]) / w ),
			idxB = Math.ceil(  (convexBody.aabb.upperBound[0] - hfPos[0]) / w );

		if(idxA < 0){
			idxA = 0;
		}
		if(idxB >= data.length){
			idxB = data.length-1;
		}

		// Get max and min
		let max = data[idxA],
			min = data[idxB];
		for(let i=idxA; i<idxB; i++){
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

		let numContacts = 0;

		// Loop over all edges
		// @todo If possible, construct a convex from several data points (need o check if the points make a convex shape)
		// @todo transform convex to local heightfield space.
		// @todo bail out if the heightfield tile is not tall enough.
		for(let i=idxA; i<idxB; i++){

			// Get points
			vec2.set(v0,     i*w, data[i]  );
			vec2.set(v1, (i+1)*w, data[i+1]);
			add(v0,v0,hfPos);
			add(v1,v1,hfPos);

			// Construct a convex
			let tileHeight = 100; // todo
			vec2.set(tilePos, (v1[0] + v0[0])*0.5, (v1[1] + v0[1] - tileHeight)*0.5);

			sub(tileConvex.vertices[0], v1, tilePos);
			sub(tileConvex.vertices[1], v0, tilePos);
			copy(tileConvex.vertices[2], tileConvex.vertices[1]);
			copy(tileConvex.vertices[3], tileConvex.vertices[0]);
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