type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Utils from "../utils/utils";

export default class TupleDictionary{
	data: {[key: number]: any};
	keys: number[];

	/**
	 * @class TupleDictionary
	 * @constructor
	 */
	constructor() {

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
	getKey(id1: number, id2: number): number {

		if ( (id1) === (id2) ){
			return -1;
		}

		// valid for values < 2^16
		return ((id1) > (id2) ?
			(id1 << 16) | (id2 & 0xFFFF) :
			(id2 << 16) | (id1 & 0xFFFF))|0
			;
	}

	/**
	 * @method getByKey
	 * @param  {Number} key
	 * @return {Object}
	 */
	getByKey(key: number): any {
		key = key;
		return this.data[key];
	}

	/**
	 * @method get
	 * @param  {Number} i
	 * @param  {Number} j
	 * @return {Number}
	 */
	get(i: number, j: number) {
		return this.data[this.getKey(i, j)];
	}

	/**
	 * Set a value.
	 * @method set
	 * @param  {Number} i
	 * @param  {Number} j
	 * @param {Number} value
	 */
	set(i: number, j: number, value: number) {
		if(!value){
			throw new Error("No data!");
		}

		var key = this.getKey(i, j);

		// Check if key already exists
		if(!this.data[key]){
			this.keys.push(key);
		}

		this.data[key] = value;

		return key;
	}

	/**
	 * Remove all data.
	 * @method reset
	 */
	reset() {
		var data = this.data,
			keys = this.keys;

		var l = keys.length;
		while(l--) {
			delete data[keys[l]];
		}

		keys.length = 0;
	}

	/**
	 * Copy another TupleDictionary. Note that all data in this dictionary will be removed.
	 * @method copy
	 * @param {TupleDictionary} dict The TupleDictionary to copy into this one.
	 */
	copy(dict: TupleDictionary) {
		this.reset();
		Utils.appendArray(this.keys, dict.keys);
		var l = dict.keys.length;
		while(l--){
			var key = dict.keys[l];
			this.data[key] = dict.data[key];
		}
	}
}