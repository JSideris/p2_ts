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
var spring_1 = __importDefault(require("./spring"));
var applyForce_r = vec2_1.default.create(), applyForce_r_unit = vec2_1.default.create(), applyForce_u = vec2_1.default.create(), applyForce_f = vec2_1.default.create(), applyForce_worldAnchorA = vec2_1.default.create(), applyForce_worldAnchorB = vec2_1.default.create(), applyForce_ri = vec2_1.default.create(), applyForce_rj = vec2_1.default.create(), applyForce_tmp = vec2_1.default.create();
var LinearSpring = /** @class */ (function (_super) {
    __extends(LinearSpring, _super);
    /**
     * A spring, connecting two bodies.
     *
     * The Spring explicitly adds force and angularForce to the bodies.
     *
     * @class LinearSpring
     * @extends Spring
     * @constructor
     * @param {Body} bodyA
     * @param {Body} bodyB
     * @param {Object} [options]
     * @param {number} [options.restLength]   A number > 0. Default is the current distance between the world anchor points.
     * @param {number} [options.stiffness=100]  Spring constant (see Hookes Law). A number >= 0.
     * @param {number} [options.damping=1]      A number >= 0. Default: 1
     * @param {Array}  [options.worldAnchorA]   Where to hook the spring to body A, in world coordinates. Overrides the option "localAnchorA" if given.
     * @param {Array}  [options.worldAnchorB]
     * @param {Array}  [options.localAnchorA]   Where to hook the spring to body A, in local body coordinates. Defaults to the body center.
     * @param {Array}  [options.localAnchorB]
     *
     * @example
     *     var spring = new LinearSpring(bodyA, bodyB, {
     *         stiffness: 100,
     *         damping: 1,
     *         localAnchorA: [0,0], // center of bodyA
     *         localAnchorB: [0,0] // center of bodyB
     *     });
     *     world.addSpring(spring);
     */
    function LinearSpring(bodyA, bodyB, options) {
        var _a;
        var _this = _super.call(this, bodyA, bodyB, options) || this;
        _this.localAnchorA = vec2_1.default.create();
        _this.localAnchorB = vec2_1.default.create();
        if (options === null || options === void 0 ? void 0 : options.localAnchorA) {
            vec2_1.default.copy(_this.localAnchorA, options.localAnchorA);
        }
        if (options === null || options === void 0 ? void 0 : options.localAnchorB) {
            vec2_1.default.copy(_this.localAnchorB, options.localAnchorB);
        }
        if (options === null || options === void 0 ? void 0 : options.worldAnchorA) {
            _this.setWorldAnchorA(options.worldAnchorA);
        }
        if (options === null || options === void 0 ? void 0 : options.worldAnchorB) {
            _this.setWorldAnchorB(options.worldAnchorB);
        }
        var worldAnchorA = vec2_1.default.create();
        var worldAnchorB = vec2_1.default.create();
        _this.getWorldAnchorA(worldAnchorA);
        _this.getWorldAnchorB(worldAnchorB);
        var worldDistance = vec2_1.default.distance(worldAnchorA, worldAnchorB);
        _this.restLength = (_a = options === null || options === void 0 ? void 0 : options.restLength) !== null && _a !== void 0 ? _a : worldDistance;
        return _this;
    }
    /**
     * Set the anchor point on body A, using world coordinates.
     * @method setWorldAnchorA
     * @param {Array} worldAnchorA
     */
    LinearSpring.prototype.setWorldAnchorA = function (worldAnchorA) {
        this.bodyA.toLocalFrame(this.localAnchorA, worldAnchorA);
    };
    /**
     * Set the anchor point on body B, using world coordinates.
     * @method setWorldAnchorB
     * @param {Array} worldAnchorB
     */
    LinearSpring.prototype.setWorldAnchorB = function (worldAnchorB) {
        this.bodyB.toLocalFrame(this.localAnchorB, worldAnchorB);
    };
    /**
     * Get the anchor point on body A, in world coordinates.
     * @method getWorldAnchorA
     * @param {Array} result The vector to store the result in.
     */
    LinearSpring.prototype.getWorldAnchorA = function (result) {
        this.bodyA.toWorldFrame(result, this.localAnchorA);
    };
    /**
     * Get the anchor point on body B, in world coordinates.
     * @method getWorldAnchorB
     * @param {Array} result The vector to store the result in.
     */
    LinearSpring.prototype.getWorldAnchorB = function (result) {
        this.bodyB.toWorldFrame(result, this.localAnchorB);
    };
    /**
     * Apply the spring force to the connected bodies.
     * @private
     * @method applyForce
     */
    LinearSpring.prototype.applyForce = function () {
        var k = this.stiffness, d = this.damping, l = this.restLength, bodyA = this.bodyA, bodyB = this.bodyB, r = applyForce_r, r_unit = applyForce_r_unit, u = applyForce_u, f = applyForce_f, tmp = applyForce_tmp;
        var worldAnchorA = applyForce_worldAnchorA, worldAnchorB = applyForce_worldAnchorB, ri = applyForce_ri, rj = applyForce_rj;
        // Get world anchors
        this.getWorldAnchorA(worldAnchorA);
        this.getWorldAnchorB(worldAnchorB);
        // Get offset points
        vec2_1.default.subtract(ri, worldAnchorA, bodyA.position);
        vec2_1.default.subtract(rj, worldAnchorB, bodyB.position);
        // Compute distance vector between world anchor points
        vec2_1.default.subtract(r, worldAnchorB, worldAnchorA);
        var rlen = vec2_1.default.length(r);
        vec2_1.default.normalize(r_unit, r);
        // Compute relative velocity of the anchor points, u
        vec2_1.default.subtract(u, bodyB.velocity, bodyA.velocity);
        vec2_1.default.crossZV(tmp, bodyB.angularVelocity, rj);
        vec2_1.default.add(u, u, tmp);
        vec2_1.default.crossZV(tmp, bodyA.angularVelocity, ri);
        vec2_1.default.subtract(u, u, tmp);
        // F = - k * ( x - L ) - D * ( u )
        vec2_1.default.scale(f, r_unit, -k * (rlen - l) - d * vec2_1.default.dot(u, r_unit));
        // Add forces to bodies
        vec2_1.default.subtract(bodyA.force, bodyA.force, f);
        vec2_1.default.add(bodyB.force, bodyB.force, f);
        // Angular force
        var ri_x_f = vec2_1.default.crossLength(ri, f);
        var rj_x_f = vec2_1.default.crossLength(rj, f);
        bodyA.angularForce -= ri_x_f;
        bodyB.angularForce += rj_x_f;
    };
    return LinearSpring;
}(spring_1.default));
exports.default = LinearSpring;
