//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

//import Pool from "./pool";
import FrictionEquation from "../equations/friction-equation";


export default class FrictionEquationPool{

	/**
	 * @property {Array} objects
	 * @type {Array}
	 */
	objects: FrictionEquation[] = [];

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
	resize(size: i32): FrictionEquationPool {
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
	get(): FrictionEquation {
		var objects = this.objects;
		return objects.length ? objects.pop() : this.create();
	}

	/**
	 * Clean up and put the object back into the pool for later use.
	 * @method release
	 * @param {Object} object
	 * @return {Pool} Self for chaining
	 */
	release(object: FrictionEquation): FrictionEquationPool {
		this.destroy(object);
		this.objects.push(object);
		return this;
	}

	/**
	 * @method create
	 * @return {FrictionEquation}
	 */
	create(): FrictionEquation {
		return new FrictionEquation(null, null, Infinity);
	};

	/**
	 * @method destroy
	 * @param {FrictionEquation} equation
	 * @return {FrictionEquationPool}
	 */
	destroy(equation: FrictionEquation): FrictionEquationPool {
		equation.bodyA = equation.bodyB = null;
		return this;
	};
}