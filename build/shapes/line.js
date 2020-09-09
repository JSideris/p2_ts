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
var Shape_1 = __importDefault(require("./Shape"));
var vec2_1 = __importDefault(require("../math/vec2"));
var raycast_normal = vec2_1.default.create();
var raycast_l0 = vec2_1.default.create();
var raycast_l1 = vec2_1.default.create();
var raycast_unit_y = vec2_1.default.fromValues(0, 1);
var Line = /** @class */ (function (_super) {
    __extends(Line, _super);
    /**
     * Line shape class. The line shape is along the x direction, and stretches from [-length/2, 0] to [length/2,0].
     * @class Line
     * @param {object} [options] (Note that this options object will be passed on to the {{#crossLink "Shape"}}{{/crossLink}} constructor.)
     * @param {Number} [options.length=1] The total length of the line
     * @extends Shape
     * @constructor
     * @example
     *     var body = new Body();
     *     var lineShape = new Line({
     *         length: 1
     *     });
     *     body.addShape(lineShape);
     */
    function Line(options) {
        var _a;
        var _this = _super.call(this, Shape_1.default.LINE, options) || this;
        /**
         * Length of this line
         * @property {Number} length
         * @default 1
         */
        _this.length = 1;
        _this.length = (_a = options === null || options === void 0 ? void 0 : options.length) !== null && _a !== void 0 ? _a : 1;
        return _this;
    }
    Line.prototype.computeMomentOfInertia = function () {
        return Math.pow(this.length, 2) / 12;
    };
    ;
    Line.prototype.updateBoundingRadius = function () {
        this.boundingRadius = this.length / 2;
        return this.boundingRadius;
    };
    ;
    /**
     * @method computeAABB
     * @param  {AABB}   out      The resulting AABB.
     * @param  {Array}  position
     * @param  {Number} angle
     */
    Line.prototype.computeAABB = function (out, position, angle) {
        var points = [vec2_1.default.create(), vec2_1.default.create()];
        var l2 = this.length / 2;
        vec2_1.default.set(points[0], -l2, 0);
        vec2_1.default.set(points[1], l2, 0);
        out.setFromPoints(points, position, angle, 0);
    };
    ;
    Line.prototype.updateArea = function () { return 0; };
    /**
     * @method raycast
     * @param  {RaycastResult} result
     * @param  {Ray} ray
     * @param  {number} angle
     * @param  {array} position
     */
    Line.prototype.raycast = function (result, ray, position, angle) {
        var from = ray.from;
        var to = ray.to;
        var l0 = raycast_l0;
        var l1 = raycast_l1;
        // get start and end of the line
        var halfLen = this.length / 2;
        vec2_1.default.set(l0, -halfLen, 0);
        vec2_1.default.set(l1, halfLen, 0);
        vec2_1.default.toGlobalFrame(l0, l0, position, angle);
        vec2_1.default.toGlobalFrame(l1, l1, position, angle);
        var fraction = vec2_1.default.getLineSegmentsIntersectionFraction(l0, l1, from, to);
        if (fraction >= 0) {
            var normal = raycast_normal;
            vec2_1.default.rotate(normal, raycast_unit_y, angle); // todo: this should depend on which side the ray comes from
            ray.reportIntersection(result, fraction, normal, -1);
        }
    };
    ;
    return Line;
}(Shape_1.default));
exports.default = Line;
