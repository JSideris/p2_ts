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
// ,   copy = require('../math/vec2').copy;
var Shape_1 = __importDefault(require("./Shape"));
var vec2_1 = __importDefault(require("../math/vec2"));
var copy = vec2_1.default.copy;
var Particle = /** @class */ (function (_super) {
    __extends(Particle, _super);
    /**
     * Particle shape class.
     * @class Particle
     * @constructor
     * @param {object} [options] (Note that this options object will be passed on to the {{#crossLink "Shape"}}{{/crossLink}} constructor.)
     * @extends Shape
     * @example
     *     var body = new Body();
     *     var shape = new Particle();
     *     body.addShape(shape);
     */
    function Particle(options) {
        return _super.call(this, Shape_1.default.PARTICLE, options) || this;
    }
    Particle.prototype.computeMomentOfInertia = function () {
        return 0; // Can't rotate a particle
    };
    ;
    Particle.prototype.updateBoundingRadius = function () {
        this.boundingRadius = 0;
        return 0;
    };
    ;
    Particle.prototype.updateArea = function () { return 0; };
    /**
     * @method computeAABB
     * @param  {AABB}   out
     * @param  {Array}  position
     * @param  {Number} angle
     */
    Particle.prototype.computeAABB = function (out, position /*, angle*/) {
        copy(out.lowerBound, position);
        copy(out.upperBound, position);
    };
    ;
    Particle.prototype.raycast = function (result, ray, position, angle) { 1; };
    return Particle;
}(Shape_1.default));
exports.default = Particle;
