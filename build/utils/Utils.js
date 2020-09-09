"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
/* global P2_ARRAY_TYPE */
/**
 * Misc utility functions
 */
var Utils = /** @class */ (function () {
    function Utils() {
    }
    /**
     * Append the values in array b to the array a. See <a href="http://stackoverflow.com/questions/1374126/how-to-append-an-array-to-an-existing-javascript-array/1374131#1374131">this</a> for an explanation.
     * @method appendArray
     * @static
     * @param  {Array} a
     * @param  {Array} b
     */
    Utils.prototype.appendArray = function (a, b) {
        for (var i = 0, len = b.length; i !== len; ++i) {
            a.push(b[i]);
        }
    };
    /**
     * Garbage free Array.splice(). Does not allocate a new array.
     * @method splice
     * @static
     * @param  {Array} array
     * @param  {Number} index
     * @param  {Number} howmany
     */
    Utils.prototype.splice = function (array, index, howmany) {
        howmany = howmany || 1;
        for (var i = index, len = array.length - howmany; i < len; i++) {
            array[i] = array[i + howmany];
        }
        array.length = len;
    };
    /**
     * Remove an element from an array, if the array contains the element.
     * @method arrayRemove
     * @static
     * @param  {Array} array
     * @param  {Number} element
     */
    Utils.prototype.arrayRemove = function (array, element) {
        var idx = array.indexOf(element);
        if (idx !== -1) {
            this.splice(array, idx, 1);
        }
    };
    /**
     * Extend an object with the properties of another
     * @static
     * @method extend
     * @param  {object} a
     * @param  {object} b
     */
    Utils.prototype.extend = function (a, b) {
        for (var key in b) {
            a[key] = b[key];
        }
    };
    /**
     * Shallow clone an object. Returns a new object instance with the same properties as the input instance.
     * @static
     * @method shallowClone
     * @param  {object} obj
     */
    Utils.prototype.shallowClone = function (obj) {
        var newObj = {};
        this.extend(newObj, obj);
        return newObj;
    };
    return Utils;
}());
exports.default = new Utils();
