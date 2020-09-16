//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Pool from "./pool";
import FrictionEquation from "../equations/friction-equation";


export default class FrictionEquationPool extends Pool{

	/**
	 * @class
	 */
	constructor(size: u32|null) {
		super(size);
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