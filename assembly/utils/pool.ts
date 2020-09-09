type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

export default abstract class Pool{
	/**
	 * @property {Array} objects
	 * @type {Array}
	 */
	objects: any[] = [];

	/**
	 * Object pooling utility.
	 * @class Pool
	 * @constructor
	 */
	constructor(options?: {
		size?: u32
	}) {
		if(options?.size){
			this.resize(options?.size);
		}
	}

	/**
	 * @method resize
	 * @param {number} size
	 * @return {Pool} Self, for chaining
	 */
	resize(size: u32) {
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
	get() {
		var objects = this.objects;
		return objects.length ? objects.pop() : this.create();
	}

	/**
	 * Clean up and put the object back into the pool for later use.
	 * @method release
	 * @param {Object} object
	 * @return {Pool} Self for chaining
	 */
	release(object: any) {
		this.destroy(object);
		this.objects.push(object);
		return this;
	}

	abstract create(): any;
	abstract destroy(object: any): void;
}