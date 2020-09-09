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
var constraint_1 = __importDefault(require("./constraint"));
var Equation_1 = __importDefault(require("../equations/Equation"));
var vec2_1 = __importDefault(require("../math/vec2"));
var rotational_velocity_equation_1 = __importDefault(require("../equations/rotational-velocity-equation"));
var rotational_lock_equation_1 = __importDefault(require("../equations/rotational-lock-equation"));
var sub = vec2_1.default.subtract;
var add = vec2_1.default.add;
var dot = vec2_1.default.dot;
var rotate = vec2_1.default.rotate;
var copy = vec2_1.default.copy;
var crossLength = vec2_1.default.crossLength;
var worldPivotA = vec2_1.default.create(), worldPivotB = vec2_1.default.create(), xAxis = vec2_1.default.fromValues(1, 0), yAxis = vec2_1.default.fromValues(0, 1), g = vec2_1.default.create();
var RevoluteConstraint = /** @class */ (function (_super) {
    __extends(RevoluteConstraint, _super);
    /**
     * Connects two bodies at given offset points, letting them rotate relative to each other around this point.
     * @class RevoluteConstraint
     * @constructor
     * @author schteppe
     * @param {Body}    bodyA
     * @param {Body}    bodyB
     * @param {Object}  [options]
     * @param {Array}   [options.worldPivot] A pivot point given in world coordinates. If specified, localPivotA and localPivotB are automatically computed from this value.
     * @param {Array}   [options.localPivotA] The point relative to the center of mass of bodyA which bodyA is constrained to.
     * @param {Array}   [options.localPivotB] See localPivotA.
     * @param {Number}  [options.maxForce] The maximum force that should be applied to constrain the bodies.
     * @extends Constraint
     *
     * @example
     *     // This will create a revolute constraint between two bodies with pivot point in between them.
     *     var bodyA = new Body({ mass: 1, position: [-1, 0] });
     *     world.addBody(bodyA);
     *
     *     var bodyB = new Body({ mass: 1, position: [1, 0] });
     *     world.addBody(bodyB);
     *
     *     var constraint = new RevoluteConstraint(bodyA, bodyB, {
     *         worldPivot: [0, 0]
     *     });
     *     world.addConstraint(constraint);
     *
     *     // Using body-local pivot points, the constraint could have been constructed like this:
     *     var constraint = new RevoluteConstraint(bodyA, bodyB, {
     *         localPivotA: [1, 0],
     *         localPivotB: [-1, 0]
     *     });
     */
    function RevoluteConstraint(bodyA, bodyB, options) {
        var _a;
        var _this = _super.call(this, bodyA, bodyB, constraint_1.default.REVOLUTE, options) || this;
        var maxForce = _this.maxForce = (_a = options === null || options === void 0 ? void 0 : options.maxForce) !== null && _a !== void 0 ? _a : Infinity;
        var pivotA = _this.pivotA = vec2_1.default.create();
        var pivotB = _this.pivotB = vec2_1.default.create();
        if (options === null || options === void 0 ? void 0 : options.worldPivot) {
            // Compute pivotA and pivotB
            sub(pivotA, options.worldPivot, bodyA.position);
            sub(pivotB, options.worldPivot, bodyB.position);
            // Rotate to local coordinate system
            rotate(pivotA, pivotA, -bodyA.angle);
            rotate(pivotB, pivotB, -bodyB.angle);
        }
        else {
            // Get pivotA and pivotB
            if (options === null || options === void 0 ? void 0 : options.localPivotA) {
                copy(pivotA, options.localPivotA);
            }
            if (options === null || options === void 0 ? void 0 : options.localPivotB) {
                copy(pivotB, options.localPivotB);
            }
        }
        var motorEquation = _this.motorEquation = new rotational_velocity_equation_1.default(bodyA, bodyB);
        motorEquation.enabled = false;
        var upperLimitEquation = _this.upperLimitEquation = new rotational_lock_equation_1.default(bodyA, bodyB);
        var lowerLimitEquation = _this.lowerLimitEquation = new rotational_lock_equation_1.default(bodyA, bodyB);
        upperLimitEquation.minForce = lowerLimitEquation.maxForce = 0;
        // Equations to be fed to the solver
        var eqs = _this.equations = [
            new Equation_1.default(bodyA, bodyB, -maxForce, maxForce),
            new Equation_1.default(bodyA, bodyB, -maxForce, maxForce),
            motorEquation,
            upperLimitEquation,
            lowerLimitEquation
        ];
        var x = eqs[0];
        var y = eqs[1];
        // TODO: bad practice.
        x.computeGq = function () {
            rotate(worldPivotA, pivotA, bodyA.angle);
            rotate(worldPivotB, pivotB, bodyB.angle);
            add(g, bodyB.position, worldPivotB);
            sub(g, g, bodyA.position);
            sub(g, g, worldPivotA);
            return dot(g, xAxis);
        };
        y.computeGq = function () {
            rotate(worldPivotA, pivotA, bodyA.angle);
            rotate(worldPivotB, pivotB, bodyB.angle);
            add(g, bodyB.position, worldPivotB);
            sub(g, g, bodyA.position);
            sub(g, g, worldPivotA);
            return dot(g, yAxis);
        };
        y.minForce = x.minForce = -maxForce;
        y.maxForce = x.maxForce = maxForce;
        // These never change but the angular parts do
        x.G[0] = -1;
        x.G[1] = 0;
        x.G[3] = 1;
        x.G[4] = 0;
        y.G[0] = 0;
        y.G[1] = -1;
        y.G[3] = 0;
        y.G[4] = 1;
        _this.angle = 0;
        _this.lowerLimitEnabled = false;
        _this.upperLimitEnabled = false;
        _this.lowerLimit = 0;
        _this.upperLimit = 0;
        return _this;
    }
    /**
     * Set the constraint angle limits, and enable them.
     * @method setLimits
     * @param {number} lower Lower angle limit.
     * @param {number} upper Upper angle limit.
     */
    RevoluteConstraint.prototype.setLimits = function (lower, upper) {
        this.lowerLimit = lower;
        this.upperLimit = upper;
        this.lowerLimitEnabled = this.upperLimitEnabled = true;
    };
    RevoluteConstraint.prototype.update = function () {
        var bodyA = this.bodyA, bodyB = this.bodyB, pivotA = this.pivotA, pivotB = this.pivotB, eqs = this.equations, x = eqs[0], y = eqs[1], upperLimit = this.upperLimit, lowerLimit = this.lowerLimit, upperLimitEquation = this.upperLimitEquation, lowerLimitEquation = this.lowerLimitEquation;
        var relAngle = this.angle = bodyB.angle - bodyA.angle;
        upperLimitEquation.angle = upperLimit;
        upperLimitEquation.enabled = this.upperLimitEnabled && relAngle > upperLimit;
        lowerLimitEquation.angle = lowerLimit;
        lowerLimitEquation.enabled = this.lowerLimitEnabled && relAngle < lowerLimit;
        /*

        The constraint violation is

            g = xj + rj - xi - ri

        ...where xi and xj are the body positions and ri and rj world-oriented offset vectors. Differentiate:

            gdot = vj + wj x rj - vi - wi x ri

        We split this into x and y directions. (let x and y be unit vectors along the respective axes)

            gdot * x = ( vj + wj x rj - vi - wi x ri ) * x
                    = ( vj*x + (wj x rj)*x -vi*x -(wi x ri)*x
                    = ( vj*x + (rj x x)*wj -vi*x -(ri x x)*wi
                    = [ -x   -(ri x x)   x   (rj x x)] * [vi wi vj wj]
                    = G*W

        ...and similar for y. We have then identified the jacobian entries for x and y directions:

            Gx = [ x   (rj x x)   -x   -(ri x x)]
            Gy = [ y   (rj x y)   -y   -(ri x y)]

        So for example, in the X direction we would get in 2 dimensions

            G = [ [1   0   (rj x [1,0])   -1   0   -(ri x [1,0])]
                [0   1   (rj x [0,1])    0  -1   -(ri x [0,1])]
        */
        rotate(worldPivotA, pivotA, bodyA.angle);
        rotate(worldPivotB, pivotB, bodyB.angle);
        // @todo: these are a bit sparse. We could save some computations on making custom eq.computeGW functions, etc
        var xG = x.G;
        xG[2] = -crossLength(worldPivotA, xAxis);
        xG[5] = crossLength(worldPivotB, xAxis);
        var yG = y.G;
        yG[2] = -crossLength(worldPivotA, yAxis);
        yG[5] = crossLength(worldPivotB, yAxis);
    };
    Object.defineProperty(RevoluteConstraint.prototype, "motorEnabled", {
        /**
         * @property {boolean} motorEnabled
         */
        get: function () {
            return this.motorEquation.enabled;
        },
        set: function (value) {
            this.motorEquation.enabled = value;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(RevoluteConstraint.prototype, "motorSpeed", {
        /**
         * @property {number} motorSpeed
         */
        get: function () {
            return this.motorEquation.relativeVelocity;
        },
        set: function (value) {
            this.motorEquation.relativeVelocity = value;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(RevoluteConstraint.prototype, "motorMaxForce", {
        /**
         * @property {number} motorMaxForce
         */
        get: function () {
            return this.motorEquation.maxForce;
        },
        set: function (value) {
            var eq = this.motorEquation;
            eq.maxForce = value;
            eq.minForce = -value;
        },
        enumerable: false,
        configurable: true
    });
    return RevoluteConstraint;
}(constraint_1.default));
exports.default = RevoluteConstraint;
