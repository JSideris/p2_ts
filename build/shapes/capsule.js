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
// ,   shallowClone = require('../utils/Utils').shallowClone
// ,   vec2 = require('../math/vec2');
var vec2_1 = __importDefault(require("../math/vec2"));
var utils_1 = __importDefault(require("../utils/utils"));
var shape_1 = __importDefault(require("./shape"));
var shallowClone = utils_1.default.shallowClone;
function boxI(w, h) {
    return w * h * (Math.pow(w, 2) + Math.pow(h, 2)) / 12;
}
function semiA(r) {
    return Math.PI * Math.pow(r, 2) / 2;
}
// http://www.efunda.com/math/areas/CircleHalf.cfm
function semiI(r) {
    return ((Math.PI / 4) - (8 / (9 * Math.PI))) * Math.pow(r, 4);
}
function semiC(r) {
    return (4 * r) / (3 * Math.PI);
}
// https://en.wikipedia.org/wiki/Second_moment_of_area#Parallel_axis_theorem
function capsuleA(l, r) {
    return l * 2 * r + Math.PI * Math.pow(r, 2);
}
function capsuleI(l, r) {
    var d = l / 2 + semiC(r);
    return boxI(l, 2 * r) + 2 * (semiI(r) + semiA(r) * Math.pow(d, 2));
}
var intersectCapsule_hitPointWorld = vec2_1.default.create();
var intersectCapsule_normal = vec2_1.default.create();
var intersectCapsule_l0 = vec2_1.default.create();
var intersectCapsule_l1 = vec2_1.default.create();
var intersectCapsule_unit_y = vec2_1.default.fromValues(0, 1);
var Capsule = /** @class */ (function (_super) {
    __extends(Capsule, _super);
    /**
     * Capsule shape.
     * @class Capsule
     * @constructor
     * @extends Shape
     * @param {object} [options] (Note that this options object will be passed on to the {{#crossLink "Shape"}}{{/crossLink}} constructor.)
     * @param {Number} [options.length=1] The distance between the end points, extends along the X axis.
     * @param {Number} [options.radius=1] Radius of the capsule.
     * @example
     *     var body = new Body({ mass: 1 });
     *     var capsuleShape = new Capsule({
     *         length: 1,
     *         radius: 2
     *     });
     *     body.addShape(capsuleShape);
     */
    function Capsule(options) {
        var _a, _b;
        var _this = _super.call(this, shape_1.default.CAPSULE, options) || this;
        _this.length = (_a = options === null || options === void 0 ? void 0 : options.length) !== null && _a !== void 0 ? _a : 1;
        _this.radius = (_b = options === null || options === void 0 ? void 0 : options.radius) !== null && _b !== void 0 ? _b : 1;
        return _this;
    }
    /**
     * Compute the mass moment of inertia of the Capsule.
     * @method conputeMomentOfInertia
     * @return {Number}
     * @todo
     */
    Capsule.prototype.computeMomentOfInertia = function () {
        // http://www.efunda.com/math/areas/rectangle.cfm
        var r = this.radius, l = this.length, area = capsuleA(l, r);
        return (area > 0) ? capsuleI(l, r) / area : 0;
    };
    /**
     * @method updateBoundingRadius
     */
    Capsule.prototype.updateBoundingRadius = function () {
        this.boundingRadius = this.radius + this.length / 2;
        return this.boundingRadius;
    };
    /**
     * @method updateArea
     */
    Capsule.prototype.updateArea = function () {
        this.area = Math.PI * this.radius * this.radius + this.radius * 2 * this.length;
        return this.area;
    };
    /**
     * @method computeAABB
     * @param  {AABB}   out      The resulting AABB.
     * @param  {Array}  position
     * @param  {Number} angle
     */
    Capsule.prototype.computeAABB = function (out, position, angle) {
        var r = vec2_1.default.create();
        var radius = this.radius;
        // Compute center position of one of the the circles, world oriented, but with local offset
        vec2_1.default.set(r, this.length / 2, 0);
        if (angle !== 0) {
            vec2_1.default.rotate(r, r, angle);
        }
        // Get bounds
        vec2_1.default.set(out.upperBound, Math.max(r[0] + radius, -r[0] + radius), Math.max(r[1] + radius, -r[1] + radius));
        vec2_1.default.set(out.lowerBound, Math.min(r[0] - radius, -r[0] - radius), Math.min(r[1] - radius, -r[1] - radius));
        // Add offset
        vec2_1.default.add(out.lowerBound, out.lowerBound, position);
        vec2_1.default.add(out.upperBound, out.upperBound, position);
    };
    /**
     * @method raycast
     * @param  {RaycastResult} result
     * @param  {Ray} ray
     * @param  {array} position
     * @param  {number} angle
     */
    Capsule.prototype.raycast = function (result, ray, position, angle) {
        var from = ray.from;
        var to = ray.to;
        var hitPointWorld = intersectCapsule_hitPointWorld;
        var normal = intersectCapsule_normal;
        var l0 = intersectCapsule_l0;
        var l1 = intersectCapsule_l1;
        // The sides
        var halfLen = this.length / 2;
        for (var i = 0; i < 2; i++) {
            // get start and end of the line
            var y = this.radius * (i * 2 - 1);
            vec2_1.default.set(l0, -halfLen, y);
            vec2_1.default.set(l1, halfLen, y);
            vec2_1.default.toGlobalFrame(l0, l0, position, angle);
            vec2_1.default.toGlobalFrame(l1, l1, position, angle);
            var delta = vec2_1.default.getLineSegmentsIntersectionFraction(from, to, l0, l1);
            if (delta >= 0) {
                vec2_1.default.rotate(normal, intersectCapsule_unit_y, angle);
                vec2_1.default.scale(normal, normal, (i * 2 - 1));
                ray.reportIntersection(result, delta, normal, -1);
                if (result.shouldStop(ray)) {
                    return;
                }
            }
        }
        // Circles
        var diagonalLengthSquared = Math.pow(this.radius, 2) + Math.pow(halfLen, 2);
        for (var i = 0; i < 2; i++) {
            vec2_1.default.set(l0, halfLen * (i * 2 - 1), 0);
            vec2_1.default.toGlobalFrame(l0, l0, position, angle);
            var a = Math.pow(to[0] - from[0], 2) + Math.pow(to[1] - from[1], 2);
            var b = 2 * ((to[0] - from[0]) * (from[0] - l0[0]) + (to[1] - from[1]) * (from[1] - l0[1]));
            var c = Math.pow(from[0] - l0[0], 2) + Math.pow(from[1] - l0[1], 2) - Math.pow(this.radius, 2);
            var delta = Math.pow(b, 2) - 4 * a * c;
            if (delta < 0) {
                // No intersection
                continue;
            }
            else if (delta === 0) {
                // single intersection point
                vec2_1.default.lerp(hitPointWorld, from, to, delta);
                if (vec2_1.default.squaredDistance(hitPointWorld, position) > diagonalLengthSquared) {
                    vec2_1.default.subtract(normal, hitPointWorld, l0);
                    vec2_1.default.normalize(normal, normal);
                    ray.reportIntersection(result, delta, normal, -1);
                    if (result.shouldStop(ray)) {
                        return;
                    }
                }
            }
            else {
                var sqrtDelta = Math.sqrt(delta);
                var inv2a = 1 / (2 * a);
                var d1 = (-b - sqrtDelta) * inv2a;
                var d2 = (-b + sqrtDelta) * inv2a;
                if (d1 >= 0 && d1 <= 1) {
                    vec2_1.default.lerp(hitPointWorld, from, to, d1);
                    if (vec2_1.default.squaredDistance(hitPointWorld, position) > diagonalLengthSquared) {
                        vec2_1.default.subtract(normal, hitPointWorld, l0);
                        vec2_1.default.normalize(normal, normal);
                        ray.reportIntersection(result, d1, normal, -1);
                        if (result.shouldStop(ray)) {
                            return;
                        }
                    }
                }
                if (d2 >= 0 && d2 <= 1) {
                    vec2_1.default.lerp(hitPointWorld, from, to, d2);
                    if (vec2_1.default.squaredDistance(hitPointWorld, position) > diagonalLengthSquared) {
                        vec2_1.default.subtract(normal, hitPointWorld, l0);
                        vec2_1.default.normalize(normal, normal);
                        ray.reportIntersection(result, d2, normal, -1);
                        if (result.shouldStop(ray)) {
                            return;
                        }
                    }
                }
            }
        }
    };
    Capsule.prototype.pointTest = function (localPoint) {
        var radius = this.radius;
        var halfLength = this.length * 0.5;
        if ((Math.abs(localPoint[0]) <= halfLength && Math.abs(localPoint[1]) <= radius)) {
            return true;
        }
        if (Math.pow(localPoint[0] - halfLength, 2) + Math.pow(localPoint[1], 2) <= radius * radius) {
            return true;
        }
        if (Math.pow(localPoint[0] + halfLength, 2) + Math.pow(localPoint[1], 2) <= radius * radius) {
            return true;
        }
        return false;
    };
    return Capsule;
}(shape_1.default));
exports.default = Capsule;
