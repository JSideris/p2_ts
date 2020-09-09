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
var spring_1 = __importDefault(require("./spring"));
var RotationalSpring = /** @class */ (function (_super) {
    __extends(RotationalSpring, _super);
    /**
     * A rotational spring, connecting two bodies rotation. This spring explicitly adds angularForce (torque) to the bodies.
     *
     * The spring can be combined with a {{#crossLink "RevoluteConstraint"}}{{/crossLink}} to make, for example, a mouse trap.
     *
     * @class RotationalSpring
     * @extends Spring
     * @constructor
     * @param {Body} bodyA
     * @param {Body} bodyB
     * @param {Object} [options]
     * @param {number} [options.restAngle] The relative angle of bodies at which the spring is at rest. If not given, it's set to the current relative angle between the bodies.
     * @param {number} [options.stiffness=100] Spring constant (see Hookes Law). A number >= 0.
     * @param {number} [options.damping=1] A number >= 0.
     *
     * @example
     *     var spring = new RotationalSpring(bodyA, bodyB, {
     *         stiffness: 100,
     *         damping: 1
     *     });
     *     world.addSpring(spring);
     */
    function RotationalSpring(bodyA, bodyB, options) {
        var _a;
        var _this = _super.call(this, bodyA, bodyB, options) || this;
        /**
         * Rest angle of the spring.
         * @property restAngle
         * @type {number}
         */
        _this.restAngle = (_a = options === null || options === void 0 ? void 0 : options.restAngle) !== null && _a !== void 0 ? _a : bodyB.angle - bodyA.angle;
        return _this;
    }
    /**
     * Apply the spring force to the connected bodies.
     * @method applyForce
     */
    RotationalSpring.prototype.applyForce = function () {
        var k = _super.prototype.stiffness, d = _super.prototype.damping, l = this.restAngle, bodyA = _super.prototype.bodyA, bodyB = _super.prototype.bodyB, x = bodyB.angle - bodyA.angle, u = bodyB.angularVelocity - bodyA.angularVelocity;
        var torque = -k * (x - l) - d * u;
        bodyA.angularForce -= torque;
        bodyB.angularForce += torque;
    };
    ;
    return RotationalSpring;
}(spring_1.default));
exports.default = RotationalSpring;
