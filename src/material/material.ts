type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

export default class Material{

	static idCounter: u32 = 0;
	
	public id: u32;

	/**
	 * Defines a physics material. To be used with {{#crossLink "ContactMaterial"}}{{/crossLink}}.
	 * @class Material
	 * @constructor
	 * @author schteppe
	 * @example
	 *     // Create a wooden box
	 *     var woodMaterial = new Material();
	 *     var boxShape = new Box({
	 *         material: woodMaterial
	 *     });
	 *     body.addShape(boxShape);
	 */
	constructor(){

		/**
		 * The material identifier. Read only.
		 * @readonly
		 * @property id
		 * @type {Number}
		 */
		this.id = ++Material.idCounter;
	}

}