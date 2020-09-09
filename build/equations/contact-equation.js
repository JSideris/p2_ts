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
function addSubSub(out, a, b, c, d) {
    out[0] = a[0] + b[0] - c[0] - d[0];
    out[1] = a[1] + b[1] - c[1] - d[1];
}
var vi = vec2_1.default.create();
var vj = vec2_1.default.create();
var relVel = vec2_1.default.create();
var ContactEquation = /** @class */ (function (_super) {
    __extends(ContactEquation, _super);
    /**
     * Non-penetration constraint equation. Tries to make the contactPointA and contactPointB vectors coincide, while keeping the applied force repulsive.
     *
     * @class ContactEquation
     * @constructor
     * @extends Equation
     * @param {Body} bodyA
     * @param {Body} bodyB
     */
    function ContactEquation(bodyA, bodyB) {
        var _this = _super.call(this, bodyA, bodyB, 0, Infinity) || this;
        /**
         * Vector from body i center of mass to the contact point.
         * @property contactPointA
         * @type {Array}
         */
        _this.contactPointA = vec2_1.default.create();
        _this.penetrationVec = vec2_1.default.create();
        /**
         * World-oriented vector from body A center of mass to the contact point.
         * @property contactPointB
         * @type {Array}
         */
        _this.contactPointB = vec2_1.default.create();
        /**
         * The normal vector, pointing out of body i
         * @property normalA
         * @type {Array}
         */
        _this.normalA = vec2_1.default.create();
        /**
         * The restitution to use (0=no bounciness, 1=max bounciness).
         * @property restitution
         * @type {Number}
         */
        _this.restitution = 0;
        /**
         * This property is set to true if this is the first impact between the bodies (not persistant contact).
         * @property firstImpact
         * @type {Boolean}
         * @readOnly
         */
        _this.firstImpact = false;
        /**
         * The shape in body i that triggered this contact.
         * @property shapeA
         * @type {Shape}
         */
        _this.shapeA = null;
        /**
         * The shape in body j that triggered this contact.
         * @property shapeB
         * @type {Shape}
         */
        _this.shapeB = null;
        return _this;
    }
    ContactEquation.prototype.computeB = function (a, b, h) {
        var _a, _b;
        var bi = this.bodyA, bj = this.bodyB, ri = this.contactPointA, rj = this.contactPointB, xi = (_a = bi === null || bi === void 0 ? void 0 : bi.position) !== null && _a !== void 0 ? _a : new Float32Array(2), xj = (_b = bj === null || bj === void 0 ? void 0 : bj.position) !== null && _b !== void 0 ? _b : new Float32Array(2);
        var n = this.normalA, G = this.G;
        // Caluclate cross products
        var rixn = vec2_1.default.crossLength(ri, n), rjxn = vec2_1.default.crossLength(rj, n);
        // G = [-n -rixn n rjxn]
        G[0] = -n[0];
        G[1] = -n[1];
        G[2] = -rixn;
        G[3] = n[0];
        G[4] = n[1];
        G[5] = rjxn;
        // Compute iteration
        var GW, Gq;
        if (this.firstImpact && this.restitution !== 0) {
            Gq = 0;
            GW = (1 / b) * (1 + this.restitution) * this.computeGW();
        }
        else {
            // Calculate q = xj+rj -(xi+ri) i.e. the penetration vector
            var penetrationVec = this.penetrationVec;
            addSubSub(penetrationVec, xj, rj, xi, ri);
            Gq = vec2_1.default.dot(n, penetrationVec) + this.offset;
            GW = this.computeGW();
        }
        var GiMf = this.computeGiMf();
        var B = -Gq * a - GW * b - h * GiMf;
        return B;
    };
    ;
    /**
     * Get the relative velocity along the normal vector.
     * @method getVelocityAlongNormal
     * @return {number}
     */
    ContactEquation.prototype.getVelocityAlongNormal = function () {
        this.bodyA && this.bodyA.getVelocityAtPoint(vi, this.contactPointA);
        this.bodyB && this.bodyB.getVelocityAtPoint(vj, this.contactPointB);
        vec2_1.default.subtract(relVel, vi, vj);
        return vec2_1.default.dot(this.normalA, relVel);
    };
    ;
    return ContactEquation;
}(Equation_1.default));
exports.default = ContactEquation;
