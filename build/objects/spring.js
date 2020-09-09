"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var Spring = /** @class */ (function () {
    /**
     * Base class for {{#crossLink "LinearSpring"}}{{/crossLink}} and {{#crossLink "RotationalSpring"}}{{/crossLink}}. Not supposed to be used directly.
     *
     * @class Spring
     * @constructor
     * @param {Body} bodyA
     * @param {Body} bodyB
     * @param {Object} [options]
     * @param {number} [options.stiffness=100]  Spring constant (see Hookes Law). A number >= 0.
     * @param {number} [options.damping=1]      A number >= 0. Default: 1
     * @param {Array}  [options.localAnchorA]   Where to hook the spring to body A, in local body coordinates. Defaults to the body center.
     * @param {Array}  [options.localAnchorB]
     * @param {Array}  [options.worldAnchorA]   Where to hook the spring to body A, in world coordinates. Overrides the option "localAnchorA" if given.
     * @param {Array}  [options.worldAnchorB]
     */
    function Spring(bodyA, bodyB, options) {
        var _a, _b;
        this.stiffness = (_a = options === null || options === void 0 ? void 0 : options.stiffness) !== null && _a !== void 0 ? _a : 100;
        this.damping = (_b = options === null || options === void 0 ? void 0 : options.damping) !== null && _b !== void 0 ? _b : 1;
        this.bodyA = bodyA;
        this.bodyB = bodyB;
    }
    return Spring;
}());
exports.default = Spring;
