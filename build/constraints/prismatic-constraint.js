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
var constraint_1 = __importDefault(require("./constraint"));
var contact_equation_1 = __importDefault(require("../equations/contact-equation"));
var Equation_1 = __importDefault(require("../equations/Equation"));
var rotational_lock_equation_1 = __importDefault(require("../equations/rotational-lock-equation"));
var worldAxisA = vec2_1.default.create(), worldAnchorA = vec2_1.default.create(), worldAnchorB = vec2_1.default.create(), orientedAnchorA = vec2_1.default.create(), orientedAnchorB = vec2_1.default.create(), tmp = vec2_1.default.create();
var PrismaticConstraint = /** @class */ (function (_super) {
    __extends(PrismaticConstraint, _super);
    /**
     * Constraint that only allows bodies to move along a line, relative to each other. See <a href="http://www.iforce2d.net/b2dtut/joints-prismatic">this tutorial</a>. Also called "slider constraint".
     *
     * @class PrismaticConstraint
     * @constructor
     * @extends Constraint
     * @author schteppe
     * @param {Body} bodyA
     * @param {Body} bodyB
     * @param {Object} [options]
     * @param {Number} [options.maxForce] Max force to be applied by the constraint
     * @param {Array} [options.localAnchorA] Body A's anchor point, defined in its own local frame.
     * @param {Array} [options.localAnchorB] Body B's anchor point, defined in its own local frame.
     * @param {Array} [options.localAxisA] An axis, defined in body A frame, that body B's anchor point may slide along.
     * @param {Boolean} [options.disableRotationalLock] If set to true, bodyB will be free to rotate around its anchor point.
     * @param {Number} [options.upperLimit]
     * @param {Number} [options.lowerLimit]
     * @todo Ability to create using only a point and a worldAxis
     * @example
     *     var constraint = new PrismaticConstraint(bodyA, bodyB, {
     *         localAxisA: [0, 1]
     *     });
     *     world.addConstraint(constraint);
     */
    function PrismaticConstraint(bodyA, bodyB, options) {
        var _a, _b, _c;
        var _this = _super.call(this, bodyA, bodyB, constraint_1.default.PRISMATIC, options) || this;
        // Get anchors
        var localAnchorA = vec2_1.default.create(), localAxisA = vec2_1.default.fromValues(1, 0), localAnchorB = vec2_1.default.create();
        if (options === null || options === void 0 ? void 0 : options.localAnchorA) {
            vec2_1.default.copy(localAnchorA, options.localAnchorA);
        }
        if (options === null || options === void 0 ? void 0 : options.localAxisA) {
            vec2_1.default.copy(localAxisA, options.localAxisA);
        }
        if (options === null || options === void 0 ? void 0 : options.localAnchorB) {
            vec2_1.default.copy(localAnchorB, options.localAnchorB);
        }
        _this.localAnchorA = localAnchorA;
        _this.localAnchorB = localAnchorB;
        _this.localAxisA = localAxisA;
        /*

        The constraint violation for the common axis point is

            g = ( xj + rj - xi - ri ) * t   :=  gg*t

        where r are body-local anchor points, and t is a tangent to the constraint axis defined in body i frame.

            gdot =  ( vj + wj x rj - vi - wi x ri ) * t + ( xj + rj - xi - ri ) * ( wi x t )

        Note the use of the chain rule. Now we identify the jacobian

            G*W = [ -t      -ri x t + t x gg     t    rj x t ] * [vi wi vj wj]

        The rotational part is just a rotation lock.

        */
        var maxForce = _this.maxForce = (_a = options === null || options === void 0 ? void 0 : options.maxForce) !== null && _a !== void 0 ? _a : Infinity;
        // Translational part
        var trans = new Equation_1.default(bodyA, bodyB, -maxForce, maxForce);
        var ri = vec2_1.default.create(), rj = vec2_1.default.create(), gg = vec2_1.default.create(), t = vec2_1.default.create();
        // TODO: This is a bad practice.
        trans.computeGq = function () {
            // g = ( xj + rj - xi - ri ) * t
            return vec2_1.default.dot(gg, t);
        };
        // TODO: This is a bad practice.
        trans.updateJacobian = function () {
            var G = this.G, xi = bodyA.position, xj = bodyB.position;
            vec2_1.default.rotate(ri, localAnchorA, bodyA.angle);
            vec2_1.default.rotate(rj, localAnchorB, bodyB.angle);
            vec2_1.default.add(gg, xj, rj);
            vec2_1.default.subtract(gg, gg, xi);
            vec2_1.default.subtract(gg, gg, ri);
            vec2_1.default.rotate(t, localAxisA, bodyA.angle + Math.PI / 2);
            G[0] = -t[0];
            G[1] = -t[1];
            G[2] = -vec2_1.default.crossLength(ri, t) + vec2_1.default.crossLength(t, gg);
            G[3] = t[0];
            G[4] = t[1];
            G[5] = vec2_1.default.crossLength(rj, t);
        };
        _this.equations.push(trans);
        // Rotational part
        if (!(options === null || options === void 0 ? void 0 : options.disableRotationalLock)) {
            var rot = new rotational_lock_equation_1.default(bodyA, bodyB);
            _this.equations.push(rot);
        }
        /**
         * The position of anchor A relative to anchor B, along the constraint axis.
         * @property position
         * @type {Number}
         */
        _this.position = 0;
        // Is this one used at all?
        _this.velocity = 0;
        /**
         * Set to true to enable lower limit.
         * @property lowerLimitEnabled
         * @type {Boolean}
         */
        _this.lowerLimitEnabled = (options === null || options === void 0 ? void 0 : options.lowerLimit) !== undefined ? true : false;
        /**
         * Set to true to enable upper limit.
         * @property upperLimitEnabled
         * @type {Boolean}
         */
        _this.upperLimitEnabled = (options === null || options === void 0 ? void 0 : options.upperLimit) !== undefined ? true : false;
        /**
         * Lower constraint limit. The constraint position is forced to be larger than this value.
         * @property lowerLimit
         * @type {Number}
         */
        _this.lowerLimit = (_b = options === null || options === void 0 ? void 0 : options.lowerLimit) !== null && _b !== void 0 ? _b : 0;
        /**
         * Upper constraint limit. The constraint position is forced to be smaller than this value.
         * @property upperLimit
         * @type {Number}
         */
        _this.upperLimit = (_c = options === null || options === void 0 ? void 0 : options.upperLimit) !== null && _c !== void 0 ? _c : 1;
        // Equations used for limits
        _this.upperLimitEquation = new contact_equation_1.default(bodyA, bodyB);
        _this.lowerLimitEquation = new contact_equation_1.default(bodyA, bodyB);
        // Set max/min forces
        _this.upperLimitEquation.minForce = _this.lowerLimitEquation.minForce = 0;
        _this.upperLimitEquation.maxForce = _this.lowerLimitEquation.maxForce = maxForce;
        /**
         * Equation used for the motor.
         * @property motorEquation
         * @type {Equation}
         */
        _this.motorEquation = new Equation_1.default(bodyA, bodyB);
        /**
         * The current motor state. Enable or disable the motor using .enableMotor
         * @property motorEnabled
         * @type {Boolean}
         */
        _this.motorEnabled = false;
        /**
         * Set the target speed for the motor.
         * @property motorSpeed
         * @type {Number}
         */
        _this.motorSpeed = 0;
        var that = _this;
        var motorEquation = _this.motorEquation;
        motorEquation.computeGq = function () { return 0; };
        motorEquation.computeGW = function () {
            var G = this.G, bi = this.bodyA, bj = this.bodyB, vi = bi.velocity, vj = bj.velocity, wi = bi.angularVelocity, wj = bj.angularVelocity;
            return this.gmult(G, vi, wi, vj, wj) + that.motorSpeed;
        };
        return _this;
    }
    /**
     * Update the constraint equations. Should be done if any of the bodies changed position, before solving.
     * @method update
     */
    PrismaticConstraint.prototype.update = function () {
        var eqs = this.equations, trans = eqs[0], upperLimit = this.upperLimit, lowerLimit = this.lowerLimit, upperLimitEquation = this.upperLimitEquation, lowerLimitEquation = this.lowerLimitEquation, bodyA = this.bodyA, bodyB = this.bodyB, localAxisA = this.localAxisA, localAnchorA = this.localAnchorA, localAnchorB = this.localAnchorB;
        trans.updateJacobian();
        // Transform local things to world
        vec2_1.default.rotate(worldAxisA, localAxisA, bodyA.angle);
        vec2_1.default.rotate(orientedAnchorA, localAnchorA, bodyA.angle);
        vec2_1.default.add(worldAnchorA, orientedAnchorA, bodyA.position);
        vec2_1.default.rotate(orientedAnchorB, localAnchorB, bodyB.angle);
        vec2_1.default.add(worldAnchorB, orientedAnchorB, bodyB.position);
        var relPosition = this.position = vec2_1.default.dot(worldAnchorB, worldAxisA) - vec2_1.default.dot(worldAnchorA, worldAxisA);
        // Motor
        if (this.motorEnabled) {
            // G = [ a     a x ri   -a   -a x rj ]
            var G = this.motorEquation.G;
            G[0] = worldAxisA[0];
            G[1] = worldAxisA[1];
            G[2] = vec2_1.default.crossLength(worldAxisA, orientedAnchorB);
            G[3] = -worldAxisA[0];
            G[4] = -worldAxisA[1];
            G[5] = -vec2_1.default.crossLength(worldAxisA, orientedAnchorA);
        }
        /*
            Limits strategy:
            Add contact equation, with normal along the constraint axis.
            min/maxForce is set so the constraint is repulsive in the correct direction.
            Some offset is added to either equation.contactPointA or .contactPointB to get the correct upper/lower limit.

                    ^
                    |
        upperLimit x
                    |    ------
            anchorB x<---|  B |
                    |    |    |
            ------   |    ------
            |    |   |
            |  A |-->x anchorA
            ------   |
                    x lowerLimit
                    |
                    axis
        */
        if (this.upperLimitEnabled && relPosition > upperLimit) {
            // Update contact constraint normal, etc
            vec2_1.default.scale(upperLimitEquation.normalA, worldAxisA, -1);
            vec2_1.default.subtract(upperLimitEquation.contactPointA, worldAnchorA, bodyA.position);
            vec2_1.default.subtract(upperLimitEquation.contactPointB, worldAnchorB, bodyB.position);
            vec2_1.default.scale(tmp, worldAxisA, upperLimit);
            vec2_1.default.add(upperLimitEquation.contactPointA, upperLimitEquation.contactPointA, tmp);
            if (eqs.indexOf(upperLimitEquation) === -1) {
                eqs.push(upperLimitEquation);
            }
        }
        else {
            var idx = eqs.indexOf(upperLimitEquation);
            if (idx !== -1) {
                eqs.splice(idx, 1);
            }
        }
        if (this.lowerLimitEnabled && relPosition < lowerLimit) {
            // Update contact constraint normal, etc
            vec2_1.default.scale(lowerLimitEquation.normalA, worldAxisA, 1);
            vec2_1.default.subtract(lowerLimitEquation.contactPointA, worldAnchorA, bodyA.position);
            vec2_1.default.subtract(lowerLimitEquation.contactPointB, worldAnchorB, bodyB.position);
            vec2_1.default.scale(tmp, worldAxisA, lowerLimit);
            vec2_1.default.subtract(lowerLimitEquation.contactPointB, lowerLimitEquation.contactPointB, tmp);
            if (eqs.indexOf(lowerLimitEquation) === -1) {
                eqs.push(lowerLimitEquation);
            }
        }
        else {
            var idx = eqs.indexOf(lowerLimitEquation);
            if (idx !== -1) {
                eqs.splice(idx, 1);
            }
        }
    };
    /**
     * Enable the motor
     * @method enableMotor
     */
    PrismaticConstraint.prototype.enableMotor = function () {
        if (this.motorEnabled) {
            return;
        }
        this.equations.push(this.motorEquation);
        this.motorEnabled = true;
    };
    /**
     * Disable the rotational motor
     * @method disableMotor
     */
    PrismaticConstraint.prototype.disableMotor = function () {
        if (!this.motorEnabled) {
            return;
        }
        var i = this.equations.indexOf(this.motorEquation);
        this.equations.splice(i, 1);
        this.motorEnabled = false;
    };
    /**
     * Set the constraint limits.
     * @method setLimits
     * @param {number} lower Lower limit.
     * @param {number} upper Upper limit.
     */
    PrismaticConstraint.prototype.setLimits = function (lower, upper) {
        if (typeof (lower) === 'number') {
            this.lowerLimit = lower;
            this.lowerLimitEnabled = true;
        }
        else {
            this.lowerLimit = lower;
            this.lowerLimitEnabled = false;
        }
        if (typeof (upper) === 'number') {
            this.upperLimit = upper;
            this.upperLimitEnabled = true;
        }
        else {
            this.upperLimit = upper;
            this.upperLimitEnabled = false;
        }
    };
    return PrismaticConstraint;
}(constraint_1.default));
exports.default = PrismaticConstraint;
