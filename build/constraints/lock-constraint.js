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
var l = vec2_1.default.create();
var r = vec2_1.default.create();
var t = vec2_1.default.create();
var xAxis = vec2_1.default.fromValues(1, 0);
var yAxis = vec2_1.default.fromValues(0, 1);
var LockConstraint = /** @class */ (function (_super) {
    __extends(LockConstraint, _super);
    /**
     * Locks the relative position and rotation between two bodies.
     *
     * @class LockConstraint
     * @constructor
     * @author schteppe
     * @param {Body} bodyA
     * @param {Body} bodyB
     * @param {Object} [options]
     * @param {Array}  [options.localOffsetB] The offset of bodyB in bodyA's frame. If not given the offset is computed from current positions.
     * @param {number} [options.localAngleB] The angle of bodyB in bodyA's frame. If not given, the angle is computed from current angles.
     * @param {number} [options.maxForce]
     * @extends Constraint
     *
     * @example
     *     // Locks the relative position and rotation between bodyA and bodyB
     *     var constraint = new LockConstraint(bodyA, bodyB);
     *     world.addConstraint(constraint);
     */
    function LockConstraint(bodyA, bodyB, options) {
        //options = options || {};
        var _a, _b;
        var _this = _super.call(this, bodyA, bodyB, constraint_1.default.LOCK, options) || this;
        var maxForce = (_a = options === null || options === void 0 ? void 0 : options.maxForce) !== null && _a !== void 0 ? _a : Infinity;
        // Use 3 equations:
        // gx =   (xj - xi - l) * xhat = 0
        // gy =   (xj - xi - l) * yhat = 0
        // gr =   (xi - xj + r) * that = 0
        //
        // ...where:
        //   l is the localOffsetB vector rotated to world in bodyA frame
        //   r is the same vector but reversed and rotated from bodyB frame
        //   xhat, yhat are world axis vectors
        //   that is the tangent of r
        //
        // For the first two constraints, we get
        // G*W = (vj - vi - ldot  ) * xhat
        //     = (vj - vi - wi x l) * xhat
        //
        // Since (wi x l) * xhat = (l x xhat) * wi, we get
        // G*W = [ -1   0   (-l x xhat)  1   0   0] * [vi wi vj wj]
        //
        // The last constraint gives
        // GW = (vi - vj + wj x r) * that
        //    = [  that   0  -that  (r x t) ]
        var x = new Equation_1.default(bodyA, bodyB, -maxForce, maxForce), y = new Equation_1.default(bodyA, bodyB, -maxForce, maxForce), rot = new Equation_1.default(bodyA, bodyB, -maxForce, maxForce);
        var l = vec2_1.default.create(), g = vec2_1.default.create(), that = _this;
        x.computeGq = function () {
            vec2_1.default.rotate(l, that.localOffsetB, bodyA.angle);
            vec2_1.default.subtract(g, bodyB.position, bodyA.position);
            vec2_1.default.subtract(g, g, l);
            return g[0];
        };
        y.computeGq = function () {
            vec2_1.default.rotate(l, that.localOffsetB, bodyA.angle);
            vec2_1.default.subtract(g, bodyB.position, bodyA.position);
            vec2_1.default.subtract(g, g, l);
            return g[1];
        };
        var r = vec2_1.default.create(), t = vec2_1.default.create();
        rot.computeGq = function () {
            vec2_1.default.rotate(r, that.localOffsetB, bodyB.angle - that.localAngleB);
            vec2_1.default.scale(r, r, -1);
            vec2_1.default.subtract(g, bodyA.position, bodyB.position);
            vec2_1.default.add(g, g, r);
            vec2_1.default.rotate(t, r, -Math.PI / 2);
            vec2_1.default.normalize(t, t);
            return vec2_1.default.dot(g, t);
        };
        /**
         * The offset of bodyB in bodyA's frame.
         * @property {Array} localOffsetB
         */
        _this.localOffsetB = vec2_1.default.create();
        if (options === null || options === void 0 ? void 0 : options.localOffsetB) {
            vec2_1.default.copy(_this.localOffsetB, options.localOffsetB);
        }
        else {
            // Construct from current positions
            vec2_1.default.subtract(_this.localOffsetB, bodyB.position, bodyA.position);
            vec2_1.default.rotate(_this.localOffsetB, _this.localOffsetB, -bodyA.angle);
        }
        /**
         * The offset angle of bodyB in bodyA's frame.
         * @property {Number} localAngleB
         */
        _this.localAngleB = (_b = options === null || options === void 0 ? void 0 : options.localAngleB) !== null && _b !== void 0 ? _b : bodyB.angle - bodyA.angle;
        _this.equations.push(x);
        _this.equations.push(y);
        _this.equations.push(rot);
        _this.setMaxForce(maxForce);
        return _this;
    }
    /**
     * Set the maximum force to be applied.
     * @method setMaxForce
     * @param {Number} force
     */
    LockConstraint.prototype.setMaxForce = function (force) {
        var eqs = this.equations;
        for (var i = 0; i < this.equations.length; i++) {
            eqs[i].maxForce = force;
            eqs[i].minForce = -force;
        }
    };
    /**
     * Get the max force.
     * @method getMaxForce
     * @return {Number}
     */
    LockConstraint.prototype.getMaxForce = function () {
        return this.equations[0].maxForce;
    };
    LockConstraint.prototype.update = function () {
        var x = this.equations[0], y = this.equations[1], rot = this.equations[2], bodyA = this.bodyA, bodyB = this.bodyB;
        vec2_1.default.rotate(l, this.localOffsetB, bodyA.angle);
        vec2_1.default.rotate(r, this.localOffsetB, bodyB.angle - this.localAngleB);
        vec2_1.default.scale(r, r, -1);
        vec2_1.default.rotate(t, r, Math.PI / 2);
        vec2_1.default.normalize(t, t);
        x.G[0] = -1;
        x.G[1] = 0;
        x.G[2] = -vec2_1.default.crossLength(l, xAxis);
        x.G[3] = 1;
        y.G[0] = 0;
        y.G[1] = -1;
        y.G[2] = -vec2_1.default.crossLength(l, yAxis);
        y.G[4] = 1;
        rot.G[0] = -t[0];
        rot.G[1] = -t[1];
        rot.G[3] = t[0];
        rot.G[4] = t[1];
        rot.G[5] = vec2_1.default.crossLength(r, t);
    };
    return LockConstraint;
}(constraint_1.default));
exports.default = LockConstraint;
