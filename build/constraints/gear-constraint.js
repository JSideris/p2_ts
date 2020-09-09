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
var angle_lock_equation_1 = __importDefault(require("../equations/angle-lock-equation"));
var constraint_1 = __importDefault(require("./constraint"));
var GearConstraint = /** @class */ (function (_super) {
    __extends(GearConstraint, _super);
    /**
     * Constrains the angle of two bodies to each other to be equal. If a gear ratio is not one, the angle of bodyA must be a multiple of the angle of bodyB.
     * @class GearConstraint
     * @constructor
     * @author schteppe
     * @param {Body}            bodyA
     * @param {Body}            bodyB
     * @param {Object}          [options]
     * @param {Number}          [options.angle=0] Relative angle between the bodies. Will be set to the current angle between the bodies (the gear ratio is accounted for).
     * @param {Number}          [options.ratio=1] Gear ratio.
     * @param {Number}          [options.maxTorque] Maximum torque to apply.
     * @extends Constraint
     *
     * @example
     *     var constraint = new GearConstraint(bodyA, bodyB);
     *     world.addConstraint(constraint);
     *
     * @example
     *     var constraint = new GearConstraint(bodyA, bodyB, {
     *         ratio: 2,
     *         maxTorque: 1000
     *     });
     *     world.addConstraint(constraint);
     */
    function GearConstraint(bodyA, bodyB, options) {
        var _a;
        var _this = this;
        options = options || {};
        _this = _super.call(this, bodyA, bodyB, constraint_1.default.GEAR, options) || this;
        /**
         * The gear ratio.
         * @property ratio
         * @type {Number}
         */
        _this.ratio = (_a = options === null || options === void 0 ? void 0 : options.ratio) !== null && _a !== void 0 ? _a : 1;
        /**
         * The relative angle
         * @property angle
         * @type {Number}
         */
        _this.angle = options.angle !== undefined ? options.angle : bodyB.angle - _this.ratio * bodyA.angle;
        // Send same parameters to the equation
        _this.equations = [
            new angle_lock_equation_1.default(bodyA, bodyB, {
                ratio: _this.ratio,
                angle: _this.angle
            }),
        ];
        // Set max torque
        if (options.maxTorque !== undefined) {
            _this.setMaxTorque(options.maxTorque);
        }
        return _this;
    }
    GearConstraint.prototype.update = function () {
        var eq = this.equations[0];
        var ratio = this.ratio;
        if (eq.ratio !== ratio) {
            eq.setRatio(ratio);
        }
        eq.angle = this.angle;
    };
    /**
     * Set the max torque for the constraint.
     * @method setMaxTorque
     * @param {Number} torque
     */
    GearConstraint.prototype.setMaxTorque = function (torque) {
        this.equations[0].setMaxTorque(torque);
    };
    /**
     * Get the max torque for the constraint.
     * @method getMaxTorque
     * @return {Number}
     */
    GearConstraint.prototype.getMaxTorque = function () {
        return this.equations[0].maxForce;
    };
    return GearConstraint;
}(constraint_1.default));
exports.default = GearConstraint;
