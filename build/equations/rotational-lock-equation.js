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
var vec2_1 = __importDefault(require("../math/vec2"));
var worldVectorA = vec2_1.default.create(), worldVectorB = vec2_1.default.create(), xAxis = vec2_1.default.fromValues(1, 0), yAxis = vec2_1.default.fromValues(0, 1);
var RotationalLockEquation = /** @class */ (function (_super) {
    __extends(RotationalLockEquation, _super);
    /**
     * Locks the relative angle between two bodies. The constraint tries to keep the dot product between two vectors, local in each body, to zero. The local angle in body i is a parameter.
     *
     * @class RotationalLockEquation
     * @constructor
     * @extends Equation
     * @param {Body} bodyA
     * @param {Body} bodyB
     * @param {Object} [options]
     * @param {Number} [options.angle] Angle to add to the local vector in bodyA.
     */
    function RotationalLockEquation(bodyA, bodyB, options) {
        var _a;
        var _this = _super.call(this, bodyA, bodyB, -Infinity, Infinity) || this;
        _this.angle = (_a = options === null || options === void 0 ? void 0 : options.angle) !== null && _a !== void 0 ? _a : 0;
        var G = _this.G;
        G[2] = 1;
        G[5] = -1;
        return _this;
    }
    RotationalLockEquation.prototype.computeGq = function () {
        vec2_1.default.rotate(worldVectorA, xAxis, this.bodyA.angle + this.angle);
        vec2_1.default.rotate(worldVectorB, yAxis, this.bodyB.angle);
        return vec2_1.default.dot(worldVectorA, worldVectorB);
    };
    ;
    return RotationalLockEquation;
}(Equation_1.default));
exports.default = RotationalLockEquation;
