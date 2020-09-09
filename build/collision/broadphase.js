"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var vec2_1 = __importDefault(require("../math/vec2"));
var Body_1 = __importDefault(require("../objects/Body"));
// TODO: I think this is supposed to be abstract.
var Broadphase = /** @class */ (function () {
    /**
     * Base class for broadphase implementations. Don't use this class directly.
     * @class Broadphase
     * @constructor
     */
    function Broadphase(type) {
        /**
         * The resulting overlapping pairs. Will be filled with results during .getCollisionPairs().
         * @property result
         * @type {Array}
         */
        this.result = [];
        /**
         * The world to search for collision pairs in. To change it, use .setWorld()
         * @property world
         * @type {World}
         * @readOnly
         */
        this.world = null;
        /**
         * The bounding volume type to use in the broadphase algorithms. Should be set to Broadphase.AABB or Broadphase.BOUNDING_CIRCLE.
         * @property {Number} boundingVolumeType
         */
        this.boundingVolumeType = Broadphase.AABB;
        this.type = type || 1;
    }
    /**
     * Set the world that we are searching for collision pairs in.
     * @method setWorld
     * @param  {World} world
     */
    // TODO: move to constructor!
    Broadphase.prototype.setWorld = function (world) {
        this.world = world;
    };
    ;
    /*
     * Get all potential intersecting body pairs.
     * @method getCollisionPairs
     * @param  {World} world The world to search in.
     * @return {Array} An array of the bodies, ordered in pairs. Example: A result of [a,b,c,d] means that the potential pairs are: (a,b), (c,d).
     */
    Broadphase.prototype.getCollisionPairs = function (world) {
        // I guess this should be overridden?
        // TODO: possible abstract method.
        return [];
    };
    ;
    /**
     * Check whether the bounding radius of two bodies overlap.
     * @method  boundingRadiusCheck
     * @param  {Body} bodyA
     * @param  {Body} bodyB
     * @return {Boolean}
     */
    Broadphase.boundingRadiusCheck = function (bodyA, bodyB) {
        var d2 = vec2_1.default.squaredDistance(bodyA.position, bodyB.position), r = bodyA.boundingRadius + bodyB.boundingRadius;
        return d2 <= r * r;
    };
    ;
    /**
     * Check whether the AABB of two bodies overlap.
     * @method  aabbCheck
     * @param  {Body} bodyA
     * @param  {Body} bodyB
     * @return {Boolean}
     */
    Broadphase.aabbCheck = function (bodyA, bodyB) {
        return bodyA.getAABB().overlaps(bodyB.getAABB());
    };
    ;
    /**
     * Check whether the bounding volumes of two bodies overlap.
     * @method  boundingVolumeCheck
     * @param  {Body} bodyA
     * @param  {Body} bodyB
     * @return {Boolean}
     */
    Broadphase.prototype.boundingVolumeCheck = function (bodyA, bodyB) {
        var result;
        switch (this.boundingVolumeType) {
            case Broadphase.BOUNDING_CIRCLE:
                result = Broadphase.boundingRadiusCheck(bodyA, bodyB);
                break;
            case Broadphase.AABB:
                result = Broadphase.aabbCheck(bodyA, bodyB);
                break;
            default:
                throw new Error('Bounding volume type not recognized: ' + this.boundingVolumeType);
        }
        return result;
    };
    ;
    /**
     * Check whether two bodies are allowed to collide at all.
     * @method  canCollide
     * @param  {Body} bodyA
     * @param  {Body} bodyB
     * @return {Boolean}
     */
    Broadphase.canCollide = function (bodyA, bodyB) {
        var KINEMATIC = Body_1.default.KINEMATIC;
        var STATIC = Body_1.default.STATIC;
        var typeA = bodyA.type;
        var typeB = bodyB.type;
        // Cannot collide static bodies
        if (typeA === STATIC && typeB === STATIC) {
            return false;
        }
        // Cannot collide static vs kinematic bodies
        if ((typeA === KINEMATIC && typeB === STATIC) ||
            (typeA === STATIC && typeB === KINEMATIC)) {
            return false;
        }
        // Cannot collide kinematic vs kinematic
        if (typeA === KINEMATIC && typeB === KINEMATIC) {
            return false;
        }
        // Cannot collide both sleeping bodies
        if (bodyA.sleepState === Body_1.default.SLEEPING && bodyB.sleepState === Body_1.default.SLEEPING) {
            return false;
        }
        // Cannot collide if one is static and the other is sleeping
        if ((bodyA.sleepState === Body_1.default.SLEEPING && typeB === STATIC) ||
            (bodyB.sleepState === Body_1.default.SLEEPING && typeA === STATIC)) {
            return false;
        }
        return true;
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
    Broadphase.prototype.aabbQuery = function (world, aabb, result) {
        // To be implemented in subclasses
    };
    ;
    // Mode:
    Broadphase.NAIVE = 1;
    Broadphase.SAP = 2;
    // Bounding box:
    /**
     * Axis aligned bounding box type.
     * @static
     * @property {Number} AABB
     */
    Broadphase.AABB = 1;
    /**
     * Bounding circle type.
     * @static
     * @property {Number} BOUNDING_CIRCLE
     */
    Broadphase.BOUNDING_CIRCLE = 2;
    return Broadphase;
}());
exports.default = Broadphase;
