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
// var Shape = require('./Shape')
// ,    vec2 = require('../math/vec2')
// ,    shallowClone = require('../utils/Utils').shallowClone;
var Shape_1 = __importDefault(require("./Shape"));
var vec2_1 = __importDefault(require("../math/vec2"));
var Ray_intersectSphere_intersectionPoint = vec2_1.default.create();
var Ray_intersectSphere_normal = vec2_1.default.create();
var Circle = /** @class */ (function (_super) {
    __extends(Circle, _super);
    /**
     * Circle shape class.
     * @class Circle
     * @extends Shape
     * @constructor
     * @param {options} [options] (Note that this options object will be passed on to the {{#crossLink "Shape"}}{{/crossLink}} constructor.)
     * @param {number} [options.radius=1] The radius of this circle
     *
     * @example
     *     var body = new Body({ mass: 1 });
     *     var circleShape = new Circle({
     *         radius: 1
     *     });
     *     body.addShape(circleShape);
     */
    function Circle(options) {
        var _a;
        var _this = _super.call(this, Shape_1.default.CIRCLE, options) || this;
        /**
         * The radius of the circle.
         * @property radius
         * @type {number}
         */
        _this.radius = (_a = options === null || options === void 0 ? void 0 : options.radius) !== null && _a !== void 0 ? _a : 1;
        return _this;
    }
    /**
     * @method computeMomentOfInertia
     * @return {Number}
     */
    Circle.prototype.computeMomentOfInertia = function () {
        var r = this.radius;
        return r * r / 2;
    };
    /**
     * @method updateBoundingRadius
     * @return {Number}
     */
    Circle.prototype.updateBoundingRadius = function () {
        this.boundingRadius = this.radius;
        return this.boundingRadius;
    };
    /**
     * @method updateArea
     * @return {Number}
     */
    Circle.prototype.updateArea = function () {
        this.area = Math.PI * this.radius * this.radius;
        return this.area;
    };
    /**
     * @method computeAABB
     * @param  {AABB}   out      The resulting AABB.
     * @param  {Array}  position
     * @param  {Number} angle
     */
    Circle.prototype.computeAABB = function (out, position /*, angle: f32*/) {
        var r = this.radius;
        vec2_1.default.set(out.upperBound, r, r);
        vec2_1.default.set(out.lowerBound, -r, -r);
        if (position) {
            vec2_1.default.add(out.lowerBound, out.lowerBound, position);
            vec2_1.default.add(out.upperBound, out.upperBound, position);
        }
    };
    /**
     * @method raycast
     * @param  {RaycastResult} result
     * @param  {Ray} ray
     * @param  {array} position
     * @param  {number} angle
     */
    Circle.prototype.raycast = function (result, ray, position /*, angle: f32*/) {
        var from = ray.from, to = ray.to, r = this.radius;
        var a = Math.pow(to[0] - from[0], 2) + Math.pow(to[1] - from[1], 2);
        var b = 2 * ((to[0] - from[0]) * (from[0] - position[0]) + (to[1] - from[1]) * (from[1] - position[1]));
        var c = Math.pow(from[0] - position[0], 2) + Math.pow(from[1] - position[1], 2) - Math.pow(r, 2);
        var delta = Math.pow(b, 2) - 4 * a * c;
        var intersectionPoint = Ray_intersectSphere_intersectionPoint;
        var normal = Ray_intersectSphere_normal;
        if (delta < 0) {
            // No intersection
            return;
        }
        else if (delta === 0) {
            // single intersection point
            vec2_1.default.lerp(intersectionPoint, from, to, delta);
            vec2_1.default.subtract(normal, intersectionPoint, position);
            vec2_1.default.normalize(normal, normal);
            ray.reportIntersection(result, delta, normal, -1);
        }
        else {
            var sqrtDelta = Math.sqrt(delta);
            var inv2a = 1 / (2 * a);
            var d1 = (-b - sqrtDelta) * inv2a;
            var d2 = (-b + sqrtDelta) * inv2a;
            if (d1 >= 0 && d1 <= 1) {
                vec2_1.default.lerp(intersectionPoint, from, to, d1);
                vec2_1.default.subtract(normal, intersectionPoint, position);
                vec2_1.default.normalize(normal, normal);
                ray.reportIntersection(result, d1, normal, -1);
                if (result.shouldStop(ray)) {
                    return;
                }
            }
            if (d2 >= 0 && d2 <= 1) {
                vec2_1.default.lerp(intersectionPoint, from, to, d2);
                vec2_1.default.subtract(normal, intersectionPoint, position);
                vec2_1.default.normalize(normal, normal);
                ray.reportIntersection(result, d2, normal, -1);
            }
        }
    };
    Circle.prototype.pointTest = function (localPoint) {
        var radius = this.radius;
        return vec2_1.default.squaredLength(localPoint) <= radius * radius;
    };
    return Circle;
}(Shape_1.default));
exports.default = Circle;
