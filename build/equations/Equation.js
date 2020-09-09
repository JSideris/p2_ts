"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var vec2_1 = __importDefault(require("../math/vec2"));
// Shortcuts.
var scale = vec2_1.default.scale, multiply = vec2_1.default.multiply, createVec2 = vec2_1.default.create;
var Equation = /** @class */ (function () {
    /**
     * Base class for constraint equations.
     * @class Equation
     * @constructor
     * @param {Body} bodyA First body participating in the equation
     * @param {Body} bodyB Second body participating in the equation
     * @param {number} minForce Minimum force to apply. Default: -Infinity
     * @param {number} maxForce Maximum force to apply. Default: Infinity
     */
    function Equation(bodyA, bodyB, minForce, maxForce) {
        /**
         * Cap the constraint violation (G*q) to this value.
         * @property maxBias
         * @type {Number}
         */
        this.maxBias = Infinity;
        /**
         * The stiffness of this equation. Typically chosen to a large number (~1e7), but can be chosen somewhat freely to get a stable simulation.
         * @property stiffness
         * @type {Number}
         */
        this.stiffness = Equation.DEFAULT_STIFFNESS;
        /**
         * The number of time steps needed to stabilize the constraint equation. Typically between 3 and 5 time steps.
         * @property relaxation
         * @type {Number}
         */
        this.relaxation = Equation.DEFAULT_RELAXATION;
        this.offset = 0;
        this.a = 0;
        this.b = 0;
        this.epsilon = 0;
        this.timeStep = 1 / 60;
        /**
         * Indicates if stiffness or relaxation was changed.
         * @property {Boolean} needsUpdate
         */
        this.needsUpdate = true;
        /**
         * The resulting constraint multiplier from the last solve. This is mostly equivalent to the force produced by the constraint.
         * @property multiplier
         * @type {Number}
         */
        this.multiplier = 0;
        /**
         * Relative velocity.
         * @property {Number} relativeVelocity
         */
        this.relativeVelocity = 0;
        /**
         * Whether this equation is enabled or not. If true, it will be added to the solver.
         * @property {Boolean} enabled
         */
        this.enabled = true;
        // Temp stuff
        this.maxForceDt = 0;
        this.minForceDt = 0;
        this.invC = 0;
        this.B = 0;
        this.lambda = 0;
        this.index = -1;
        this.minForce = minForce !== null && minForce !== void 0 ? minForce : -Infinity;
        this.maxForce = maxForce !== null && maxForce !== void 0 ? maxForce : Infinity;
        this.maxBias = Infinity;
        this.bodyA = bodyA !== null && bodyA !== void 0 ? bodyA : null;
        this.bodyB = bodyB !== null && bodyB !== void 0 ? bodyB : null;
        this.stiffness = Equation.DEFAULT_STIFFNESS;
        this.relaxation = Equation.DEFAULT_RELAXATION;
        this.G = new Float32Array(6);
        for (var i = 0; i < 6; i++) {
            this.G[i] = 0;
        }
    }
    /**
     * Compute SPOOK parameters .a, .b and .epsilon according to the current parameters. See equations 9, 10 and 11 in the <a href="http://www8.cs.umu.se/kurser/5DV058/VT09/lectures/spooknotes.pdf">SPOOK notes</a>.
     * @method update
     */
    Equation.prototype.update = function () {
        var k = this.stiffness, d = this.relaxation, h = this.timeStep;
        this.a = 4 / (h * (1 + 4 * d));
        this.b = (4 * d) / (1 + 4 * d);
        this.epsilon = 4 / (h * h * k * (1 + 4 * d));
        this.needsUpdate = false;
    };
    /**
     * Multiply a jacobian entry with corresponding positions or velocities
     * @method gmult
     * @return {Number}
     */
    Equation.prototype.gmult = function (G, vi, wi, vj, wj) {
        return G[0] * vi[0] +
            G[1] * vi[1] +
            G[2] * wi +
            G[3] * vj[0] +
            G[4] * vj[1] +
            G[5] * wj;
    };
    /**
     * Computes the RHS of the SPOOK equation
     * @method computeB
     * @return {Number}
     */
    Equation.prototype.computeB = function (a, b, h) {
        var GW = this.computeGW();
        var Gq = this.computeGq();
        var maxBias = this.maxBias;
        if (Math.abs(Gq) > maxBias) {
            Gq = Gq > 0 ? maxBias : -maxBias;
        }
        var GiMf = this.computeGiMf();
        var B = -Gq * a - GW * b - GiMf * h;
        return B;
    };
    /**
     * Computes G\*q, where q are the generalized body coordinates
     * @method computeGq
     * @return {Number}
     */
    Equation.prototype.computeGq = function () {
        var G = this.G, bi = this.bodyA, bj = this.bodyB;
        if (!bi || !bj)
            return 0;
        var ai = bi.angle, aj = bj.angle;
        var qi = createVec2(), qj = createVec2();
        return this.gmult(G, qi, ai, qj, aj) + this.offset;
    };
    /**
     * Computes G\*W, where W are the body velocities
     * @method computeGW
     * @return {Number}
     */
    Equation.prototype.computeGW = function () {
        var G = this.G, bi = this.bodyA, bj = this.bodyB;
        if (!bi || !bj)
            return 0;
        var vi = bi.velocity, vj = bj.velocity, wi = bi.angularVelocity, wj = bj.angularVelocity;
        return this.gmult(G, vi, wi, vj, wj) + this.relativeVelocity;
    };
    /**
     * Computes G\*Wlambda, where W are the body velocities
     * @method computeGWlambda
     * @return {Number}
     */
    Equation.prototype.computeGWlambda = function () {
        var G = this.G, bi = this.bodyA, bj = this.bodyB;
        if (!bi || !bj)
            return 0;
        var vi = bi.vlambda, vj = bj.vlambda, wi = bi.wlambda, wj = bj.wlambda;
        return this.gmult(G, vi, wi, vj, wj);
    };
    /**
     * Computes G\*inv(M)\*f, where M is the mass matrix with diagonal blocks for each body, and f are the forces on the bodies.
     * @method computeGiMf
     * @return {Number}
     */
    Equation.prototype.computeGiMf = function () {
        var bi = this.bodyA, bj = this.bodyB;
        if (!bi || !bj)
            return 0;
        var fi = bi.force, ti = bi.angularForce, fj = bj.force, tj = bj.angularForce, invMassi = bi.invMassSolve, invMassj = bj.invMassSolve, invIi = bi.invInertiaSolve, invIj = bj.invInertiaSolve, G = this.G;
        var iMfi = createVec2(), iMfj = createVec2();
        scale(iMfi, fi, invMassi);
        multiply(iMfi, bi.massMultiplier, iMfi);
        scale(iMfj, fj, invMassj);
        multiply(iMfj, bj.massMultiplier, iMfj);
        return this.gmult(G, iMfi, ti * invIi, iMfj, tj * invIj);
    };
    /**
     * Computes G\*inv(M)\*G'
     * @method computeGiMGt
     * @return {Number}
     */
    Equation.prototype.computeGiMGt = function () {
        var bi = this.bodyA, bj = this.bodyB;
        if (!bi || !bj)
            return 0;
        var invMassi = bi.invMassSolve, invMassj = bj.invMassSolve, invIi = bi.invInertiaSolve, invIj = bj.invInertiaSolve, G = this.G;
        return G[0] * G[0] * invMassi * bi.massMultiplier[0] +
            G[1] * G[1] * invMassi * bi.massMultiplier[1] +
            G[2] * G[2] * invIi +
            G[3] * G[3] * invMassj * bj.massMultiplier[0] +
            G[4] * G[4] * invMassj * bj.massMultiplier[1] +
            G[5] * G[5] * invIj;
    };
    Equation.prototype.updateJacobian = function () { };
    ;
    /**
     * Add constraint velocity to the bodies.
     * @method addToWlambda
     * @param {Number} deltalambda
     */
    Equation.prototype.addToWlambda = function (deltalambda) {
        var bi = this.bodyA, bj = this.bodyB;
        if (!bi || !bj)
            return;
        var invMassi = bi.invMassSolve, invMassj = bj.invMassSolve, invIi = bi.invInertiaSolve, invIj = bj.invInertiaSolve, G = this.G;
        // v_lambda = G * inv(M) * delta_lambda
        addToVLambda(bi.vlambda, G[0], G[1], invMassi, deltalambda, bi.massMultiplier);
        bi.wlambda += invIi * G[2] * deltalambda;
        addToVLambda(bj.vlambda, G[3], G[4], invMassj, deltalambda, bj.massMultiplier);
        bj.wlambda += invIj * G[5] * deltalambda;
    };
    /**
     * Compute the denominator part of the SPOOK equation: C = G\*inv(M)\*G' + eps
     * @method computeInvC
     * @param  {Number} eps
     * @return {Number}
     */
    Equation.prototype.computeInvC = function (eps) {
        var invC = 1 / (this.computeGiMGt() + eps);
        return invC;
    };
    /**
     * The default stiffness when creating a new Equation.
     * @static
     * @property {Number} DEFAULT_STIFFNESS
     * @default 1e6
     */
    Equation.DEFAULT_STIFFNESS = 1e6;
    /**
     * The default relaxation when creating a new Equation.
     * @static
     * @property {Number} DEFAULT_RELAXATION
     * @default 4
     */
    Equation.DEFAULT_RELAXATION = 4;
    return Equation;
}());
exports.default = Equation;
function addToVLambda(vlambda, Gx, Gy, invMass, deltalambda, massMultiplier) {
    vlambda[0] += Gx * invMass * deltalambda * massMultiplier[0];
    vlambda[1] += Gy * invMass * deltalambda * massMultiplier[1];
}
