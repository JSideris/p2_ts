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
// var vec2 = require('../math/vec2')
// ,   Shape = require('./Shape')
// ,   shallowClone = require('../utils/Utils').shallowClone
// ,   Convex = require('./Convex');
var Convex_1 = __importDefault(require("./Convex"));
var shape_1 = __importDefault(require("./shape"));
var vec2_1 = __importDefault(require("../math/vec2"));
var Box = /** @class */ (function (_super) {
    __extends(Box, _super);
    /**
     * Box shape class.
     * @class Box
     * @constructor
     * @param {object} [options] (Note that this options object will be passed on to the {{#crossLink "Shape"}}{{/crossLink}} constructor.)
     * @param {Number} [options.width=1] Total width of the box
     * @param {Number} [options.height=1] Total height of the box
     * @extends Convex
     * @example
     *     var body = new Body({ mass: 1 });
     *     var boxShape = new Box({
     *         width: 2,
     *         height: 1
     *     });
     *     body.addShape(boxShape);
     */
    function Box(options) {
        var _a, _b;
        var _this = this;
        var width = (_a = options === null || options === void 0 ? void 0 : options.width) !== null && _a !== void 0 ? _a : 1;
        var height = (_b = options === null || options === void 0 ? void 0 : options.height) !== null && _b !== void 0 ? _b : 1;
        var hw = width / 2;
        var hh = height / 2;
        _this = _super.call(this, shape_1.default.BOX, [
            vec2_1.default.fromValues(-hw, -hh),
            vec2_1.default.fromValues(hw, -hh),
            vec2_1.default.fromValues(hw, hh),
            vec2_1.default.fromValues(-hw, hh)
        ], options) || this;
        _this.height = height;
        _this.width = width;
        return _this;
    }
    /**
     * Compute moment of inertia
     * @method computeMomentOfInertia
     * @return {Number}
     */
    Box.prototype.computeMomentOfInertia = function () {
        var w = this.width, h = this.height;
        return (h * h + w * w) / 12;
    };
    ;
    /**
     * Update the bounding radius
     * @method updateBoundingRadius
     */
    Box.prototype.updateBoundingRadius = function () {
        var w = this.width, h = this.height;
        this.boundingRadius = Math.sqrt(w * w + h * h) / 2;
        return this.boundingRadius;
    };
    ;
    /**
     * @method computeAABB
     * @param  {AABB}   out      The resulting AABB.
     * @param  {Array}  position
     * @param  {Number} angle
     */
    Box.prototype.computeAABB = function (out, position, angle) {
        var c = Math.abs(Math.cos(angle)), s = Math.abs(Math.sin(angle)), w = this.width, h = this.height;
        var height = (w * s + h * c) * 0.5;
        var width = (h * s + w * c) * 0.5;
        var l = out.lowerBound;
        var u = out.upperBound;
        var px = position[0];
        var py = position[1];
        l[0] = px - width;
        l[1] = py - height;
        u[0] = px + width;
        u[1] = py + height;
    };
    ;
    Box.prototype.updateArea = function () {
        this.area = this.width * this.height;
        return this.area;
    };
    ;
    Box.prototype.pointTest = function (localPoint) {
        return Math.abs(localPoint[0]) <= this.width * 0.5 && Math.abs(localPoint[1]) <= this.height * 0.5;
    };
    ;
    return Box;
}(Convex_1.default));
exports.default = Box;
