"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var OverlapKeeperRecord = /** @class */ (function () {
    /**
     * Overlap data container for the OverlapKeeper
     * @class OverlapKeeperRecord
     * @constructor
     * @param {Body} bodyA
     * @param {Shape} shapeA
     * @param {Body} bodyB
     * @param {Shape} shapeB
     */
    function OverlapKeeperRecord(bodyA, shapeA, bodyB, shapeB) {
        this.set(bodyA, shapeA, bodyB, shapeB);
    }
    /**
     * Set the data for the record
     * @method set
     * @param {Body} bodyA
     * @param {Shape} shapeA
     * @param {Body} bodyB
     * @param {Shape} shapeB
     */
    OverlapKeeperRecord.prototype.set = function (bodyA, shapeA, bodyB, shapeB) {
        this.shapeA = shapeA;
        this.shapeB = shapeB;
        this.bodyA = bodyA;
        this.bodyB = bodyB;
    };
    ;
    return OverlapKeeperRecord;
}());
exports.default = OverlapKeeperRecord;
