//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

export default abstract class Pool<T>{
	/**
	 * @property {Array} objects
	 * @type {Array}
	 */
	objects: T[] = [];

	/**
	 * Object pooling utility.
	 * @class Pool
	 * @constructor
	 */
	constructor(size: u32) {
		this.resize(size);
	}

	/**
	 * @method resize
	 * @param {number} size
	 * @return {Pool} Self, for chaining
	 */
	resize(size: i32): Pool<T> {
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
	get(): T {
		var objects = this.objects;
		return objects.length ? objects.pop() : this.create();
	}

	/**
	 * Clean up and put the object back into the pool for later use.
	 * @method release
	 * @param {Object} object
	 * @return {Pool} Self for chaining
	 */
	release(object: T): Pool<T> {
		this.destroy(object);
		this.objects.push(object);
		return this;
	}

	abstract create(): T;
	abstract destroy(object: T): void;
}