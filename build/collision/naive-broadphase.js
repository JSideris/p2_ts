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
var broadphase_1 = __importDefault(require("./broadphase"));
var NaiveBroadphase = /** @class */ (function (_super) {
    __extends(NaiveBroadphase, _super);
    /**
     * Naive broadphase implementation. Does N^2 tests.
     *
     * @class NaiveBroadphase
     * @constructor
     * @extends Broadphase
     */
    function NaiveBroadphase() {
        return _super.call(this, broadphase_1.default.NAIVE) || this;
    }
    /**
     * Get the colliding pairs
     * @method getCollisionPairs
     * @param  {World} world
     * @return {Array}
     */
    NaiveBroadphase.prototype.getCollisionPairs = function (world) {
        var bodies = world.bodies, result = this.result;
        result.length = 0;
        for (var i = 0, Ncolliding = bodies.length; i !== Ncolliding; i++) {
            var bi = bodies[i];
            for (var j = 0; j < i; j++) {
                var bj = bodies[j];
                if (broadphase_1.default.canCollide(bi, bj) && this.boundingVolumeCheck(bi, bj)) {
                    result.push(bi);
                    result.push(bj);
                }
            }
        }
        return result;
    };
    ;
    /**
     * Returns all the bodies within an AABB.
     * @method aabbQuery
     * @param  {World} world
     * @param  {AABB} aabb
     * @param {array} result An array to store resulting bodies in.
     * @return {array}
     */
    NaiveBroadphase.prototype.aabbQuery = function (world, aabb, result) {
        result = result || [];
        var bodies = world.bodies;
        for (var i = 0; i < bodies.length; i++) {
            var b = bodies[i];
            if (b.aabbNeedsUpdate) {
                b.updateAABB();
            }
            if (b.aabb.overlaps(aabb)) {
                result.push(b);
            }
        }
        return result;
    };
    ;
    return NaiveBroadphase;
}(broadphase_1.default));
exports.default = NaiveBroadphase;
