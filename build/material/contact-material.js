"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var Material_1 = __importDefault(require("./Material"));
var Equation_1 = __importDefault(require("../equations/Equation"));
var ContactMaterial = /** @class */ (function () {
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
    function ContactMaterial(materialA, materialB, options) {
        var _a, _b, _c, _d, _e, _f, _g;
        /**
         * Friction coefficient to use in the contact of these two materials. Friction = 0 will make the involved objects super slippery, and friction = 1 will make it much less slippery. A friction coefficient larger than 1 will allow for very large friction forces, which can be convenient for preventing car tires not slip on the ground.
         * @property friction
         * @type {Number}
         * @default 0.3
         */
        this.friction = 0.3;
        /**
         * Restitution, or "bounciness" to use in the contact of these two materials. A restitution of 0 will make no bounce, while restitution=1 will approximately bounce back with the same velocity the object came with.
         * @property restitution
         * @type {Number}
         * @default 0
         */
        this.restitution = 0;
        /**
         * Hardness of the contact. Less stiffness will make the objects penetrate more, and will make the contact act more like a spring than a contact force. Default value is {{#crossLink "Equation/DEFAULT_STIFFNESS:property"}}Equation.DEFAULT_STIFFNESS{{/crossLink}}.
         * @property stiffness
         * @type {Number}
         */
        this.stiffness = Equation_1.default.DEFAULT_STIFFNESS;
        /**
         * Relaxation of the resulting ContactEquation that this ContactMaterial generate. Default value is {{#crossLink "Equation/DEFAULT_RELAXATION:property"}}Equation.DEFAULT_RELAXATION{{/crossLink}}.
         * @property relaxation
         * @type {Number}
         */
        this.relaxation = Equation_1.default.DEFAULT_RELAXATION;
        /**
         * Stiffness of the resulting friction force. For most cases, the value of this property should be a large number. I cannot think of any case where you would want less frictionStiffness. Default value is {{#crossLink "Equation/DEFAULT_STIFFNESS:property"}}Equation.DEFAULT_STIFFNESS{{/crossLink}}.
         * @property frictionStiffness
         * @type {Number}
         */
        this.frictionStiffness = Equation_1.default.DEFAULT_STIFFNESS;
        /**
         * Relaxation of the resulting friction force. The default value should be good for most simulations. Default value is {{#crossLink "Equation/DEFAULT_RELAXATION:property"}}Equation.DEFAULT_RELAXATION{{/crossLink}}.
         * @property frictionRelaxation
         * @type {Number}
         */
        this.frictionRelaxation = Equation_1.default.DEFAULT_RELAXATION;
        /**
         * Will add surface velocity to this material. If bodyA rests on top if bodyB, and the surface velocity is positive, bodyA will slide to the right.
         * @property {Number} surfaceVelocity
         * @default 0
         */
        this.surfaceVelocity = 0;
        /**
         * Offset to be set on ContactEquations. A positive value will make the bodies penetrate more into each other. Can be useful in scenes where contacts need to be more persistent, for example when stacking. Aka "cure for nervous contacts".
         * @property contactSkinSize
         * @type {Number}
         */
        this.contactSkinSize = 0.005;
        if (!(materialA instanceof Material_1.default) || !(materialB instanceof Material_1.default)) {
            throw new Error("First two arguments must be Material instances.");
        }
        this.id = ++ContactMaterial.idCounter;
        this.materialA = materialA;
        this.materialB = materialB;
        this.friction = (_a = options === null || options === void 0 ? void 0 : options.friction) !== null && _a !== void 0 ? _a : 0.3;
        this.restitution = (_b = options === null || options === void 0 ? void 0 : options.restitution) !== null && _b !== void 0 ? _b : 0;
        this.stiffness = (_c = options === null || options === void 0 ? void 0 : options.stiffness) !== null && _c !== void 0 ? _c : Equation_1.default.DEFAULT_STIFFNESS;
        this.relaxation = (_d = options === null || options === void 0 ? void 0 : options.relaxation) !== null && _d !== void 0 ? _d : Equation_1.default.DEFAULT_RELAXATION;
        this.frictionStiffness = (_e = options === null || options === void 0 ? void 0 : options.frictionStiffness) !== null && _e !== void 0 ? _e : Equation_1.default.DEFAULT_STIFFNESS;
        this.frictionRelaxation = (_f = options === null || options === void 0 ? void 0 : options.frictionRelaxation) !== null && _f !== void 0 ? _f : Equation_1.default.DEFAULT_RELAXATION;
        this.surfaceVelocity = (_g = options === null || options === void 0 ? void 0 : options.surfaceVelocity) !== null && _g !== void 0 ? _g : 0;
        this.contactSkinSize = 0.005;
    }
    ContactMaterial.idCounter = 0;
    return ContactMaterial;
}());
exports.default = ContactMaterial;
