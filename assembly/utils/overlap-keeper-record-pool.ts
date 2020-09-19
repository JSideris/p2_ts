//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

// import Pool from "./pool";
import OverlapKeeperRecord from "./overlap-keeper-record";
// import OverlapKeeper from "./overlap-keeper";


export default class OverlapKeeperRecordPool{

	/**
	 * @property {Array} objects
	 * @type {Array}
	 */
	objects: OverlapKeeperRecord[] = [];

	/**
	 * @class
	 */
	constructor(size: u32) {
		this.resize(size);
	}

	/**
	 * @method resize
	 * @param {number} size
	 * @return {Pool} Self, for chaining
	 */
	resize(size: i32): OverlapKeeperRecordPool {
		var objects = this.objects;

		while (objects.length > size) {
			objects.pop();
		}

		while (objects.length < size) {
			objects.push(this.create());
		}

		return this;
	}

	/**
	 * Get an object from the pool or create a new instance.
	 * @method get
	 * @return {Object}
	 */
	get(): OverlapKeeperRecord {
		var objects = this.objects;
		return objects.length ? objects.pop() : this.create();
	}

	/**
	 * Clean up and put the object back into the pool for later use.
	 * @method release
	 * @param {Object} object
	 * @return {Pool} Self for chaining
	 */
	release(object: OverlapKeeperRecord): OverlapKeeperRecordPool {
		this.destroy(object);
		this.objects.push(object);
		return this;
	}

	/**
	 * @method create
	 * @return {OverlapKeeperRecord}
	 */
	create(): OverlapKeeperRecord {
		return new OverlapKeeperRecord(null, null, null, null);
	};

	/**
	 * @method destroy
	 * @param {OverlapKeeperRecord} record
	 * @return {OverlapKeeperRecordPool}
	 */
	destroy(record: OverlapKeeperRecord): OverlapKeeperRecordPool {
		record.set(null,null,null,null);
		return this;
	};

}