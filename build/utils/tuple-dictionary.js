"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var utils_1 = __importDefault(require("./utils"));
var TupleDictionary = /** @class */ (function () {
    /**
     * @class TupleDictionary
     * @constructor
     */
    function TupleDictionary() {
        /**
         * The data storage
         * @property data
         * @type {Object}
         */
        this.data = {};
        /**
         * Keys that are currently used.
         * @property {Array} keys
         */
        this.keys = [];
    }
    /**
     * Generate a key given two integers
     * @method getKey
     * @param  {number} i
     * @param  {number} j
     * @return {number}
     */
    TupleDictionary.prototype.getKey = function (id1, id2) {
        if ((id1) === (id2)) {
            return -1;
        }
        // valid for values < 2^16
        return ((id1) > (id2) ?
            (id1 << 16) | (id2 & 0xFFFF) :
            (id2 << 16) | (id1 & 0xFFFF)) | 0;
    };
    /**
     * @method getByKey
     * @param  {Number} key
     * @return {Object}
     */
    TupleDictionary.prototype.getByKey = function (key) {
        key = key;
        return this.data[key];
    };
    /**
     * @method get
     * @param  {Number} i
     * @param  {Number} j
     * @return {Number}
     */
    TupleDictionary.prototype.get = function (i, j) {
        return this.data[this.getKey(i, j)];
    };
    /**
     * Set a value.
     * @method set
     * @param  {Number} i
     * @param  {Number} j
     * @param {Number} value
     */
    TupleDictionary.prototype.set = function (i, j, value) {
        if (!value) {
            throw new Error("No data!");
        }
        var key = this.getKey(i, j);
        // Check if key already exists
        if (!this.data[key]) {
            this.keys.push(key);
        }
        this.data[key] = value;
        return key;
    };
    /**
     * Remove all data.
     * @method reset
     */
    TupleDictionary.prototype.reset = function () {
        var data = this.data, keys = this.keys;
        var l = keys.length;
        while (l--) {
            delete data[keys[l]];
        }
        keys.length = 0;
    };
    /**
     * Copy another TupleDictionary. Note that all data in this dictionary will be removed.
     * @method copy
     * @param {TupleDictionary} dict The TupleDictionary to copy into this one.
     */
    TupleDictionary.prototype.copy = function (dict) {
        this.reset();
        utils_1.default.appendArray(this.keys, dict.keys);
        var l = dict.keys.length;
        while (l--) {
            var key = dict.keys[l];
            this.data[key] = dict.data[key];
        }
    };
    return TupleDictionary;
}());
exports.default = TupleDictionary;
