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
var Equation_1 = __importDefault(require("./Equation"));
var AngleLockEquation = /** @class */ (function (_super) {
    __extends(AngleLockEquation, _super);
    /**
     * Locks the relative angle between two bodies. The constraint tries to keep the dot product between two vectors, local in each body, to zero. The local angle in body i is a parameter.
     *
     * @class AngleLockEquation
     * @constructor
     * @extends Equation
     * @param {Body} bodyA
     * @param {Body} bodyB
     * @param {Object} [options]
     * @param {Number} [options.angle] Angle to add to the local vector in body A.
     * @param {Number} [options.ratio] Gear ratio
     */
    function AngleLockEquation(bodyA, bodyB, options) {
        var _a, _b;
        var _this = _super.call(this, bodyA, bodyB, -Infinity, Infinity) || this;
        _this.angle = (_a = options === null || options === void 0 ? void 0 : options.angle) !== null && _a !== void 0 ? _a : 0;
        _this.ratio = (_b = options === null || options === void 0 ? void 0 : options.ratio) !== null && _b !== void 0 ? _b : 1;
        _this.setRatio(_this.ratio);
        return _this;
    }
    AngleLockEquation.prototype.computeGq = function () {
        return this.ratio * this.bodyA.angle - this.bodyB.angle + this.angle;
    };
    /**
     * Set the gear ratio for this equation
     * @method setRatio
     * @param {Number} ratio
     */
    AngleLockEquation.prototype.setRatio = function (ratio) {
        var G = this.G;
        G[2] = ratio;
        G[5] = -1;
        this.ratio = ratio;
    };
    /**
     * Set the max force for the equation.
     * @method setMaxTorque
     * @param {Number} torque
     */
    AngleLockEquation.prototype.setMaxTorque = function (torque) {
        this.maxForce = torque;
        this.minForce = -torque;
    };
    return AngleLockEquation;
}(Equation_1.default));
exports.default = AngleLockEquation;
