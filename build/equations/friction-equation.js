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
var vec2_1 = __importDefault(require("../math/vec2"));
var Equation_1 = __importDefault(require("./Equation"));
var FrictionEquation = /** @class */ (function (_super) {
    __extends(FrictionEquation, _super);
    /**
     * Constrains the slipping in a contact along a tangent
     *
     * @class FrictionEquation
     * @constructor
     * @param {Body} bodyA
     * @param {Body} bodyB
     * @param {Number} slipForce
     * @extends Equation
     */
    function FrictionEquation(bodyA, bodyB, slipForce) {
        if (slipForce === void 0) { slipForce = Infinity; }
        var _this = _super.call(this, bodyA, bodyB, -slipForce, slipForce) || this;
        /**
         * Relative vector from center of body A to the contact point, world oriented.
         * @property contactPointA
         * @type {Array}
         */
        _this.contactPointA = vec2_1.default.create();
        /**
         * Relative vector from center of body B to the contact point, world oriented.
         * @property contactPointB
         * @type {Array}
         */
        _this.contactPointB = vec2_1.default.create();
        /**
         * Tangent vector that the friction force will act along. World oriented.
         * @property t
         * @type {Array}
         */
        _this.t = vec2_1.default.create();
        /**
         * ContactEquations connected to this friction equation. The contact equations can be used to rescale the max force for the friction. If more than one contact equation is given, then the max force can be set to the average.
         * @property contactEquations
         * @type {ContactEquation[]}
         */
        _this.contactEquations = [];
        /**
         * The shape in body i that triggered this friction.
         * @property shapeA
         * @type {Shape}
         * @todo Needed? The shape can be looked up via contactEquation.shapeA...
         */
        _this.shapeA = null;
        /**
         * The shape in body j that triggered this friction.
         * @property shapeB
         * @type {Shape}
         * @todo Needed? The shape can be looked up via contactEquation.shapeB...
         */
        _this.shapeB = null;
        /**
         * The friction coefficient to use.
         * @property frictionCoefficient
         * @type {Number}
         */
        _this.frictionCoefficient = 0.3;
        return _this;
    }
    /**
     * Set the slipping condition for the constraint. The friction force cannot be
     * larger than this value.
     * @method setSlipForce
     * @param  {Number} slipForce
     */
    FrictionEquation.prototype.setSlipForce = function (slipForce) {
        this.maxForce = slipForce;
        this.minForce = -slipForce;
    };
    ;
    /**
     * Get the max force for the constraint.
     * @method getSlipForce
     * @return {Number}
     */
    FrictionEquation.prototype.getSlipForce = function () {
        return this.maxForce;
    };
    ;
    FrictionEquation.prototype.computeB = function (a, b, h) {
        var ri = this.contactPointA, rj = this.contactPointB, t = this.t, G = this.G;
        // G = [-t -rixt t rjxt]
        // And remember, this is a pure velocity constraint, g is always zero!
        G[0] = -t[0];
        G[1] = -t[1];
        G[2] = -vec2_1.default.crossLength(ri, t);
        G[3] = t[0];
        G[4] = t[1];
        G[5] = vec2_1.default.crossLength(rj, t);
        var GW = this.computeGW(), GiMf = this.computeGiMf();
        var B = /* - g * a  */ -GW * b - h * GiMf;
        return B;
    };
    ;
    return FrictionEquation;
}(Equation_1.default));
exports.default = FrictionEquation;
