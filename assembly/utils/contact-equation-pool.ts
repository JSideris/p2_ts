//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

// import Pool from "./pool";
import ContactEquation from "../equations/contact-equation";


export default class ContactEquationPool{

	/**
	 * @property {Array} objects
	 * @type {Array}
	 */
	objects: ContactEquation[] = [];

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
	resize(size: i32): ContactEquationPool {
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
	get(): ContactEquation {
		var objects = this.objects;
		return objects.length ? objects.pop() : this.create();
	}

	/**
	 * Clean up and put the object back into the pool for later use.
	 * @method release
	 * @param {Object} object
	 * @return {Pool} Self for chaining
	 */
	release(object: ContactEquation): ContactEquationPool {
		this.destroy(object);
		this.objects.push(object);
		return this;
	}

	/**
	 * @method create
	 * @return {ContactEquation}
	 */
	create(): ContactEquation {
		return new ContactEquation(null, null);
	}

	/**
	 * @method destroy
	 * @param {ContactEquation} equation
	 * @return {ContactEquationPool}
	 */
	destroy(equation: ContactEquation): ContactEquationPool {
		equation.bodyA = equation.bodyB = null;
		return this;
	}
}
