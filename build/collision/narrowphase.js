"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var vec2_1 = __importDefault(require("../math/vec2"));
var sub = vec2_1.default.subtract, add = vec2_1.default.add, dot = vec2_1.default.dot, rotate = vec2_1.default.rotate, normalize = vec2_1.default.normalize, copy = vec2_1.default.copy, scale = vec2_1.default.scale, squaredLength = vec2_1.default.squaredLength, createVec2 = vec2_1.default.create;
var Circle_1 = __importDefault(require("../shapes/Circle"));
var Convex_1 = __importDefault(require("../shapes/Convex"));
var Box_1 = __importDefault(require("../shapes/Box"));
var contact_equation_pool_1 = __importDefault(require("../utils/contact-equation-pool"));
var friction_equation_pool_1 = __importDefault(require("../utils/friction-equation-pool"));
var tuple_dictionary_1 = __importDefault(require("../utils/tuple-dictionary"));
var yAxis = vec2_1.default.fromValues(0, 1);
var tmp1 = createVec2(), tmp2 = createVec2(), tmp3 = createVec2(), tmp4 = createVec2(), tmp5 = createVec2(), tmp6 = createVec2(), tmp7 = createVec2(), tmp8 = createVec2(), tmp9 = createVec2(), tmp10 = createVec2(), tmp11 = createVec2(), tmp12 = createVec2(), tmp13 = createVec2(), tmp14 = createVec2(), tmp15 = createVec2(), tmpArray = [];
var findMaxSeparation_n = vec2_1.default.create();
var findMaxSeparation_v1 = vec2_1.default.create();
var findMaxSeparation_tmp = vec2_1.default.create();
var findMaxSeparation_tmp2 = vec2_1.default.create();
var findIncidentEdge_normal1 = vec2_1.default.create();
var collidePolygons_tempVec = vec2_1.default.create();
var collidePolygons_tmpVec = vec2_1.default.create();
var collidePolygons_localTangent = vec2_1.default.create();
var collidePolygons_localNormal = vec2_1.default.create();
var collidePolygons_planePoint = vec2_1.default.create();
var collidePolygons_tangent = vec2_1.default.create();
var collidePolygons_normal = vec2_1.default.create();
var collidePolygons_negativeTangent = vec2_1.default.create();
var collidePolygons_v11 = vec2_1.default.create();
var collidePolygons_v12 = vec2_1.default.create();
var collidePolygons_dist = vec2_1.default.create();
var collidePolygons_clipPoints1 = [vec2_1.default.create(), vec2_1.default.create()];
var collidePolygons_clipPoints2 = [vec2_1.default.create(), vec2_1.default.create()];
var collidePolygons_incidentEdge = [vec2_1.default.create(), vec2_1.default.create()];
var pic_localPoint = createVec2(), pic_r0 = createVec2(), pic_r1 = createVec2();
var bodiesOverlap_shapePositionA = createVec2(), bodiesOverlap_shapePositionB = createVec2();
var capsuleCapsule_tempVec1 = createVec2(), capsuleCapsule_tempVec2 = createVec2();
var convexCapsule_tempVec = createVec2();
var planeCapsule_tmp1 = createVec2(), planeCapsule_tmp2 = createVec2();
var circleHeightfield_candidate = createVec2(), circleHeightfield_dist = createVec2(), circleHeightfield_v0 = createVec2(), circleHeightfield_v1 = createVec2(), circleHeightfield_minCandidate = createVec2(), circleHeightfield_worldNormal = createVec2(), circleHeightfield_minCandidateNormal = createVec2();
var convexHeightfield_v0 = createVec2(), convexHeightfield_v1 = createVec2(), convexHeightfield_tilePos = createVec2(), convexHeightfield_tempConvexShape = new Convex_1.default(undefined, [createVec2(), createVec2(), createVec2(), createVec2()]);
function setConvexToCapsuleShapeMiddle(convexShape, capsuleShape) {
    var capsuleRadius = capsuleShape.radius;
    var halfCapsuleLength = capsuleShape.length * 0.5;
    var verts = convexShape.vertices;
    vec2_1.default.set(verts[0], -halfCapsuleLength, -capsuleRadius);
    vec2_1.default.set(verts[1], halfCapsuleLength, -capsuleRadius);
    vec2_1.default.set(verts[2], halfCapsuleLength, capsuleRadius);
    vec2_1.default.set(verts[3], -halfCapsuleLength, capsuleRadius);
}
/*
* Check if a point is in a polygon
*/
function pointInConvex(worldPoint, convexShape, convexOffset, convexAngle) {
    var localPoint = pic_localPoint, r0 = pic_r0, r1 = pic_r1, verts = convexShape.vertices, lastCross = null;
    vec2_1.default.toLocalFrame(localPoint, worldPoint, convexOffset, convexAngle);
    for (var i = 0, numVerts = verts.length; i !== numVerts + 1; i++) {
        var v0 = verts[i % numVerts], v1 = verts[(i + 1) % numVerts];
        sub(r0, v0, localPoint);
        sub(r1, v1, localPoint);
        var cross = vec2_1.default.crossLength(r0, r1);
        if (lastCross === null) {
            lastCross = cross;
        }
        // If we got a different sign of the distance vector, the point is out of the polygon
        if (cross * lastCross < 0) {
            return false;
        }
        lastCross = cross;
    }
    return true;
}
/*
* Check if a point is in a polygon
*/
function pointInConvexLocal(localPoint, convexShape) {
    var r0 = pic_r0, r1 = pic_r1, verts = convexShape.vertices, lastCross = null, numVerts = verts.length;
    for (var i = 0; i < numVerts + 1; i++) {
        var v0 = verts[i % numVerts], v1 = verts[(i + 1) % numVerts];
        sub(r0, v0, localPoint);
        sub(r1, v1, localPoint);
        var cross = vec2_1.default.crossLength(r0, r1);
        if (lastCross === null) {
            lastCross = cross;
        }
        // If we got a different sign of the distance vector, the point is out of the polygon
        if (cross * lastCross < 0) {
            return false;
        }
        lastCross = cross;
    }
    return true;
}
function addSub(out, a, b, c) {
    out[0] = a[0] + b[0] - c[0];
    out[1] = a[1] + b[1] - c[1];
}
function findMaxSeparation(maxSeparationOut, poly1, position1, angle1, poly2, position2, angle2) {
    // Find the max separation between poly1 and poly2 using edge normals from poly1.
    var count1 = poly1.vertices.length;
    var count2 = poly2.vertices.length;
    var n1s = poly1.normals;
    var v1s = poly1.vertices;
    var v2s = poly2.vertices;
    var n = findMaxSeparation_n;
    var v1 = findMaxSeparation_v1;
    var tmp = findMaxSeparation_tmp;
    var tmp2 = findMaxSeparation_tmp2;
    var angle = angle1 - angle2;
    var bestIndex = 0;
    var maxSeparation = -Infinity;
    for (var i = 0; i < count1; ++i) {
        // Get poly1 normal in frame2.
        vec2_1.default.rotate(n, n1s[i], angle);
        // Get poly1 vertex in frame2
        vec2_1.default.toGlobalFrame(tmp2, v1s[i], position1, angle1);
        vec2_1.default.toLocalFrame(v1, tmp2, position2, angle2);
        // Find deepest point for normal i.
        var si = Infinity;
        for (var j = 0; j < count2; ++j) {
            vec2_1.default.subtract(tmp, v2s[j], v1);
            var sij = vec2_1.default.dot(n, tmp);
            if (sij < si) {
                si = sij;
            }
        }
        if (si > maxSeparation) {
            maxSeparation = si;
            bestIndex = i;
        }
    }
    // Use a vec2 for storing the float value and always return int, for perf
    maxSeparationOut[0] = maxSeparation;
    return bestIndex;
}
function findIncidentEdge(clipVerticesOut, poly1, position1, angle1, edge1, poly2, position2, angle2) {
    var normals1 = poly1.normals;
    var count2 = poly2.vertices.length;
    var vertices2 = poly2.vertices;
    var normals2 = poly2.normals;
    // Get the normal of the reference edge in poly2's frame.
    var normal1 = findIncidentEdge_normal1;
    vec2_1.default.rotate(normal1, normals1[edge1], angle1 - angle2);
    // Find the incident edge on poly2.
    var index = 0;
    var minDot = Infinity;
    for (var i = 0; i < count2; ++i) {
        var dot_1 = vec2_1.default.dot(normal1, normals2[i]);
        if (dot_1 < minDot) {
            minDot = dot_1;
            index = i;
        }
    }
    // Build the clip vertices for the incident edge.
    var i1 = index;
    var i2 = i1 + 1 < count2 ? i1 + 1 : 0;
    vec2_1.default.toGlobalFrame(clipVerticesOut[0], vertices2[i1], position2, angle2);
    vec2_1.default.toGlobalFrame(clipVerticesOut[1], vertices2[i2], position2, angle2);
}
function clipSegmentToLine(vOut, vIn, normal, offset) {
    // Start with no output points
    var numOut = 0;
    // Calculate the distance of end points to the line
    var distance0 = vec2_1.default.dot(normal, vIn[0]) - offset;
    var distance1 = vec2_1.default.dot(normal, vIn[1]) - offset;
    // If the points are behind the plane
    if (distance0 <= 0.0) {
        vec2_1.default.copy(vOut[numOut++], vIn[0]);
    }
    if (distance1 <= 0.0) {
        vec2_1.default.copy(vOut[numOut++], vIn[1]);
    }
    // If the points are on different sides of the plane
    if (distance0 * distance1 < 0.0) {
        // Find intersection point of edge and plane
        var interp = distance0 / (distance0 - distance1);
        var v = vOut[numOut];
        vec2_1.default.subtract(v, vIn[1], vIn[0]);
        vec2_1.default.scale(v, v, interp);
        vec2_1.default.add(v, v, vIn[0]);
        ++numOut;
    }
    return numOut;
}
var Narrowphase = /** @class */ (function () {
    /**
     * Narrowphase. Creates contacts and friction given shapes and transforms.
     * @class Narrowphase
     * @constructor
     */
    function Narrowphase() {
        /**
         * @property contactEquations
         * @type {Array}
         */
        this.contactEquations = [];
        /**
         * @property frictionEquations
         * @type {Array}
         */
        this.frictionEquations = [];
        /**
         * Whether to make friction equations in the upcoming contacts.
         * @property enableFriction
         * @type {Boolean}
         */
        this.enableFriction = true;
        /**
         * Whether to make equations enabled in upcoming contacts.
         * @property enabledEquations
         * @type {Boolean}
         */
        this.enabledEquations = true;
        /**
         * The friction slip force to use when creating friction equations.
         * @property slipForce
         * @type {Number}
         */
        this.slipForce = 10.0;
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
        this.contactEquationPool = new contact_equation_pool_1.default({ size: 32 });
        /**
         * Keeps track of the allocated ContactEquations.
         * @property {FrictionEquationPool} frictionEquationPool
         */
        this.frictionEquationPool = new friction_equation_pool_1.default({ size: 64 });
        /**
         * Enable reduction of friction equations. If disabled, a box on a plane will generate 2 contact equations and 2 friction equations. If enabled, there will be only one friction equation. Same kind of simplifications are made  for all collision types.
         * @property enableFrictionReduction
         * @type {Boolean}
         * @deprecated This flag will be removed when the feature is stable enough.
         * @default true
         */
        this.enableFrictionReduction = true;
        /**
         * Keeps track of the colliding bodies last step.
         * @private
         * @property collidingBodiesLastStep
         * @type {TupleDictionary}
         */
        this.collidingBodiesLastStep = new tuple_dictionary_1.default();
        /**
         * @property currentContactMaterial
         * @type {ContactMaterial}
         */
        this.currentContactMaterial = null;
    }
    /**
     * @method bodiesOverlap
     * @param  {Body} bodyA
     * @param  {Body} bodyB
     * @param  {boolean} [checkCollisionMasks=false]
     * @return {Boolean}
     */
    Narrowphase.prototype.bodiesOverlap = function (bodyA, bodyB, checkCollisionMasks) {
        if (checkCollisionMasks === void 0) { checkCollisionMasks = false; }
        var shapePositionA = bodiesOverlap_shapePositionA;
        var shapePositionB = bodiesOverlap_shapePositionB;
        // Loop over all shapes of bodyA
        for (var k = 0, Nshapesi = bodyA.shapes.length; k !== Nshapesi; k++) {
            var shapeA = bodyA.shapes[k];
            // All shapes of body j
            for (var l = 0, Nshapesj = bodyB.shapes.length; l !== Nshapesj; l++) {
                var shapeB = bodyB.shapes[l];
                // Check collision groups and masks
                if (checkCollisionMasks && !((shapeA.collisionGroup & shapeB.collisionMask) !== 0 && (shapeB.collisionGroup & shapeA.collisionMask) !== 0)) {
                    return false;
                }
                bodyA.toWorldFrame(shapePositionA, shapeA.position);
                bodyB.toWorldFrame(shapePositionB, shapeB.position);
                var result = 0;
                if (shapeA.type > shapeB.type) {
                    var bTmp = bodyB;
                    bodyB = bodyA;
                    bodyA = bTmp;
                    var sTmp = shapeB;
                    shapeB = shapeA;
                    shapeA = sTmp;
                    var pTmp = shapePositionB;
                    shapePositionB = shapePositionA;
                    shapePositionA = pTmp;
                }
                switch (shapeA.type | shapeB.type) {
                    case 1: { // Circle/circle
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.circleCircle(bodyA, sa, shapePositionA, bodyB, sb, shapePositionB, true, sa.radius, sb.radius);
                        break;
                    }
                    case 3: { // Particle/circle.
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.circleParticle(bodyA, sa, shapePositionA, bodyB, sb, shapePositionB, true);
                        break;
                    }
                    case 5: { // Plane/circle.
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.circlePlane(bodyA, sa, shapePositionA, bodyB, sb, shapePositionB, bodyB.angle + sb.angle, true);
                        break;
                    }
                    case 33: // Box/circle.
                    case 9: { // Convex/circle.
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.circleConvex(bodyA, sa, shapePositionA, bodyB, sb, shapePositionB, bodyB.angle + sb.angle, true, sa.radius);
                        break;
                    }
                    case 17: { // Line/circle.
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.circleLine(bodyA, sa, shapePositionA, bodyB, sb, shapePositionB, bodyB.angle + sb.angle, true, 0, sa.radius);
                        break;
                    }
                    case 65: { // Capsule/circle.
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.circleCapsule(bodyA, sa, shapePositionA, bodyB, sb, shapePositionB, bodyB.angle + sb.angle, true);
                        break;
                    }
                    case 129: { // Heightfield/circle.
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.circleHeightfield(bodyA, sa, shapePositionA, bodyB, sb, shapePositionB, true, sa.radius);
                        break;
                    }
                    case 6: { // Plane/particle.
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.particlePlane(bodyA, sa, shapePositionA, bodyB, sb, shapePositionB, bodyB.angle + sb.angle, true);
                        break;
                    }
                    case 34: // Box/particle.
                    case 10: { // Convex/particle.
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.particleConvex(bodyA, sa, shapePositionA, bodyB, sb, shapePositionB, bodyB.angle + sb.angle, true);
                        break;
                    }
                    case 10: { // Capsule/particle.
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.particleCapsule(bodyA, sa, shapePositionA, bodyB, sb, shapePositionB, bodyB.angle + sb.angle, true);
                        break;
                    }
                    case 36: // Box/plane.
                    case 12: { // Convex/plane.
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.planeConvex(bodyA, sa, shapePositionA, bodyA.angle + sa.angle, bodyB, sb, shapePositionB, bodyB.angle + sb.angle, true);
                        break;
                    }
                    case 20: { // Line/plane.
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.planeLine(bodyA, sa, shapePositionA, bodyA.angle + sa.angle, bodyB, sb, shapePositionB, bodyB.angle + sb.angle, true);
                        break;
                    }
                    case 68: { // Capsule/plane.
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.planeCapsule(bodyA, sa, shapePositionA, bodyA.angle + sa.angle, bodyB, sb, shapePositionB, bodyB.angle + sb.angle, true);
                        break;
                    }
                    case 40: // Box/convex.
                    case 8: { // Convex/convex.
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.convexConvex(bodyA, sa, shapePositionA, bodyA.angle + sa.angle, bodyB, sb, shapePositionB, bodyB.angle + sb.angle, true);
                        break;
                    }
                    case 24: { // Line/convex.
                        var sa = shapeA;
                        var sb = shapeB;
                        // NOT SUPPORTED!
                        // result = this.convexLine(bodyA, sa, shapePositionA, bodyA.angle + sa.angle,
                        // 	bodyB, sb, shapePositionB, bodyB.angle + sb.angle, 
                        // 	true);
                        break;
                    }
                    case 72: { // Capsule/convex.
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.convexCapsule(bodyA, sa, shapePositionA, bodyA.angle + sa.angle, bodyB, sb, shapePositionB, bodyB.angle + sb.angle, true);
                        break;
                    }
                    case 136: { // Heightfield/convex.
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.convexHeightfield(bodyA, sa, shapePositionA, bodyA.angle + sa.angle, bodyB, sb, shapePositionB, true);
                        break;
                    }
                    case 16: { // Line/line.
                        var sa = shapeA;
                        var sb = shapeB;
                        // NOT SUPPORTED!
                        // result = this.lineLine(bodyA, sa, shapePositionA, bodyA.angle + sa.angle,
                        // 	bodyB, sb, shapePositionB, bodyB.angle + sb.angle,
                        // 	true);
                        break;
                    }
                    case 48: { // Box/line.
                        var sa = shapeA;
                        var sb = shapeB;
                        // NOT SUPPORTED!
                        // result = this.lineBox(bodyA, sa, shapePositionA, bodyA.angle + sa.angle,
                        // 	bodyB, sb, shapePositionB, bodyB.angle + sb.angle,
                        // 	true);
                        break;
                    }
                    case 80: { // Capsule/line.
                        var sa = shapeA;
                        var sb = shapeB;
                        // NOT SUPPORTED!
                        // result = this.lineCapsule(bodyA, sa, shapePositionA, bodyA.angle + sa.angle,
                        // 	bodyB, sb, shapePositionB, bodyB.angle + sb.angle,
                        // 	true);
                        break;
                    }
                    case 64: { // Capsule/capsule.
                        var sa = shapeA;
                        var sb = shapeB;
                        result = this.capsuleCapsule(bodyA, sa, shapePositionA, bodyA.angle + sa.angle, bodyB, sb, shapePositionB, bodyB.angle + sb.angle, true);
                        break;
                    }
                }
                if (result)
                    return true;
            }
        }
        return false;
    };
    ;
    /**
     * Check if the bodies were in contact since the last reset().
     * @method collidedLastStep
     * @param  {Body} bodyA
     * @param  {Body} bodyB
     * @return {Boolean}
     */
    Narrowphase.prototype.collidedLastStep = function (bodyA, bodyB) {
        var id1 = bodyA.id | 0, id2 = bodyB.id | 0;
        return !!this.collidingBodiesLastStep.get(id1, id2);
    };
    ;
    /**
     * Throws away the old equations and gets ready to create new
     * @method reset
     */
    Narrowphase.prototype.reset = function () {
        this.collidingBodiesLastStep.reset();
        var eqs = this.contactEquations;
        var l = eqs.length;
        while (l--) {
            var eq = eqs[l], id1 = eq.bodyA.id, id2 = eq.bodyB.id;
            this.collidingBodiesLastStep.set(id1, id2, 1);
        }
        var ce = this.contactEquations, fe = this.frictionEquations;
        for (var i = 0; i < ce.length; i++) {
            this.contactEquationPool.release(ce[i]);
        }
        for (var i = 0; i < fe.length; i++) {
            this.frictionEquationPool.release(fe[i]);
        }
        // Reset
        this.contactEquations.length = this.frictionEquations.length = 0;
    };
    ;
    /**
     * Creates a ContactEquation, either by reusing an existing object or creating a new one.
     * @method createContactEquation
     * @param  {Body} bodyA
     * @param  {Body} bodyB
     * @return {ContactEquation}
     */
    Narrowphase.prototype.createContactEquation = function (bodyA, bodyB, shapeA, shapeB) {
        var c = this.contactEquationPool.get();
        var currentContactMaterial = this.currentContactMaterial;
        c.bodyA = bodyA;
        c.bodyB = bodyB;
        c.shapeA = shapeA;
        c.shapeB = shapeB;
        c.enabled = this.enabledEquations;
        c.firstImpact = !this.collidedLastStep(bodyA, bodyB);
        c.restitution = currentContactMaterial.restitution;
        c.stiffness = currentContactMaterial.stiffness;
        c.relaxation = currentContactMaterial.relaxation;
        c.offset = currentContactMaterial.contactSkinSize;
        c.needsUpdate = true;
        return c;
    };
    ;
    /**
     * Creates a FrictionEquation, either by reusing an existing object or creating a new one.
     * @method createFrictionEquation
     * @param  {Body} bodyA
     * @param  {Body} bodyB
     * @return {FrictionEquation}
     */
    Narrowphase.prototype.createFrictionEquation = function (bodyA, bodyB, shapeA, shapeB) {
        var c = this.frictionEquationPool.get();
        var currentContactMaterial = this.currentContactMaterial;
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
    ;
    /**
     * Creates a FrictionEquation given the data in the ContactEquation. Uses same offset vectors ri and rj, but the tangent vector will be constructed from the collision normal.
     * @method createFrictionFromContact
     * @param  {ContactEquation} contactEquation
     * @return {FrictionEquation}
     */
    Narrowphase.prototype.createFrictionFromContact = function (c) {
        var eq = this.createFrictionEquation(c.bodyA, c.bodyB, c.shapeA, c.shapeB);
        copy(eq.contactPointA, c.contactPointA);
        copy(eq.contactPointB, c.contactPointB);
        vec2_1.default.rotate90cw(eq.t, c.normalA);
        eq.contactEquations.push(c);
        return eq;
    };
    ;
    // Take the average N latest contact point on the plane.
    Narrowphase.prototype.createFrictionFromAverage = function (numContacts) {
        var c = this.contactEquations[this.contactEquations.length - 1];
        var eq = this.createFrictionEquation(c.bodyA, c.bodyB, c.shapeA, c.shapeB);
        var bodyA = c.bodyA;
        vec2_1.default.set(eq.contactPointA, 0, 0);
        vec2_1.default.set(eq.contactPointB, 0, 0);
        vec2_1.default.set(eq.t, 0, 0);
        for (var i = 0; i < numContacts; i++) {
            c = this.contactEquations[this.contactEquations.length - 1 - i];
            if (c.bodyA === bodyA) {
                add(eq.t, eq.t, c.normalA);
                add(eq.contactPointA, eq.contactPointA, c.contactPointA);
                add(eq.contactPointB, eq.contactPointB, c.contactPointB);
            }
            else {
                sub(eq.t, eq.t, c.normalA);
                add(eq.contactPointA, eq.contactPointA, c.contactPointB);
                add(eq.contactPointB, eq.contactPointB, c.contactPointA);
            }
            eq.contactEquations.push(c);
        }
        var invNumContacts = 1 / numContacts;
        scale(eq.contactPointA, eq.contactPointA, invNumContacts);
        scale(eq.contactPointB, eq.contactPointB, invNumContacts);
        normalize(eq.t, eq.t);
        vec2_1.default.rotate90cw(eq.t, eq.t);
        return eq;
    };
    ;
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
    Narrowphase.prototype.convexLine = function (
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
    ) {
        // TODO
        return 0;
    };
    ;
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
     * @param  {Boolean}    justTest
     * @return {number}
     * @todo Implement me!
     */
    //Narrowphase.prototype[Shape.LINE | Shape.BOX] =
    Narrowphase.prototype.lineBox = function (
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
    ) {
        // TODO
        return 0;
    };
    ;
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
    Narrowphase.prototype.convexCapsule = function (convexBody, convexShape, convexPosition, convexAngle, capsuleBody, capsuleShape, capsulePosition, capsuleAngle, justTest) {
        var convexCapsule_tempRect = new Box_1.default({ width: 1, height: 1 });
        // Check the circles
        // Add offsets!
        var circlePos = convexCapsule_tempVec;
        var halfLength = capsuleShape.length / 2;
        vec2_1.default.set(circlePos, halfLength, 0);
        vec2_1.default.toGlobalFrame(circlePos, circlePos, capsulePosition, capsuleAngle);
        var result1 = this.circleConvex(capsuleBody, capsuleShape, circlePos, convexBody, convexShape, convexPosition, convexAngle, justTest, capsuleShape.radius);
        vec2_1.default.set(circlePos, -halfLength, 0);
        vec2_1.default.toGlobalFrame(circlePos, circlePos, capsulePosition, capsuleAngle);
        var result2 = this.circleConvex(capsuleBody, capsuleShape, circlePos, convexBody, convexShape, convexPosition, convexAngle, justTest, capsuleShape.radius);
        if (justTest && (result1 + result2) !== 0) {
            return 1;
        }
        // Check center rect
        var r = convexCapsule_tempRect;
        setConvexToCapsuleShapeMiddle(r, capsuleShape);
        var result = this.convexConvex(convexBody, convexShape, convexPosition, convexAngle, capsuleBody, r, capsulePosition, capsuleAngle, justTest);
        return result + result1 + result2;
    };
    ;
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
    Narrowphase.prototype.lineCapsule = function (
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
    ) {
        // TODO
        return 0;
    };
    ;
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
    Narrowphase.prototype.capsuleCapsule = function (bi, si, xi, ai, bj, sj, xj, aj, justTest) {
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
    ;
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
    Narrowphase.prototype.lineLine = function (
    /* bodyA,
        shapeA,
        positionA,
        angleA,
        bodyB,
        shapeB,
        positionB,
        angleB,
        justTest*/
    ) {
        // TODO
        return 0;
    };
    ;
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
    Narrowphase.prototype.planeLine = function (planeBody, planeShape, planeOffset, planeAngle, lineBody, lineShape, lineOffset, lineAngle, justTest) {
        var worldVertex0 = tmp1, worldVertex1 = tmp2, worldVertex01 = tmp3, worldVertex11 = tmp4, worldEdge = tmp5, worldEdgeUnit = tmp6, dist = tmp7, worldNormal = tmp8, worldTangent = tmp9, verts = tmpArray, numContacts = 0;
        // Get start and end points
        vec2_1.default.set(worldVertex0, -lineShape.length / 2, 0);
        vec2_1.default.set(worldVertex1, lineShape.length / 2, 0);
        // Not sure why we have to use worldVertex*1 here, but it won't work otherwise. Tired.
        vec2_1.default.toGlobalFrame(worldVertex01, worldVertex0, lineOffset, lineAngle);
        vec2_1.default.toGlobalFrame(worldVertex11, worldVertex1, lineOffset, lineAngle);
        copy(worldVertex0, worldVertex01);
        copy(worldVertex1, worldVertex11);
        // Get vector along the line
        sub(worldEdge, worldVertex1, worldVertex0);
        normalize(worldEdgeUnit, worldEdge);
        // Get tangent to the edge.
        vec2_1.default.rotate90cw(worldTangent, worldEdgeUnit);
        rotate(worldNormal, yAxis, planeAngle);
        // Check line ends
        verts[0] = worldVertex0;
        verts[1] = worldVertex1;
        for (var i = 0; i < verts.length; i++) {
            var v = verts[i];
            sub(dist, v, planeOffset);
            var d = dot(dist, worldNormal);
            if (d < 0) {
                if (justTest) {
                    return 1;
                }
                var c = this.createContactEquation(planeBody, lineBody, planeShape, lineShape);
                numContacts++;
                copy(c.normalA, worldNormal);
                normalize(c.normalA, c.normalA);
                // distance vector along plane normal
                scale(dist, worldNormal, d);
                // Vector from plane center to contact
                sub(c.contactPointA, v, dist);
                sub(c.contactPointA, c.contactPointA, planeBody.position);
                // From line center to contact
                sub(c.contactPointB, v, lineOffset);
                add(c.contactPointB, c.contactPointB, lineOffset);
                sub(c.contactPointB, c.contactPointB, lineBody.position);
                this.contactEquations.push(c);
                if (!this.enableFrictionReduction) {
                    if (this.enableFriction) {
                        this.frictionEquations.push(this.createFrictionFromContact(c));
                    }
                }
            }
        }
        if (justTest) {
            return 0;
        }
        if (!this.enableFrictionReduction) {
            if (numContacts && this.enableFriction) {
                this.frictionEquations.push(this.createFrictionFromAverage(numContacts));
            }
        }
        return numContacts;
    };
    ;
    //Narrowphase.prototype[Shape.PARTICLE | Shape.CAPSULE] =
    Narrowphase.prototype.particleCapsule = function (particleBody, particleShape, particlePosition, capsuleBody, capsuleShape, capsulePosition, capsuleAngle, justTest) {
        return this.circleLine(particleBody, particleShape, particlePosition, capsuleBody, capsuleShape, capsulePosition, capsuleAngle, justTest, capsuleShape.radius, 0);
    };
    ;
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
     * @param {Boolean} justTest If set to true, this function will return the result (intersection or not) without adding equations.
     * @param {Number} lineRadius Radius to add to the line. Can be used to test Capsules.
     * @param {Number} circleRadius If set, this value overrides the circle shape radius.
     * @return {number}
     */
    //Narrowphase.prototype[Shape.CIRCLE | Shape.LINE] =
    Narrowphase.prototype.circleLine = function (circleBody, circleShape, circleOffset, 
    //circleAngle: f32,
    lineBody, lineShape, lineOffset, lineAngle, justTest, lineRadius, circleRadius) {
        lineRadius = lineRadius !== null && lineRadius !== void 0 ? lineRadius : 0;
        var orthoDist = tmp1;
        var lineToCircleOrthoUnit = tmp2;
        var projectedPoint = tmp3;
        var centerDist = tmp4;
        var worldTangent = tmp5;
        var worldEdge = tmp6;
        var worldEdgeUnit = tmp7;
        var worldVertex0 = tmp8;
        var worldVertex1 = tmp9;
        var worldVertex01 = tmp10;
        var worldVertex11 = tmp11;
        var dist = tmp12;
        var lineToCircle = tmp13;
        var lineEndToLineRadius = tmp14;
        var verts = tmpArray;
        var halfLineLength = lineShape.length / 2;
        // Get start and end points
        vec2_1.default.set(worldVertex0, -halfLineLength, 0);
        vec2_1.default.set(worldVertex1, halfLineLength, 0);
        // Not sure why we have to use worldVertex*1 here, but it won't work otherwise. Tired.
        vec2_1.default.toGlobalFrame(worldVertex01, worldVertex0, lineOffset, lineAngle);
        vec2_1.default.toGlobalFrame(worldVertex11, worldVertex1, lineOffset, lineAngle);
        copy(worldVertex0, worldVertex01);
        copy(worldVertex1, worldVertex11);
        // Get vector along the line
        sub(worldEdge, worldVertex1, worldVertex0);
        normalize(worldEdgeUnit, worldEdge);
        // Get tangent to the edge.
        vec2_1.default.rotate90cw(worldTangent, worldEdgeUnit);
        // Check distance from the plane spanned by the edge vs the circle
        sub(dist, circleOffset, worldVertex0);
        var d = dot(dist, worldTangent); // Distance from center of line to circle center
        sub(centerDist, worldVertex0, lineOffset);
        sub(lineToCircle, circleOffset, lineOffset);
        var radiusSum = circleRadius + lineRadius;
        if (Math.abs(d) < radiusSum) {
            // Now project the circle onto the edge
            scale(orthoDist, worldTangent, d);
            sub(projectedPoint, circleOffset, orthoDist);
            // Add the missing line radius
            scale(lineToCircleOrthoUnit, worldTangent, dot(worldTangent, lineToCircle));
            normalize(lineToCircleOrthoUnit, lineToCircleOrthoUnit);
            scale(lineToCircleOrthoUnit, lineToCircleOrthoUnit, lineRadius);
            add(projectedPoint, projectedPoint, lineToCircleOrthoUnit);
            // Check if the point is within the edge span
            var pos = dot(worldEdgeUnit, projectedPoint);
            var pos0 = dot(worldEdgeUnit, worldVertex0);
            var pos1 = dot(worldEdgeUnit, worldVertex1);
            if (pos > pos0 && pos < pos1) {
                // We got contact!
                if (justTest) {
                    return 1;
                }
                var c = this.createContactEquation(circleBody, lineBody, circleShape, lineShape);
                scale(c.normalA, orthoDist, -1);
                normalize(c.normalA, c.normalA);
                scale(c.contactPointA, c.normalA, circleRadius);
                add(c.contactPointA, c.contactPointA, circleOffset);
                sub(c.contactPointA, c.contactPointA, circleBody.position);
                sub(c.contactPointB, projectedPoint, lineOffset);
                add(c.contactPointB, c.contactPointB, lineOffset);
                sub(c.contactPointB, c.contactPointB, lineBody.position);
                this.contactEquations.push(c);
                if (this.enableFriction) {
                    this.frictionEquations.push(this.createFrictionFromContact(c));
                }
                return 1;
            }
        }
        // Add corner
        verts[0] = worldVertex0;
        verts[1] = worldVertex1;
        for (var i = 0; i < verts.length; i++) {
            var v = verts[i];
            sub(dist, v, circleOffset);
            if (squaredLength(dist) < Math.pow(radiusSum, 2)) {
                if (justTest) {
                    return 1;
                }
                var c = this.createContactEquation(circleBody, lineBody, circleShape, lineShape);
                copy(c.normalA, dist);
                normalize(c.normalA, c.normalA);
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
                if (this.enableFriction) {
                    this.frictionEquations.push(this.createFrictionFromContact(c));
                }
                return 1;
            }
        }
        return 0;
    };
    ;
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
    Narrowphase.prototype.circleCapsule = function (bi, si, xi, bj, sj, xj, aj, justTest) {
        return this.circleLine(bi, si, xi, bj, sj, xj, aj, justTest, 0, si.radius);
    };
    ;
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
     * @param  {Boolean} justTest
     * @param  {Number} circleRadius
     * @return {number}
     * @todo Should probably do a separating axis test like https://github.com/erincatto/Box2D/blob/master/Box2D/Box2D/Collision/b2CollideCircle.cpp#L62
     */
    //Narrowphase.prototype[Shape.CIRCLE | Shape.CONVEX] =
    //Narrowphase.prototype[Shape.CIRCLE | Shape.BOX] =
    Narrowphase.prototype.circleConvex = function (circleBody, circleShape, circleOffset, convexBody, convexShape, convexOffset, convexAngle, justTest, circleRadius) {
        var worldVertex0 = tmp1, worldVertex1 = tmp2, edge = tmp3, edgeUnit = tmp4, normal = tmp5, zero = tmp6, localCirclePosition = tmp7, r = tmp8, dist = tmp10, worldVertex = tmp11, closestEdgeProjectedPoint = tmp13, candidate = tmp14, candidateDist = tmp15, found = -1, minCandidateDistance = Infinity;
        vec2_1.default.set(zero, 0, 0);
        // New algorithm:
        // 1. Check so center of circle is not inside the polygon. If it is, this wont work...
        // 2. For each edge
        // 2. 1. Get point on circle that is closest to the edge (scale normal with -radius)
        // 2. 2. Check if point is inside.
        vec2_1.default.toLocalFrame(localCirclePosition, circleOffset, convexOffset, convexAngle);
        var vertices = convexShape.vertices;
        var normals = convexShape.normals;
        var numVertices = vertices.length;
        var normalIndex = -1;
        // Find the min separating edge.
        var separation = -Infinity;
        var radius = convexShape.boundingRadius + circleRadius;
        for (var i = 0; i < numVertices; i++) {
            sub(r, localCirclePosition, vertices[i]);
            var s = dot(normals[i], r);
            if (s > radius) {
                // Early out.
                return 0;
            }
            if (s > separation) {
                separation = s;
                normalIndex = i;
            }
        }
        // Check edges first
        for (var i = normalIndex + numVertices - 1; i < normalIndex + numVertices + 2; i++) {
            var v0 = vertices[i % numVertices], n = normals[i % numVertices];
            // Get point on circle, closest to the convex
            scale(candidate, n, -circleRadius);
            add(candidate, candidate, localCirclePosition);
            if (pointInConvexLocal(candidate, convexShape)) {
                sub(candidateDist, v0, candidate);
                var candidateDistance = Math.abs(dot(candidateDist, n));
                if (candidateDistance < minCandidateDistance) {
                    minCandidateDistance = candidateDistance;
                    found = i;
                }
            }
        }
        if (found !== -1) {
            if (justTest) {
                return 1;
            }
            var v0 = vertices[found % numVertices], v1 = vertices[(found + 1) % numVertices];
            vec2_1.default.toGlobalFrame(worldVertex0, v0, convexOffset, convexAngle);
            vec2_1.default.toGlobalFrame(worldVertex1, v1, convexOffset, convexAngle);
            sub(edge, worldVertex1, worldVertex0);
            normalize(edgeUnit, edge);
            // Get tangent to the edge. Points out of the Convex
            vec2_1.default.rotate90cw(normal, edgeUnit);
            // Get point on circle, closest to the convex
            scale(candidate, normal, -circleRadius);
            add(candidate, candidate, circleOffset);
            scale(closestEdgeProjectedPoint, normal, minCandidateDistance);
            add(closestEdgeProjectedPoint, closestEdgeProjectedPoint, candidate);
            var c = this.createContactEquation(circleBody, convexBody, circleShape, convexShape);
            sub(c.normalA, candidate, circleOffset);
            normalize(c.normalA, c.normalA);
            scale(c.contactPointA, c.normalA, circleRadius);
            add(c.contactPointA, c.contactPointA, circleOffset);
            sub(c.contactPointA, c.contactPointA, circleBody.position);
            sub(c.contactPointB, closestEdgeProjectedPoint, convexOffset);
            add(c.contactPointB, c.contactPointB, convexOffset);
            sub(c.contactPointB, c.contactPointB, convexBody.position);
            this.contactEquations.push(c);
            if (this.enableFriction) {
                this.frictionEquations.push(this.createFrictionFromContact(c));
            }
            return 1;
        }
        // Check closest vertices
        if (circleRadius > 0 && normalIndex !== -1) {
            for (var i = normalIndex + numVertices; i < normalIndex + numVertices + 2; i++) {
                var localVertex = vertices[i % numVertices];
                sub(dist, localVertex, localCirclePosition);
                if (squaredLength(dist) < circleRadius * circleRadius) {
                    if (justTest) {
                        return 1;
                    }
                    vec2_1.default.toGlobalFrame(worldVertex, localVertex, convexOffset, convexAngle);
                    sub(dist, worldVertex, circleOffset);
                    var c = this.createContactEquation(circleBody, convexBody, circleShape, convexShape);
                    copy(c.normalA, dist);
                    normalize(c.normalA, c.normalA);
                    // Vector from circle to contact point is the normal times the circle radius
                    scale(c.contactPointA, c.normalA, circleRadius);
                    add(c.contactPointA, c.contactPointA, circleOffset);
                    sub(c.contactPointA, c.contactPointA, circleBody.position);
                    sub(c.contactPointB, worldVertex, convexOffset);
                    add(c.contactPointB, c.contactPointB, convexOffset);
                    sub(c.contactPointB, c.contactPointB, convexBody.position);
                    this.contactEquations.push(c);
                    if (this.enableFriction) {
                        this.frictionEquations.push(this.createFrictionFromContact(c));
                    }
                    return 1;
                }
            }
        }
        return 0;
    };
    ;
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
     * @param {Boolean} justTest
     * @return {number}
     * @todo use pointInConvex and code more similar to circleConvex
     * @todo don't transform each vertex, but transform the particle position to convex-local instead
     */
    //Narrowphase.prototype[Shape.PARTICLE | Shape.CONVEX] =
    //Narrowphase.prototype[Shape.PARTICLE | Shape.BOX] =
    Narrowphase.prototype.particleConvex = function (particleBody, particleShape, particleOffset, convexBody, convexShape, convexOffset, convexAngle, justTest) {
        var worldVertex0 = tmp1, worldVertex1 = tmp2, worldEdge = tmp3, worldEdgeUnit = tmp4, worldTangent = tmp5, centerDist = tmp6, convexToparticle = tmp7, closestEdgeProjectedPoint = tmp13, candidateDist = tmp14, minEdgeNormal = tmp15, minCandidateDistance = Infinity, found = false, verts = convexShape.vertices;
        // Check if the particle is in the polygon at all
        if (!pointInConvex(particleOffset, convexShape, convexOffset, convexAngle)) {
            return 0;
        }
        if (justTest) {
            return 1;
        }
        // Check edges first
        for (var i = 0, numVerts = verts.length; i !== numVerts + 1; i++) {
            var v0 = verts[i % numVerts], v1 = verts[(i + 1) % numVerts];
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
            vec2_1.default.rotate90cw(worldTangent, worldEdgeUnit);
            // Check distance from the infinite line (spanned by the edge) to the particle
            //sub(dist, particleOffset, worldVertex0);
            //let d = dot(dist, worldTangent);
            sub(centerDist, worldVertex0, convexOffset);
            sub(convexToparticle, particleOffset, convexOffset);
            sub(candidateDist, worldVertex0, particleOffset);
            var candidateDistance = Math.abs(dot(candidateDist, worldTangent));
            if (candidateDistance < minCandidateDistance) {
                minCandidateDistance = candidateDistance;
                scale(closestEdgeProjectedPoint, worldTangent, candidateDistance);
                add(closestEdgeProjectedPoint, closestEdgeProjectedPoint, particleOffset);
                copy(minEdgeNormal, worldTangent);
                found = true;
            }
        }
        if (found) {
            var c = this.createContactEquation(particleBody, convexBody, particleShape, convexShape);
            scale(c.normalA, minEdgeNormal, -1);
            normalize(c.normalA, c.normalA);
            // Particle has no extent to the contact point
            vec2_1.default.set(c.contactPointA, 0, 0);
            add(c.contactPointA, c.contactPointA, particleOffset);
            sub(c.contactPointA, c.contactPointA, particleBody.position);
            // From convex center to point
            sub(c.contactPointB, closestEdgeProjectedPoint, convexOffset);
            add(c.contactPointB, c.contactPointB, convexOffset);
            sub(c.contactPointB, c.contactPointB, convexBody.position);
            this.contactEquations.push(c);
            if (this.enableFriction) {
                this.frictionEquations.push(this.createFrictionFromContact(c));
            }
            return 1;
        }
        return 0;
    };
    ;
    /**
     * Circle/circle Narrowphase
     * @method circleCircle
     * @param  {Body} bodyA
     * @param  {Circle} shapeA
     * @param  {Array} offsetA
     * @param  {Body} bodyB
     * @param  {Circle} shapeB
     * @param  {Array} offsetB
     * @param {Boolean} justTest
     * @param {Number} [radiusA] Optional radius to use for shapeA
     * @param {Number} [radiusB] Optional radius to use for shapeB
     * @return {number}
     */
    //Narrowphase.prototype[Shape.CIRCLE] =
    Narrowphase.prototype.circleCircle = function (bodyA, shapeA, offsetA, bodyB, shapeB, offsetB, justTest, radiusA, radiusB) {
        var dist = tmp1;
        sub(dist, offsetA, offsetB);
        var r = radiusA + radiusB;
        if (squaredLength(dist) > r * r) {
            return 0;
        }
        if (justTest) {
            return 1;
        }
        var c = this.createContactEquation(bodyA, bodyB, shapeA, shapeB);
        var cpA = c.contactPointA;
        var cpB = c.contactPointB;
        var normalA = c.normalA;
        sub(normalA, offsetB, offsetA);
        normalize(normalA, normalA);
        scale(cpA, normalA, radiusA);
        scale(cpB, normalA, -radiusB);
        addSub(cpA, cpA, offsetA, bodyA.position);
        addSub(cpB, cpB, offsetB, bodyB.position);
        this.contactEquations.push(c);
        if (this.enableFriction) {
            this.frictionEquations.push(this.createFrictionFromContact(c));
        }
        return 1;
    };
    ;
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
     * @param {Boolean} justTest
     * @return {number}
     * @todo only use the deepest contact point + the contact point furthest away from it
     */
    //Narrowphase.prototype[Shape.PLANE | Shape.CONVEX] =
    //Narrowphase.prototype[Shape.PLANE | Shape.BOX] =
    Narrowphase.prototype.planeConvex = function (planeBody, planeShape, planeOffset, planeAngle, convexBody, convexShape, convexOffset, convexAngle, justTest) {
        var worldVertex = tmp1, worldNormal = tmp2, dist = tmp3, localPlaneOffset = tmp4, localPlaneNormal = tmp5, localDist = tmp6;
        var numReported = 0;
        rotate(worldNormal, yAxis, planeAngle);
        // Get convex-local plane offset and normal
        vec2_1.default.vectorToLocalFrame(localPlaneNormal, worldNormal, convexAngle);
        vec2_1.default.toLocalFrame(localPlaneOffset, planeOffset, convexOffset, convexAngle);
        var vertices = convexShape.vertices;
        for (var i = 0, numVerts = vertices.length; i !== numVerts; i++) {
            var v = vertices[i];
            sub(localDist, v, localPlaneOffset);
            if (dot(localDist, localPlaneNormal) <= 0) {
                if (justTest) {
                    return 1;
                }
                vec2_1.default.toGlobalFrame(worldVertex, v, convexOffset, convexAngle);
                sub(dist, worldVertex, planeOffset);
                // Found vertex
                numReported++;
                var c = this.createContactEquation(planeBody, convexBody, planeShape, convexShape);
                sub(dist, worldVertex, planeOffset);
                copy(c.normalA, worldNormal);
                var d = dot(dist, c.normalA);
                scale(dist, c.normalA, d);
                // rj is from convex center to contact
                sub(c.contactPointB, worldVertex, convexBody.position);
                // ri is from plane center to contact
                sub(c.contactPointA, worldVertex, dist);
                sub(c.contactPointA, c.contactPointA, planeBody.position);
                this.contactEquations.push(c);
                if (!this.enableFrictionReduction) {
                    if (this.enableFriction) {
                        this.frictionEquations.push(this.createFrictionFromContact(c));
                    }
                }
            }
        }
        if (this.enableFrictionReduction) {
            if (this.enableFriction && numReported) {
                this.frictionEquations.push(this.createFrictionFromAverage(numReported));
            }
        }
        return numReported;
    };
    ;
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
     * @param {Boolean}     justTest
     * @return {number}
     */
    //Narrowphase.prototype[Shape.PARTICLE | Shape.PLANE] =
    Narrowphase.prototype.particlePlane = function (particleBody, particleShape, particleOffset, planeBody, planeShape, planeOffset, planeAngle, justTest) {
        var dist = tmp1, worldNormal = tmp2;
        planeAngle = planeAngle || 0;
        sub(dist, particleOffset, planeOffset);
        rotate(worldNormal, yAxis, planeAngle);
        var d = dot(dist, worldNormal);
        if (d > 0) {
            return 0;
        }
        if (justTest) {
            return 1;
        }
        var c = this.createContactEquation(planeBody, particleBody, planeShape, particleShape);
        copy(c.normalA, worldNormal);
        scale(dist, c.normalA, d);
        // dist is now the distance vector in the normal direction
        // ri is the particle position projected down onto the plane, from the plane center
        sub(c.contactPointA, particleOffset, dist);
        sub(c.contactPointA, c.contactPointA, planeBody.position);
        // rj is from the body center to the particle center
        sub(c.contactPointB, particleOffset, particleBody.position);
        this.contactEquations.push(c);
        if (this.enableFriction) {
            this.frictionEquations.push(this.createFrictionFromContact(c));
        }
        return 1;
    };
    ;
    /**
     * Circle/Particle Narrowphase
     * @method circleParticle
     * @param  {Body} circleBody
     * @param  {Circle} circleShape
     * @param  {Array} circleOffset
     * @param  {Body} particleBody
     * @param  {Particle} particleShape
     * @param  {Array} particleOffset
     * @param  {Boolean} justTest
     * @return {number}
     */
    //Narrowphase.prototype[Shape.CIRCLE | Shape.PARTICLE] =
    Narrowphase.prototype.circleParticle = function (circleBody, circleShape, circleOffset, particleBody, particleShape, particleOffset, justTest) {
        var dist = tmp1;
        var circleRadius = circleShape.radius;
        sub(dist, particleOffset, circleOffset);
        if (squaredLength(dist) > circleRadius * circleRadius) {
            return 0;
        }
        if (justTest) {
            return 1;
        }
        var c = this.createContactEquation(circleBody, particleBody, circleShape, particleShape);
        var normalA = c.normalA;
        var contactPointA = c.contactPointA;
        var contactPointB = c.contactPointB;
        copy(normalA, dist);
        normalize(normalA, normalA);
        // Vector from circle to contact point is the normal times the circle radius
        scale(contactPointA, normalA, circleRadius);
        add(contactPointA, contactPointA, circleOffset);
        sub(contactPointA, contactPointA, circleBody.position);
        // Vector from particle center to contact point is zero
        sub(contactPointB, particleOffset, particleBody.position);
        this.contactEquations.push(c);
        if (this.enableFriction) {
            this.frictionEquations.push(this.createFrictionFromContact(c));
        }
        return 1;
    };
    ;
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
     * @param {Boolean} justTest
     * @return {number}
     */
    //Narrowphase.prototype[Shape.PLANE | Shape.CAPSULE] =
    Narrowphase.prototype.planeCapsule = function (planeBody, planeShape, planeOffset, planeAngle, capsuleBody, capsuleShape, capsuleOffset, capsuleAngle, justTest) {
        var planeCapsule_tmpCircle = new Circle_1.default({ radius: 1 });
        var end1 = planeCapsule_tmp1, end2 = planeCapsule_tmp2, circle = planeCapsule_tmpCircle, halfLength = capsuleShape.length / 2;
        // Compute world end positions
        vec2_1.default.set(end1, -halfLength, 0);
        vec2_1.default.set(end2, halfLength, 0);
        vec2_1.default.toGlobalFrame(end1, end1, capsuleOffset, capsuleAngle);
        vec2_1.default.toGlobalFrame(end2, end2, capsuleOffset, capsuleAngle);
        circle.radius = capsuleShape.radius;
        var enableFrictionBefore = this.enableFriction;
        // Temporarily turn off friction
        if (this.enableFrictionReduction) {
            this.enableFriction = false;
        }
        // Do Narrowphase as two circles
        var numContacts1 = this.circlePlane(capsuleBody, circle, end1, planeBody, planeShape, planeOffset, planeAngle, justTest), numContacts2 = this.circlePlane(capsuleBody, circle, end2, planeBody, planeShape, planeOffset, planeAngle, justTest);
        // Restore friction
        if (this.enableFrictionReduction) {
            this.enableFriction = enableFrictionBefore;
        }
        if (justTest) {
            return numContacts1 + numContacts2;
        }
        else {
            var numTotal = numContacts1 + numContacts2;
            if (this.enableFrictionReduction) {
                if (numTotal) {
                    this.frictionEquations.push(this.createFrictionFromAverage(numTotal));
                }
            }
            return numTotal;
        }
    };
    ;
    /**
     * @method circlePlane
     * @param  {Body}    circleBody
     * @param  {Circle}  circleShape
     * @param  {Array}   circleOffset
     * @param  {Body}    planeBody
     * @param  {Plane}   planeShape
     * @param  {Array}   planeOffset
     * @param  {Number}  planeAngle
     * @param  {Boolean} justTest
     * @return {number}
     */
    //Narrowphase.prototype[Shape.CIRCLE | Shape.PLANE] =
    Narrowphase.prototype.circlePlane = function (circleBody, circleShape, circleOffset, planeBody, planeShape, planeOffset, planeAngle, justTest) {
        var circleRadius = circleShape.radius;
        // Vector from plane to circle
        var planeToCircle = tmp1, worldNormal = tmp2, temp = tmp3;
        sub(planeToCircle, circleOffset, planeOffset);
        // World plane normal
        rotate(worldNormal, yAxis, planeAngle);
        // Normal direction distance
        var d = dot(worldNormal, planeToCircle);
        if (d > circleRadius) {
            return 0; // No overlap. Abort.
        }
        if (justTest) {
            return 1;
        }
        // Create contact
        var contact = this.createContactEquation(planeBody, circleBody, planeShape, circleShape);
        // ni is the plane world normal
        copy(contact.normalA, worldNormal);
        // rj is the vector from circle center to the contact point
        var cpB = contact.contactPointB;
        scale(cpB, contact.normalA, -circleRadius);
        add(cpB, cpB, circleOffset);
        sub(cpB, cpB, circleBody.position);
        // ri is the distance from plane center to contact.
        var cpA = contact.contactPointA;
        scale(temp, contact.normalA, d);
        sub(cpA, planeToCircle, temp); // Subtract normal distance vector from the distance vector
        add(cpA, cpA, planeOffset);
        sub(cpA, cpA, planeBody.position);
        this.contactEquations.push(contact);
        if (this.enableFriction) {
            this.frictionEquations.push(this.createFrictionFromContact(contact));
        }
        return 1;
    };
    ;
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
     * @param  {Boolean} justTest
     * @return {number}
     */
    //Narrowphase.prototype[Shape.CONVEX] =
    //Narrowphase.prototype[Shape.CONVEX | Shape.BOX] =
    //Narrowphase.prototype[Shape.BOX] =
    Narrowphase.prototype.convexConvex = function (bodyA, polyA, positionA, angleA, bodyB, polyB, positionB, angleB, justTest) {
        var maxManifoldPoints = 2;
        var totalRadius = 0;
        var dist = collidePolygons_dist;
        var tempVec = collidePolygons_tempVec;
        var tmpVec = collidePolygons_tmpVec;
        var edgeA = findMaxSeparation(tempVec, polyA, positionA, angleA, polyB, positionB, angleB);
        var separationA = tempVec[0];
        if (separationA > totalRadius) {
            return 0;
        }
        var edgeB = findMaxSeparation(tmpVec, polyB, positionB, angleB, polyA, positionA, angleA);
        var separationB = tmpVec[0];
        if (separationB > totalRadius) {
            return 0;
        }
        var poly1; // reference polygon
        var poly2; // incident polygon
        var position1;
        var position2;
        var angle1;
        var angle2;
        var body1;
        var body2;
        var edge1; // reference edge
        var type;
        if (separationB > separationA) {
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
        else {
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
        var incidentEdge = collidePolygons_incidentEdge;
        findIncidentEdge(incidentEdge, poly1, position1, angle1, edge1, poly2, position2, angle2);
        var count1 = poly1.vertices.length;
        var vertices1 = poly1.vertices;
        var iv1 = edge1;
        var iv2 = edge1 + 1 < count1 ? edge1 + 1 : 0;
        var v11 = collidePolygons_v11;
        var v12 = collidePolygons_v12;
        vec2_1.default.copy(v11, vertices1[iv1]);
        vec2_1.default.copy(v12, vertices1[iv2]);
        var localTangent = collidePolygons_localTangent;
        vec2_1.default.subtract(localTangent, v12, v11);
        vec2_1.default.normalize(localTangent, localTangent);
        var localNormal = collidePolygons_localNormal;
        vec2_1.default.crossVZ(localNormal, localTangent, 1.0);
        var planePoint = collidePolygons_planePoint;
        vec2_1.default.add(planePoint, v11, v12);
        vec2_1.default.scale(planePoint, planePoint, 0.5);
        var tangent = collidePolygons_tangent; // tangent in world space
        vec2_1.default.rotate(tangent, localTangent, angle1);
        var normal = collidePolygons_normal; // normal in world space
        vec2_1.default.crossVZ(normal, tangent, 1.0);
        vec2_1.default.toGlobalFrame(v11, v11, position1, angle1);
        vec2_1.default.toGlobalFrame(v12, v12, position1, angle1);
        // Face offset.
        var frontOffset = vec2_1.default.dot(normal, v11);
        // Side offsets, extended by polytope skin thickness.
        var sideOffset1 = -vec2_1.default.dot(tangent, v11) + totalRadius;
        var sideOffset2 = vec2_1.default.dot(tangent, v12) + totalRadius;
        // Clip incident edge against extruded edge1 side edges.
        var clipPoints1 = collidePolygons_clipPoints1;
        var clipPoints2 = collidePolygons_clipPoints2;
        var np = 0;
        // Clip to box side 1
        var negativeTangent = collidePolygons_negativeTangent;
        vec2_1.default.scale(negativeTangent, tangent, -1);
        np = clipSegmentToLine(clipPoints1, incidentEdge, negativeTangent, sideOffset1 /*, iv1*/);
        if (np < 2) {
            return 0;
        }
        // Clip to negative box side 1
        np = clipSegmentToLine(clipPoints2, clipPoints1, tangent, sideOffset2 /*, iv2*/);
        if (np < 2) {
            return 0;
        }
        var pointCount = 0;
        for (var i = 0; i < maxManifoldPoints; ++i) {
            var separation = vec2_1.default.dot(normal, clipPoints2[i]) - frontOffset;
            if (separation <= totalRadius) {
                if (justTest) {
                    return 1;
                }
                ++pointCount;
                var c = this.createContactEquation(body1, body2, poly1, poly2);
                vec2_1.default.copy(c.normalA, normal);
                vec2_1.default.copy(c.contactPointB, clipPoints2[i]);
                sub(c.contactPointB, c.contactPointB, body2.position);
                vec2_1.default.scale(dist, normal, -separation);
                vec2_1.default.add(c.contactPointA, clipPoints2[i], dist);
                sub(c.contactPointA, c.contactPointA, body1.position);
                this.contactEquations.push(c);
                if (this.enableFriction && !this.enableFrictionReduction) {
                    this.frictionEquations.push(this.createFrictionFromContact(c));
                }
            }
        }
        if (pointCount && this.enableFrictionReduction && this.enableFriction) {
            this.frictionEquations.push(this.createFrictionFromAverage(pointCount));
        }
        return pointCount;
    };
    ;
    //Narrowphase.prototype[Shape.CIRCLE | Shape.HEIGHTFIELD] =
    Narrowphase.prototype.circleHeightfield = function (circleBody, circleShape, circlePos, hfBody, hfShape, hfPos, justTest, radius) {
        var data = hfShape.heights, w = hfShape.elementWidth, dist = circleHeightfield_dist, candidate = circleHeightfield_candidate, minCandidate = circleHeightfield_minCandidate, minCandidateNormal = circleHeightfield_minCandidateNormal, worldNormal = circleHeightfield_worldNormal, v0 = circleHeightfield_v0, v1 = circleHeightfield_v1;
        // Get the index of the points to test against
        var idxA = Math.floor((circlePos[0] - radius - hfPos[0]) / w), idxB = Math.ceil((circlePos[0] + radius - hfPos[0]) / w);
        /*if(idxB < 0 || idxA >= data.length)
            return justTest ? false : 0;*/
        if (idxA < 0) {
            idxA = 0;
        }
        if (idxB >= data.length) {
            idxB = data.length - 1;
        }
        // Get max and min
        var max = data[idxA], min = data[idxB];
        for (var i = idxA; i < idxB; i++) {
            if (data[i] < min) {
                min = data[i];
            }
            if (data[i] > max) {
                max = data[i];
            }
        }
        if (circlePos[1] - radius > max) {
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
        var found = false;
        // Check all edges first
        for (var i = idxA; i < idxB; i++) {
            // Get points
            vec2_1.default.set(v0, i * w, data[i]);
            vec2_1.default.set(v1, (i + 1) * w, data[i + 1]);
            add(v0, v0, hfPos); // @todo transform circle to local heightfield space instead
            add(v1, v1, hfPos);
            // Get normal
            sub(worldNormal, v1, v0);
            rotate(worldNormal, worldNormal, Math.PI / 2);
            normalize(worldNormal, worldNormal);
            // Get point on circle, closest to the edge
            scale(candidate, worldNormal, -radius);
            add(candidate, candidate, circlePos);
            // Distance from v0 to the candidate point
            sub(dist, candidate, v0);
            // Check if it is in the element "stick"
            var d = dot(dist, worldNormal);
            if (candidate[0] >= v0[0] && candidate[0] < v1[0] && d <= 0) {
                if (justTest) {
                    return 1;
                }
                found = true;
                // Store the candidate point, projected to the edge
                scale(dist, worldNormal, -d);
                add(minCandidate, candidate, dist);
                copy(minCandidateNormal, worldNormal);
                var c = this.createContactEquation(hfBody, circleBody, hfShape, circleShape);
                // Normal is out of the heightfield
                copy(c.normalA, minCandidateNormal);
                // Vector from circle to heightfield
                scale(c.contactPointB, c.normalA, -radius);
                add(c.contactPointB, c.contactPointB, circlePos);
                sub(c.contactPointB, c.contactPointB, circleBody.position);
                copy(c.contactPointA, minCandidate);
                sub(c.contactPointA, c.contactPointA, hfBody.position);
                this.contactEquations.push(c);
                if (this.enableFriction) {
                    this.frictionEquations.push(this.createFrictionFromContact(c));
                }
            }
        }
        // Check all vertices
        found = false;
        if (radius > 0) {
            for (var i = idxA; i <= idxB; i++) {
                // Get point
                vec2_1.default.set(v0, i * w, data[i]);
                add(v0, v0, hfPos);
                sub(dist, circlePos, v0);
                if (squaredLength(dist) < Math.pow(radius, 2)) {
                    if (justTest) {
                        return 1;
                    }
                    found = true;
                    var c = this.createContactEquation(hfBody, circleBody, hfShape, circleShape);
                    // Construct normal - out of heightfield
                    copy(c.normalA, dist);
                    normalize(c.normalA, c.normalA);
                    scale(c.contactPointB, c.normalA, -radius);
                    add(c.contactPointB, c.contactPointB, circlePos);
                    sub(c.contactPointB, c.contactPointB, circleBody.position);
                    sub(c.contactPointA, v0, hfPos);
                    add(c.contactPointA, c.contactPointA, hfPos);
                    sub(c.contactPointA, c.contactPointA, hfBody.position);
                    this.contactEquations.push(c);
                    if (this.enableFriction) {
                        this.frictionEquations.push(this.createFrictionFromContact(c));
                    }
                }
            }
        }
        if (found) {
            return 1;
        }
        return 0;
    };
    //Narrowphase.prototype[Shape.BOX | Shape.HEIGHTFIELD] =
    //Narrowphase.prototype[Shape.CONVEX | Shape.HEIGHTFIELD] =
    Narrowphase.prototype.convexHeightfield = function (convexBody, convexShape, convexPos, convexAngle, hfBody, hfShape, hfPos, justTest) {
        var data = hfShape.heights, w = hfShape.elementWidth, v0 = convexHeightfield_v0, v1 = convexHeightfield_v1, tilePos = convexHeightfield_tilePos, tileConvex = convexHeightfield_tempConvexShape;
        // Get the index of the points to test against
        var idxA = Math.floor((convexBody.aabb.lowerBound[0] - hfPos[0]) / w), idxB = Math.ceil((convexBody.aabb.upperBound[0] - hfPos[0]) / w);
        if (idxA < 0) {
            idxA = 0;
        }
        if (idxB >= data.length) {
            idxB = data.length - 1;
        }
        // Get max and min
        var max = data[idxA], min = data[idxB];
        for (var i = idxA; i < idxB; i++) {
            if (data[i] < min) {
                min = data[i];
            }
            if (data[i] > max) {
                max = data[i];
            }
        }
        if (convexBody.aabb.lowerBound[1] > max) {
            return 0;
        }
        var numContacts = 0;
        // Loop over all edges
        // @todo If possible, construct a convex from several data points (need o check if the points make a convex shape)
        // @todo transform convex to local heightfield space.
        // @todo bail out if the heightfield tile is not tall enough.
        for (var i = idxA; i < idxB; i++) {
            // Get points
            vec2_1.default.set(v0, i * w, data[i]);
            vec2_1.default.set(v1, (i + 1) * w, data[i + 1]);
            add(v0, v0, hfPos);
            add(v1, v1, hfPos);
            // Construct a convex
            var tileHeight = 100; // todo
            vec2_1.default.set(tilePos, (v1[0] + v0[0]) * 0.5, (v1[1] + v0[1] - tileHeight) * 0.5);
            sub(tileConvex.vertices[0], v1, tilePos);
            sub(tileConvex.vertices[1], v0, tilePos);
            copy(tileConvex.vertices[2], tileConvex.vertices[1]);
            copy(tileConvex.vertices[3], tileConvex.vertices[0]);
            tileConvex.vertices[2][1] -= tileHeight;
            tileConvex.vertices[3][1] -= tileHeight;
            tileConvex.updateNormals();
            // Do convex collision
            numContacts += this.convexConvex(convexBody, convexShape, convexPos, convexAngle, hfBody, tileConvex, tilePos, 0, justTest);
        }
        return numContacts;
    };
    return Narrowphase;
}());
exports.default = Narrowphase;
