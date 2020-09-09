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
var Equation_1 = __importDefault(require("../equations/Equation"));
var n = vec2_1.default.create();
var ri = vec2_1.default.create(); // worldAnchorA
var rj = vec2_1.default.create(); // worldAnchorB
var DistanceConstraint = /** @class */ (function (_super) {
    __extends(DistanceConstraint, _super);
    // this.upperLimitEnabled = false;
    // this.upperLimit = 1;
    // this.lowerLimitEnabled = false;
    // this.lowerLimit = 0;
    // this.position = 0;
    /**
     * Constraint that tries to keep the distance between two bodies constant.
     *
     * @class DistanceConstraint
     * @constructor
     * @author schteppe
     * @param {Body} bodyA
     * @param {Body} bodyB
     * @param {object} [options]
     * @param {number} [options.distance] The distance to keep between the anchor points. Defaults to the current distance between the bodies.
     * @param {Array} [options.localAnchorA] The anchor point for bodyA, defined locally in bodyA frame. Defaults to [0,0].
     * @param {Array} [options.localAnchorB] The anchor point for bodyB, defined locally in bodyB frame. Defaults to [0,0].
     * @param {object} [options.maxForce=Number.MAX_VALUE] Maximum force to apply.
     * @extends Constraint
     *
     * @example
     *     // If distance is not given as an option, then the current distance between the bodies is used.
     *     // In this example, the bodies will be constrained to have a distance of 2 between their centers.
     *     var bodyA = new Body({ mass: 1, position: [-1, 0] });
     *     var bodyB = new Body({ mass: 1, position: [1, 0] });
     *     var constraint = new DistanceConstraint(bodyA, bodyB);
     *     world.addConstraint(constraint);
     *
     * @example
     *     // Manually set the distance and anchors
     *     var constraint = new DistanceConstraint(bodyA, bodyB, {
     *         distance: 1,          // Distance to keep between the points
     *         localAnchorA: [1, 0], // Point on bodyA
     *         localAnchorB: [-1, 0] // Point on bodyB
     *     });
     *     world.addConstraint(constraint);
     */
    function DistanceConstraint(bodyA, bodyB, options) {
        var _a;
        var _this = _super.call(this, bodyA, bodyB, constraint_1.default.DISTANCE, options) || this;
        /**
         * The distance to keep.
         * @property distance
         * @type {Number}
         */
        _this.distance = 0;
        /**
         * Max force to apply.
         * @property {number} maxForce
         */
        _this.maxForce = Infinity;
        /**
         * If the upper limit is enabled or not.
         * @property {Boolean} upperLimitEnabled
         */
        _this.upperLimitEnabled = false;
        /**
         * The upper constraint limit.
         * @property {number} upperLimit
         */
        _this.upperLimit = 1;
        /**
         * If the lower limit is enabled or not.
         * @property {Boolean} lowerLimitEnabled
         */
        _this.lowerLimitEnabled = false;
        /**
         * The lower constraint limit.
         * @property {number} lowerLimit
         */
        _this.lowerLimit = 0;
        /**
         * Current constraint position. This is equal to the current distance between the world anchor points.
         * @property {number} position
         */
        _this.position = 0;
        _this.localAnchorA = (options === null || options === void 0 ? void 0 : options.localAnchorA) ? vec2_1.default.clone(options.localAnchorA) : vec2_1.default.create();
        _this.localAnchorB = (options === null || options === void 0 ? void 0 : options.localAnchorB) ? vec2_1.default.clone(options.localAnchorB) : vec2_1.default.create();
        var localAnchorA = _this.localAnchorA;
        var localAnchorB = _this.localAnchorB;
        _this.distance = 0;
        if ((options === null || options === void 0 ? void 0 : options.distance) !== undefined) {
            _this.distance = options.distance;
        }
        else {
            // Use the current world distance between the world anchor points.
            var worldAnchorA = vec2_1.default.create(), worldAnchorB = vec2_1.default.create(), r = vec2_1.default.create();
            // Transform local anchors to world
            vec2_1.default.rotate(worldAnchorA, localAnchorA, bodyA.angle);
            vec2_1.default.rotate(worldAnchorB, localAnchorB, bodyB.angle);
            vec2_1.default.add(r, bodyB.position, worldAnchorB);
            vec2_1.default.subtract(r, r, worldAnchorA);
            vec2_1.default.subtract(r, r, bodyA.position);
            _this.distance = vec2_1.default.length(r);
        }
        var maxForce = (_a = options === null || options === void 0 ? void 0 : options.maxForce) !== null && _a !== void 0 ? _a : Infinity;
        var normal = new Equation_1.default(bodyA, bodyB, -maxForce, maxForce); // Just in the normal direction
        _this.equations = [normal];
        _this.maxForce = maxForce;
        // g = (xi - xj).dot(n)
        // dg/dt = (vi - vj).dot(n) = G*W = [n 0 -n 0] * [vi wi vj wj]'
        // ...and if we were to include offset points:
        // g =
        //      (xj + rj - xi - ri).dot(n) - distance
        // dg/dt =
        //      (vj + wj x rj - vi - wi x ri).dot(n) =
        //      { term 2 is near zero } =
        //      [-n   -ri x n   n   rj x n] * [vi wi vj wj]' =
        //      G * W
        // => G = [-n -rixn n rjxn]
        var r = vec2_1.default.create();
        var ri = vec2_1.default.create(); // worldAnchorA
        var rj = vec2_1.default.create(); // worldAnchorB
        var that = _this;
        normal.computeGq = function () {
            var bodyA = this.bodyA, bodyB = this.bodyB, xi = bodyA.position, xj = bodyB.position;
            // Transform local anchors to world
            vec2_1.default.rotate(ri, localAnchorA, bodyA.angle);
            vec2_1.default.rotate(rj, localAnchorB, bodyB.angle);
            vec2_1.default.add(r, xj, rj);
            vec2_1.default.subtract(r, r, ri);
            vec2_1.default.subtract(r, r, xi);
            //vec2.subtract(r, bodyB.position, bodyA.position);
            return vec2_1.default.length(r) - that.distance;
        };
        // Make the contact constraint bilateral
        _this.setMaxForce(maxForce);
        return _this;
    }
    /**
     * Update the constraint equations. Should be done if any of the bodies changed position, before solving.
     * @method update
     */
    DistanceConstraint.prototype.update = function () {
        var normal = this.equations[0], bodyA = this.bodyA, bodyB = this.bodyB, xi = bodyA.position, xj = bodyB.position, normalEquation = this.equations[0], G = normal.G;
        // Transform local anchors to world
        vec2_1.default.rotate(ri, this.localAnchorA, bodyA.angle);
        vec2_1.default.rotate(rj, this.localAnchorB, bodyB.angle);
        // Get world anchor points and normal
        vec2_1.default.add(n, xj, rj);
        vec2_1.default.subtract(n, n, ri);
        vec2_1.default.subtract(n, n, xi);
        this.position = vec2_1.default.length(n);
        var violating = false;
        if (this.upperLimitEnabled) {
            if (this.position > this.upperLimit) {
                normalEquation.maxForce = 0;
                normalEquation.minForce = -this.maxForce;
                this.distance = this.upperLimit;
                violating = true;
            }
        }
        if (this.lowerLimitEnabled) {
            if (this.position < this.lowerLimit) {
                normalEquation.maxForce = this.maxForce;
                normalEquation.minForce = 0;
                this.distance = this.lowerLimit;
                violating = true;
            }
        }
        if ((this.lowerLimitEnabled || this.upperLimitEnabled) && !violating) {
            // No constraint needed.
            normalEquation.enabled = false;
            return;
        }
        normalEquation.enabled = true;
        vec2_1.default.normalize(n, n);
        // Caluclate cross products
        var rixn = vec2_1.default.crossLength(ri, n), rjxn = vec2_1.default.crossLength(rj, n);
        // G = [-n -rixn n rjxn]
        G[0] = -n[0];
        G[1] = -n[1];
        G[2] = -rixn;
        G[3] = n[0];
        G[4] = n[1];
        G[5] = rjxn;
    };
    /**
     * Set the max force to be used
     * @method setMaxForce
     * @param {Number} maxForce
     */
    DistanceConstraint.prototype.setMaxForce = function (maxForce) {
        var normal = this.equations[0];
        normal.minForce = -maxForce;
        normal.maxForce = maxForce;
    };
    /**
     * Get the max force
     * @method getMaxForce
     * @return {Number}
     */
    DistanceConstraint.prototype.getMaxForce = function () {
        var normal = this.equations[0];
        return normal.maxForce;
    };
    return DistanceConstraint;
}(constraint_1.default));
exports.default = DistanceConstraint;
