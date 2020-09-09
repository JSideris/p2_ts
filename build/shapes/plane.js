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
var shape_1 = __importDefault(require("./shape"));
var vec2_1 = __importDefault(require("../math/vec2"));
var intersectPlane_planePointToFrom = vec2_1.default.create();
var intersectPlane_normal = vec2_1.default.create();
var intersectPlane_len = vec2_1.default.create();
var Plane = /** @class */ (function (_super) {
    __extends(Plane, _super);
    /**
     * Plane shape class. The plane is facing in the Y direction.
     * @class Plane
     * @extends Shape
     * @constructor
     * @param {object} [options] (Note that this options object will be passed on to the {{#crossLink "Shape"}}{{/crossLink}} constructor.)
     * @example
     *     var body = new Body();
     *     var shape = new Plane();
     *     body.addShape(shape);
     */
    function Plane(options) {
        return _super.call(this, shape_1.default.PLANE, options) || this;
    }
    /**
     * Compute moment of inertia
     * @method computeMomentOfInertia
     */
    Plane.prototype.computeMomentOfInertia = function () {
        return 0; // Plane is infinite. The inertia should therefore be infinty but by convention we set 0 here
    };
    /**
     * Update the bounding radius
     * @method updateBoundingRadius
     */
    Plane.prototype.updateBoundingRadius = function () {
        this.boundingRadius = Infinity;
        return Infinity;
    };
    /**
     * @method computeAABB
     * @param  {AABB}   out
     * @param  {Array}  position
     * @param  {Number} angle
     */
    Plane.prototype.computeAABB = function (out, position, angle) {
        var a = angle % (2 * Math.PI);
        var set = vec2_1.default.set;
        var max = 1e7;
        var lowerBound = out.lowerBound;
        var upperBound = out.upperBound;
        // Set max bounds
        set(lowerBound, -max, -max);
        set(upperBound, max, max);
        if (a === 0) {
            // y goes from -inf to 0
            upperBound[1] = position[1];
        }
        else if (a === Math.PI / 2) {
            // x goes from 0 to inf
            lowerBound[0] = position[0];
        }
        else if (a === Math.PI) {
            // y goes from 0 to inf
            lowerBound[1] = position[1];
        }
        else if (a === 3 * Math.PI / 2) {
            // x goes from -inf to 0
            upperBound[0] = position[0];
        }
    };
    Plane.prototype.updateArea = function () {
        this.area = Infinity;
        return Infinity;
    };
    /**
     * @method raycast
     * @param  {RayResult} result
     * @param  {Ray} ray
     * @param  {array} position
     * @param  {number} angle
     */
    Plane.prototype.raycast = function (result, ray, position, angle) {
        var from = ray.from;
        var to = ray.to;
        var direction = ray.direction;
        var planePointToFrom = intersectPlane_planePointToFrom;
        var normal = intersectPlane_normal;
        var len = intersectPlane_len;
        // Get plane normal
        vec2_1.default.set(normal, 0, 1);
        vec2_1.default.rotate(normal, normal, angle);
        vec2_1.default.subtract(len, from, position);
        var planeToFrom = vec2_1.default.dot(len, normal);
        vec2_1.default.subtract(len, to, position);
        var planeToTo = vec2_1.default.dot(len, normal);
        if (planeToFrom * planeToTo > 0) {
            // "from" and "to" are on the same side of the plane... bail out
            return;
        }
        if (vec2_1.default.squaredDistance(from, to) < planeToFrom * planeToFrom) {
            return;
        }
        var n_dot_dir = vec2_1.default.dot(normal, direction);
        vec2_1.default.subtract(planePointToFrom, from, position);
        var t = -vec2_1.default.dot(normal, planePointToFrom) / n_dot_dir / ray.length;
        ray.reportIntersection(result, t, normal, -1);
    };
    ;
    Plane.prototype.pointTest = function (localPoint) {
        return localPoint[1] <= 0;
    };
    return Plane;
}(shape_1.default));
exports.default = Plane;
