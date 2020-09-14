type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Pool from "./pool";
import ContactEquation from "../equations/contact-equation";


export default class ContactEquationPool extends Pool{

	/**
	 * @class
	 */
	constructor(options?: {
		size?: u32
	}) {
		super(options);
	}

	/**
	 * @method create
	 * @return {ContactEquation}
	 */
	create(): ContactEquation {
		return new ContactEquation();
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
