"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var Shape_1 = __importDefault(require("./Shape"));
var polyk_1 = __importDefault(require("../math/polyk"));
var vec2_1 = __importDefault(require("../math/vec2"));
var dot = vec2_1.default.dot;
var updateCenterOfMass_centroid = vec2_1.default.create(), updateCenterOfMass_centroid_times_mass = vec2_1.default.create(), updateCenterOfMass_a = vec2_1.default.create(), updateCenterOfMass_b = vec2_1.default.create(), updateCenterOfMass_c = vec2_1.default.create();
var tmpVec1 = vec2_1.default.create();
var intersectConvex_rayStart = vec2_1.default.create();
var intersectConvex_rayEnd = vec2_1.default.create();
var intersectConvex_normal = vec2_1.default.create();
var pic_r0 = vec2_1.default.create();
var pic_r1 = vec2_1.default.create();
var tmpVec2 = vec2_1.default.create();
var worldAxis = tmpVec2;
var Convex = /** @class */ (function (_super) {
    __extends(Convex, _super);
    /**
     * Convex shape class.
     * @class Convex
     * @constructor
     * @extends Shape
     * @param {object} [options] (Note that this options object will be passed on to the {{#crossLink "Shape"}}{{/crossLink}} constructor.)
     * @param {Array} [options.vertices] An array of vertices that span this shape. Vertices are given in counter-clockwise (CCW) direction.
     * @example
     *     var body = new Body({ mass: 1 });
     *     var vertices = [[-1,-1], [1,-1], [1,1], [-1,1]];
     *     var convexShape = new Convex({
     *         vertices: vertices
     *     });
     *     body.addShape(convexShape);
     */
    function Convex(type, vertices, options) {
        var _this = _super.call(this, type !== null && type !== void 0 ? type : Shape_1.default.CONVEX, options) || this;
        // TODO: this would be more efficient if I didn't use float32array[]s. Just convert to a big float32array with double the size.
        // Let's get this working first then switch it.
        /**
         * Vertices defined in the local frame.
         * @property vertices
         * @type {Array}
         */
        _this.vertices = [];
        /**
         * Edge normals defined in the local frame, pointing out of the shape.
         * @property normals
         * @type {Array}
         */
        _this.normals = [];
        /**
         * Triangulated version of this convex. The structure is Array of 3-Arrays, and each subarray contains 3 integers, referencing the vertices.
         * @property triangles
         * @type {Array}
         */
        _this.triangles = [];
        // Copy the verts
        var newVertices = vertices !== null && vertices !== void 0 ? vertices : [];
        _this.vertices = [];
        _this.normals = [];
        for (var i = 0; i < newVertices.length; i++) {
            _this.vertices.push(vec2_1.default.clone(newVertices[i]));
            _this.normals.push(vec2_1.default.create());
        }
        // These are called in the shape constructor, but need to call again here because verts weren't set up yet!
        _this.updateBoundingRadius();
        _this.updateArea();
        _this.updateNormals();
        _this.centerOfMass = vec2_1.default.create();
        _this.triangles = [];
        if (_this.vertices.length) {
            _this.updateTriangles();
            _this.updateCenterOfMass();
        }
        /**
         * The bounding radius of the convex
         * @property boundingRadius
         * @type {Number}
         */
        _this.boundingRadius = 0;
        _this.updateBoundingRadius();
        _this.updateArea();
        if (_this.area < 0) {
            throw new Error("Convex vertices must be given in counter-clockwise winding.");
        }
        return _this;
    }
    Convex.prototype.updateNormals = function () {
        var vertices = this.vertices;
        var normals = this.normals;
        for (var i = 0; i < vertices.length; i++) {
            var worldPoint0 = vertices[i];
            var worldPoint1 = vertices[(i + 1) % vertices.length];
            var normal = normals[i];
            vec2_1.default.subtract(normal, worldPoint1, worldPoint0);
            // Get normal - just rotate 90 degrees since vertices are given in CCW
            vec2_1.default.rotate90cw(normal, normal);
            vec2_1.default.normalize(normal, normal);
        }
    };
    /**
     * Project a Convex onto a world-oriented axis
     * @method projectOntoAxis
     * @static
     * @param  {Array} offset
     * @param  {Array} localAxis
     * @param  {Array} result
     */
    Convex.prototype.projectOntoLocalAxis = function (localAxis, result) {
        var max = -Infinity, min = Infinity, v, value, localAxis = tmpVec1;
        // Get projected position of all vertices
        for (var i = 0; i < this.vertices.length; i++) {
            v = this.vertices[i];
            value = dot(v, localAxis);
            if (value > max) {
                max = value;
            }
            if (value < min) {
                min = value;
            }
        }
        if (min > max) {
            var t = min;
            min = max;
            max = t;
        }
        vec2_1.default.set(result, min, max);
    };
    Convex.prototype.ConvexprojectOntoWorldAxis = function (localAxis, shapeOffset, shapeAngle, result) {
        this.projectOntoLocalAxis(localAxis, result);
        // Project the position of the body onto the axis - need to add this to the result
        if (shapeAngle !== 0) {
            vec2_1.default.rotate(worldAxis, localAxis, shapeAngle);
        }
        else {
            worldAxis = localAxis;
        }
        var offset = dot(shapeOffset, worldAxis);
        vec2_1.default.set(result, result[0] + offset, result[1] + offset);
    };
    /**
     * Update the .triangles property
     * @method updateTriangles
     */
    Convex.prototype.updateTriangles = function () {
        this.triangles.length = 0;
        // Rewrite on polyk notation, array of numbers
        var polykVerts = [];
        for (var i = 0; i < this.vertices.length; i++) {
            var v = this.vertices[i];
            polykVerts.push(v[0]);
            polykVerts.push(v[1]);
        }
        // Triangulate
        var triangles = polyk_1.default.Triangulate(polykVerts);
        // Loop over all triangles, add their inertia contributions to I
        for (var i = 0; i < triangles.length; i += 3) {
            var id1 = triangles[i], id2 = triangles[i + 1], id3 = triangles[i + 2];
            // Add to triangles
            var T = new Float32Array(3);
            T[0] = id1;
            T[1] = id2;
            T[2] = id3;
            this.triangles.push(T);
        }
    };
    /**
     * Update the .centerOfMass property.
     * @method updateCenterOfMass
     */
    Convex.prototype.updateCenterOfMass = function () {
        var triangles = this.triangles, verts = this.vertices, cm = this.centerOfMass, centroid = updateCenterOfMass_centroid, a = updateCenterOfMass_a, b = updateCenterOfMass_b, c = updateCenterOfMass_c, centroid_times_mass = updateCenterOfMass_centroid_times_mass;
        vec2_1.default.set(cm, 0, 0);
        var totalArea = 0;
        for (var i = 0; i !== triangles.length; i++) {
            var t = triangles[i], a = verts[t[0]], b = verts[t[1]], c = verts[t[2]];
            vec2_1.default.centroid(centroid, a, b, c);
            // Get mass for the triangle (density=1 in this case)
            // http://math.stackexchange.com/questions/80198/area-of-triangle-via-vectors
            var m = Convex.triangleArea(a, b, c);
            totalArea += m;
            // Add to center of mass
            vec2_1.default.scale(centroid_times_mass, centroid, m);
            vec2_1.default.add(cm, cm, centroid_times_mass);
        }
        vec2_1.default.scale(cm, cm, 1 / totalArea);
    };
    /**
     * Compute the moment of inertia of the Convex.
     * @method computeMomentOfInertia
     * @return {Number}
     * @see http://www.gamedev.net/topic/342822-moment-of-inertia-of-a-polygon-2d/
     */
    Convex.prototype.computeMomentOfInertia = function () {
        var denom = 0.0, numer = 0.0, N = this.vertices.length;
        for (var j = N - 1, i = 0; i < N; j = i, i++) {
            var p0 = this.vertices[j];
            var p1 = this.vertices[i];
            var a = Math.abs(vec2_1.default.crossLength(p0, p1));
            var b = dot(p1, p1) + dot(p1, p0) + dot(p0, p0);
            denom += a * b;
            numer += a;
        }
        return (1.0 / 6.0) * (denom / numer);
    };
    /**
     * Updates the .boundingRadius property
     * @method updateBoundingRadius
     */
    Convex.prototype.updateBoundingRadius = function () {
        var verts = this.vertices, r2 = 0;
        if (!verts || verts.length == 0)
            return 0;
        for (var i = 0; i !== verts.length; i++) {
            var l2 = vec2_1.default.squaredLength(verts[i]);
            if (l2 > r2) {
                r2 = l2;
            }
        }
        this.boundingRadius = Math.sqrt(r2);
        return this.boundingRadius;
    };
    /**
     * Get the area of the triangle spanned by the three points a, b, c. The area is positive if the points are given in counter-clockwise order, otherwise negative.
     * @static
     * @method triangleArea
     * @param {Array} a
     * @param {Array} b
     * @param {Array} c
     * @return {Number}
     * @deprecated
     */
    Convex.triangleArea = function (a, b, c) {
        return (((b[0] - a[0]) * (c[1] - a[1])) - ((c[0] - a[0]) * (b[1] - a[1]))) * 0.5;
    };
    /**
     * Update the .area
     * @method updateArea
     */
    Convex.prototype.updateArea = function () {
        if (!this.vertices)
            return 0;
        this.updateTriangles();
        this.area = 0;
        var triangles = this.triangles, verts = this.vertices;
        for (var i = 0; i !== triangles.length; i++) {
            var t = triangles[i], a = verts[t[0]], b = verts[t[1]], c = verts[t[2]];
            // Get mass for the triangle (density=1 in this case)
            var m = Convex.triangleArea(a, b, c);
            this.area += m;
        }
        return this.area;
    };
    /**
     * @method computeAABB
     * @param  {AABB}   out
     * @param  {Array}  position
     * @param  {Number} angle
     * @todo: approximate with a local AABB?
     */
    Convex.prototype.computeAABB = function (out, position, angle) {
        out.setFromPoints(this.vertices, position, angle, 0);
    };
    /**
     * @method raycast
     * @param  {RaycastResult} result
     * @param  {Ray} ray
     * @param  {array} position
     * @param  {number} angle
     */
    Convex.prototype.raycast = function (result, ray, position, angle) {
        var rayStart = intersectConvex_rayStart;
        var rayEnd = intersectConvex_rayEnd;
        var normal = intersectConvex_normal;
        var vertices = this.vertices;
        // Transform to local shape space
        vec2_1.default.toLocalFrame(rayStart, ray.from, position, angle);
        vec2_1.default.toLocalFrame(rayEnd, ray.to, position, angle);
        var n = vertices.length;
        for (var i = 0; i < n && !result.shouldStop(ray); i++) {
            var q1 = vertices[i];
            var q2 = vertices[(i + 1) % n];
            var delta = vec2_1.default.getLineSegmentsIntersectionFraction(rayStart, rayEnd, q1, q2);
            if (delta >= 0) {
                vec2_1.default.subtract(normal, q2, q1);
                vec2_1.default.rotate(normal, normal, -Math.PI / 2 + angle);
                vec2_1.default.normalize(normal, normal);
                ray.reportIntersection(result, delta, normal, i);
            }
        }
    };
    Convex.prototype.pointTest = function (localPoint) {
        var r0 = pic_r0, r1 = pic_r1, verts = this.vertices, lastCross = null, numVerts = verts.length;
        for (var i = 0; i < numVerts + 1; i++) {
            var v0 = verts[i % numVerts], v1 = verts[(i + 1) % numVerts];
            vec2_1.default.subtract(r0, v0, localPoint);
            vec2_1.default.subtract(r1, v1, localPoint);
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
    };
    return Convex;
}(Shape_1.default));
exports.default = Convex;
