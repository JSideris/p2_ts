//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Pool from "./pool";
import ContactEquation from "../equations/contact-equation";


export default class ContactEquationPool extends Pool{

	/**
	 * @class
	 */
	constructor(size: u32|null) {
		super(size);
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
