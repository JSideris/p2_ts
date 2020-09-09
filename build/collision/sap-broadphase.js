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
var utils_1 = __importDefault(require("../utils/utils"));
// TODO: this appears to be a bubble sort. We could probably do better.
function sortAxisList(a, axisIndex) {
    for (var i = 1, l = a.length; i < l; i++) { // Why not i=0?
        var v = a[i];
        for (var j = i - 1; j >= 0; j--) {
            if (a[j].aabb.lowerBound[axisIndex] <= v.aabb.lowerBound[axisIndex]) {
                break;
            }
            a[j + 1] = a[j];
        }
        a[j + 1] = v;
    }
    return a;
}
var SAPBroadphase = /** @class */ (function (_super) {
    __extends(SAPBroadphase, _super);
    /**
     * Sweep and prune broadphase along one axis.
     *
     * @class SAPBroadphase
     * @constructor
     * @extends Broadphase
     */
    function SAPBroadphase() {
        var _this = _super.call(this, broadphase_1.default.SAP) || this;
        _this.axisList = [];
        _this.axisIndex = 0;
        _this._addBodyHandler = function (e) {
            _this.axisList.push(e.body);
        };
        _this._removeBodyHandler = function (e) {
            // Remove from list
            var idx = _this.axisList.indexOf(e.body);
            if (idx !== -1) {
                _this.axisList.splice(idx, 1);
            }
        };
        return _this;
    }
    /**
     * Change the world
     * @method setWorld
     * @param {World} world
     */
    SAPBroadphase.prototype.setWorld = function (world) {
        // Clear the old axis array
        this.axisList.length = 0;
        // Add all bodies from the new world
        utils_1.default.appendArray(this.axisList, world.bodies);
        // Remove old handlers, if any
        world
            .off("addBody", this._addBodyHandler)
            .off("removeBody", this._removeBodyHandler);
        // Add handlers to update the list of bodies.
        // TODO: now that I've added context, we can test moving those inline functions to proper private methods.
        world.on("addBody", this._addBodyHandler, this)
            .on("removeBody", this._removeBodyHandler, this);
        this.world = world;
    };
    ;
    SAPBroadphase.prototype.sortList = function () {
        var bodies = this.axisList, axisIndex = this.axisIndex;
        // Sort the lists
        sortAxisList(bodies, axisIndex);
    };
    ;
    /**
     * Get the colliding pairs
     * @method getCollisionPairs
     * @param  {World} world
     * @return {Array}
     */
    SAPBroadphase.prototype.getCollisionPairs = function ( /*world*/) {
        var bodies = this.axisList, result = this.result, axisIndex = this.axisIndex;
        result.length = 0;
        // Update all AABBs if needed
        var l = bodies.length;
        while (l--) {
            var b = bodies[l];
            if (b.aabbNeedsUpdate) {
                b.updateAABB();
            }
        }
        // Sort the lists
        this.sortList();
        // Look through the X list
        for (var i = 0, N = bodies.length | 0; i !== N; i++) {
            var bi = bodies[i];
            for (var j = i + 1; j < N; j++) {
                var bj = bodies[j];
                // Bounds overlap?
                var overlaps = (bj.aabb.lowerBound[axisIndex] <= bi.aabb.upperBound[axisIndex]);
                if (!overlaps) {
                    break;
                }
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
     * @todo since the list is sorted, optimization can be done
     */
    SAPBroadphase.prototype.aabbQuery = function (world, aabb, result) {
        result = result || [];
        this.sortList();
        var axisList = this.axisList;
        for (var i = 0; i < axisList.length; i++) {
            var b = axisList[i];
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
    return SAPBroadphase;
}(broadphase_1.default));
exports.default = SAPBroadphase;
