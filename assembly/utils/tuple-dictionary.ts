//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Utils from "./utils";

export default class TupleDictionary<T>{
	data: Map<i64, T>;
	keys: i64[];

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
		this.data = new Map<i64, T>();

		/**
		 * Keys that are currently used.
		 * @property {Array} keys
		 */
		this.keys = [];
	}

	/**
	 * Generate a key given two integers
	 * @method getKey
	 * @param  {i64} i
	 * @param  {i64} j
	 * @return {i64}
	 */
	getKey(id1: i64, id2: i64): i64 {

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
	 * @param  {i64} key
	 * @return {Object}
	 */
	getByKey(key: i64): T {
		return this.data.get(key);
	}

	/**
	 * @method get
	 * @param  {i64} i
	 * @param  {i64} j
	 * @return {i64}
	 */
	get(i: i64, j: i64): T {
		return this.getByKey(this.getKey(i, j));
	}

	/**
	 * Set a value.
	 * @method set
	 * @param  {i64} i
	 * @param  {i64} j
	 * @param {i64} value
	 */
	set(i: i64, j: i64, value: T): i64 {
		if(!value){
			throw new Error("No data!");
		}

		var key = this.getKey(i, j);

		// Check if key already exists
		if(!this.data.has(key)){
			this.keys.push(key);
		}

		this.data.set(key, value);

		return key;
	}

	/**
	 * Remove all data.
	 * @method reset
	 */
	reset(): void {
		var data = this.data,
			keys = this.keys;

		data.clear();

		keys.length = 0;
	}

	/**
	 * Copy another TupleDictionary. Note that all data in this dictionary will be removed.
	 * @method copy
	 * @param {TupleDictionary} dict The TupleDictionary to copy into this one.
	 */
	copy(dict: TupleDictionary<T>): void {
		this.reset();
		Utils.appendArray(this.keys, dict.keys);
		var l = dict.keys.length;
		while(l--){
			var key = dict.keys[l];
			this.data.set(key, dict.getByKey(key));
		}
	}
}