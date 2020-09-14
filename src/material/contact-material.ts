type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Material from "./Material";
import Equation from "../equations/Equation";

export default class ContactMaterial{

	/**
	 * The contact material identifier. Read only.
	 * @readonly
	 * @property id
	 * @type {Number}
	 */
	public id: u32;

	/**
	 * First material participating in the contact material
	 * @property materialA
	 * @type {Material}
	 */
	public materialA: Material;

	/**
	 * Second material participating in the contact material
	 * @property materialB
	 * @type {Material}
	 */
	public materialB: Material;

	/**
	 * Friction coefficient to use in the contact of these two materials. Friction = 0 will make the involved objects super slippery, and friction = 1 will make it much less slippery. A friction coefficient larger than 1 will allow for very large friction forces, which can be convenient for preventing car tires not slip on the ground.
	 * @property friction
	 * @type {Number}
	 * @default 0.3
	 */
	public friction: f32 = 0.3;

	/**
	 * Restitution, or "bounciness" to use in the contact of these two materials. A restitution of 0 will make no bounce, while restitution=1 will approximately bounce back with the same velocity the object came with.
	 * @property restitution
	 * @type {Number}
	 * @default 0
	 */
	public restitution: f32 = 0;

	/**
	 * Hardness of the contact. Less stiffness will make the objects penetrate more, and will make the contact act more like a spring than a contact force. Default value is {{#crossLink "Equation/DEFAULT_STIFFNESS:property"}}Equation.DEFAULT_STIFFNESS{{/crossLink}}.
	 * @property stiffness
	 * @type {Number}
	 */
	public stiffness: f32 = Equation.DEFAULT_STIFFNESS;

	/**
	 * Relaxation of the resulting ContactEquation that this ContactMaterial generate. Default value is {{#crossLink "Equation/DEFAULT_RELAXATION:property"}}Equation.DEFAULT_RELAXATION{{/crossLink}}.
	 * @property relaxation
	 * @type {Number}
	 */
	public relaxation: f32 = Equation.DEFAULT_RELAXATION;

	/**
	 * Stiffness of the resulting friction force. For most cases, the value of this property should be a large number. I cannot think of any case where you would want less frictionStiffness. Default value is {{#crossLink "Equation/DEFAULT_STIFFNESS:property"}}Equation.DEFAULT_STIFFNESS{{/crossLink}}.
	 * @property frictionStiffness
	 * @type {Number}
	 */
	public frictionStiffness: f32 = Equation.DEFAULT_STIFFNESS;

	/**
	 * Relaxation of the resulting friction force. The default value should be good for most simulations. Default value is {{#crossLink "Equation/DEFAULT_RELAXATION:property"}}Equation.DEFAULT_RELAXATION{{/crossLink}}.
	 * @property frictionRelaxation
	 * @type {Number}
	 */
	public frictionRelaxation: f32 = Equation.DEFAULT_RELAXATION;

	/**
	 * Will add surface velocity to this material. If bodyA rests on top if bodyB, and the surface velocity is positive, bodyA will slide to the right.
	 * @property {Number} surfaceVelocity
	 * @default 0
	 */
	public surfaceVelocity: f32 = 0;

	/**
	 * Offset to be set on ContactEquations. A positive value will make the bodies penetrate more into each other. Can be useful in scenes where contacts need to be more persistent, for example when stacking. Aka "cure for nervous contacts".
	 * @property contactSkinSize
	 * @type {Number}
	 */
	public contactSkinSize: f32 = 0.005;

	/**
	 * Defines what happens when two materials meet, such as what friction coefficient to use. You can also set other things such as restitution, surface velocity and constraint parameters. Also see {{#crossLink "Material"}}{{/crossLink}}.
	 * @class ContactMaterial
	 * @constructor
	 * @param {Material} materialA
	 * @param {Material} materialB
	 * @param {Object}   [options]
	 * @param {Number}   [options.friction=0.3]       Friction coefficient.
	 * @param {Number}   [options.frictionRelaxation] FrictionEquation relaxation.
	 * @param {Number}   [options.frictionStiffness]  FrictionEquation stiffness.
	 * @param {Number}   [options.relaxation]         ContactEquation relaxation.
	 * @param {Number}   [options.restitution=0]      Restitution coefficient aka "bounciness".
	 * @param {Number}   [options.stiffness]          ContactEquation stiffness.
	 * @param {Number}   [options.surfaceVelocity=0]  Surface velocity.
	 * @author schteppe
	 * @example
	 *     var ice = new Material();
	 *     var wood = new Material();
	 *     var iceWoodContactMaterial = new ContactMaterial(ice, wood, {
	 *         friction: 0.2,
	 *         restitution: 0.3
	 *     });
	 *     world.addContactMaterial(iceWoodContactMaterial);
	 */
	constructor(materialA: Material, materialB: Material, options?: {
		friction: f32,
		restitution: f32,
		stiffness: f32,
		relaxation: f32,
		frictionStiffness: f32,
		frictionRelaxation: f32,
		surfaceVelocity: f32,
	}){
		if(!(materialA instanceof Material) || !(materialB instanceof Material)){
			throw new Error("First two arguments must be Material instances.");
		}

		this.id = ++ContactMaterial.idCounter;
		this.materialA = materialA;
		this.materialB = materialB;
		this.friction = options?.friction ?? 0.3;
		this.restitution = options?.restitution ?? 0;
		this.stiffness = options?.stiffness ?? Equation.DEFAULT_STIFFNESS;
		this.relaxation = options?.relaxation ?? Equation.DEFAULT_RELAXATION;
		this.frictionStiffness = options?.frictionStiffness ?? Equation.DEFAULT_STIFFNESS;
		this.frictionRelaxation = options?.frictionRelaxation ?? Equation.DEFAULT_RELAXATION;
		this.surfaceVelocity = options?.surfaceVelocity ?? 0;
		this.contactSkinSize = 0.005;
	}

	static idCounter: u32 = 0;
}