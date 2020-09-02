import vec2 from "../math/vec2";
import Equation from "./Equation";
import Body from "../objects/body";
import ContactEquationPool from "../utils/contact-equation-pool";
import Shape from "../shapes/shape";

export default class FrictionEquation extends Equation{

	/**
	 * Relative vector from center of body A to the contact point, world oriented.
	 * @property contactPointA
	 * @type {Array}
	 */
	contactPointA: Float32Array = vec2.create();

	/**
	 * Relative vector from center of body B to the contact point, world oriented.
	 * @property contactPointB
	 * @type {Array}
	 */
	contactPointB: Float32Array = vec2.create();

	/**
	 * Tangent vector that the friction force will act along. World oriented.
	 * @property t
	 * @type {Array}
	 */
	t: Float32Array = vec2.create();

	/**
	 * ContactEquations connected to this friction equation. The contact equations can be used to rescale the max force for the friction. If more than one contact equation is given, then the max force can be set to the average.
	 * @property contactEquations
	 * @type {ContactEquation[]}
	 */
	contactEquations: Array<ContactEquationPool> = [];

	/**
	 * The shape in body i that triggered this friction.
	 * @property shapeA
	 * @type {Shape}
	 * @todo Needed? The shape can be looked up via contactEquation.shapeA...
	 */
	shapeA: Shape;

	/**
	 * The shape in body j that triggered this friction.
	 * @property shapeB
	 * @type {Shape}
	 * @todo Needed? The shape can be looked up via contactEquation.shapeB...
	 */
	shapeB: Shape;

	/**
	 * The friction coefficient to use.
	 * @property frictionCoefficient
	 * @type {Number}
	 */
	frictionCoefficient: f32 = 0.3;

	/**
	 * Constrains the slipping in a contact along a tangent
	 *
	 * @class FrictionEquation
	 * @constructor
	 * @param {Body} bodyA
	 * @param {Body} bodyB
	 * @param {Number} slipForce
	 * @extends Equation
	 */
	constructor(bodyA: Body, bodyB: Body, slipForce: f32){
		super(bodyA, bodyB, -slipForce, slipForce);
	}

	/**
	 * Set the slipping condition for the constraint. The friction force cannot be
	 * larger than this value.
	 * @method setSlipForce
	 * @param  {Number} slipForce
	 */
	setSlipForce(slipForce: f32){
		this.maxForce = slipForce;
		this.minForce = -slipForce;
	};

	/**
	 * Get the max force for the constraint.
	 * @method getSlipForce
	 * @return {Number}
	 */
	getSlipForce(): f32{
		return this.maxForce;
	};

	computeB(a: f32,b: f32,h: f32): f32{
		var ri = this.contactPointA,
			rj = this.contactPointB,
			t = this.t,
			G = this.G;

		// G = [-t -rixt t rjxt]
		// And remember, this is a pure velocity constraint, g is always zero!
		G[0] = -t[0];
		G[1] = -t[1];
		G[2] = -vec2.crossLength(ri,t);
		G[3] = t[0];
		G[4] = t[1];
		G[5] = vec2.crossLength(rj,t);

		var GW = this.computeGW(),
			GiMf = this.computeGiMf();

		var B = /* - g * a  */ - GW * b - h*GiMf;

		return B;
	};
}