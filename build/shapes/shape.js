"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var vec2_1 = __importDefault(require("../math/vec2"));
var Shape = /** @class */ (function () {
    /**
     * Base class for shapes. Not to be used directly.
     * @class Shape
     * @constructor
     * @param {object} [options]
     * @param {number} [options.angle=0]
     * @param {number} [options.collisionGroup=1]
     * @param {number} [options.collisionMask=1]
     * @param {number} [options.id] Optional - specify an ID for this shape. Possibly useful for replacing shapes. Careful to avoid duplicates!
     * @param {boolean} [options.collisionResponse=true]
     * @param {Material} [options.material=null]
     * @param {array} [options.position]
     * @param {boolean} [options.sensor=false]
     * @param {object} [options.type=0]
     */
    function Shape(type, options) {
        var _a, _b, _c, _d, _e, _f;
        /**
         * Body-local position of the shape.
         * @property {Array} position
         */
        this.position = vec2_1.default.create();
        /**
         * Body-local angle of the shape.
         * @property {number} angle
         */
        this.angle = 0;
        /**
         * The type of the shape. One of:
         *
         * <ul>
         * <li><a href="Shape.html#property_CIRCLE">Shape.CIRCLE</a></li>
         * <li><a href="Shape.html#property_PARTICLE">Shape.PARTICLE</a></li>
         * <li><a href="Shape.html#property_PLANE">Shape.PLANE</a></li>
         * <li><a href="Shape.html#property_CONVEX">Shape.CONVEX</a></li>
         * <li><a href="Shape.html#property_LINE">Shape.LINE</a></li>
         * <li><a href="Shape.html#property_BOX">Shape.BOX</a></li>
         * <li><a href="Shape.html#property_CAPSULE">Shape.CAPSULE</a></li>
         * <li><a href="Shape.html#property_HEIGHTFIELD">Shape.HEIGHTFIELD</a></li>
         * </ul>
         *
         * @property {number} type
         */
        this.type = 0;
        /**
         * Shape object identifier. Read only.
         * @readonly
         * @type {Number}
         * @property id
         */
        this.id = 0;
        /**
         * Bounding circle radius of this shape
         * @readonly
         * @property boundingRadius
         * @type {Number}
         */
        this.boundingRadius = 0;
        /**
         * Collision group that this shape belongs to (bit mask). See <a href="http://www.aurelienribon.com/blog/2011/07/box2d-tutorial-collision-filtering/">this tutorial</a>.
         * @property collisionGroup
         * @type {Number}
         * @example
         *     // Setup bits for each available group
         *     var PLAYER = Math.pow(2,0),
         *         ENEMY =  Math.pow(2,1),
         *         GROUND = Math.pow(2,2)
         *
         *     // Put shapes into their groups
         *     player1Shape.collisionGroup = PLAYER;
         *     player2Shape.collisionGroup = PLAYER;
         *     enemyShape  .collisionGroup = ENEMY;
         *     groundShape .collisionGroup = GROUND;
         *
         *     // Assign groups that each shape collide with.
         *     // Note that the players can collide with ground and enemies, but not with other players.
         *     player1Shape.collisionMask = ENEMY | GROUND;
         *     player2Shape.collisionMask = ENEMY | GROUND;
         *     enemyShape  .collisionMask = PLAYER | GROUND;
         *     groundShape .collisionMask = PLAYER | ENEMY;
         *
         * @example
         *     // How collision check is done
         *     if(shapeA.collisionGroup & shapeB.collisionMask)!=0 && (shapeB.collisionGroup & shapeA.collisionMask)!=0){
         *         // The shapes will collide
         *     }
         */
        this.collisionGroup = 1;
        /**
         * Area of this shape.
         * @property area
         * @type {Number}
         */
        this.area = 0;
        if (options === null || options === void 0 ? void 0 : options.position) {
            vec2_1.default.copy(this.position, options.position);
        }
        this.angle = (_a = options === null || options === void 0 ? void 0 : options.angle) !== null && _a !== void 0 ? _a : 0;
        this.type = type;
        this.id = (_b = options === null || options === void 0 ? void 0 : options.id) !== null && _b !== void 0 ? _b : ++Shape.idCounter;
        this.collisionGroup = (_c = options === null || options === void 0 ? void 0 : options.collisionGroup) !== null && _c !== void 0 ? _c : 1;
        this.collisionResponse = (_d = options === null || options === void 0 ? void 0 : options.collisionResponse) !== null && _d !== void 0 ? _d : true;
        this.collisionMask = (_e = options === null || options === void 0 ? void 0 : options.collisionMask) !== null && _e !== void 0 ? _e : 1;
        this.material = options === null || options === void 0 ? void 0 : options.material;
        this.sensor = (_f = options === null || options === void 0 ? void 0 : options.sensor) !== null && _f !== void 0 ? _f : false;
        if (this.type) {
            this.updateBoundingRadius();
        }
        this.updateArea();
    }
    /**
     * Test if a point is inside this shape.
     * @method pointTest
     * @param {array} localPoint
     * @return {boolean}
     */
    Shape.prototype.pointTest = function (localPoint) { return false; };
    /**
     * Transform a world point to local shape space (assumed the shape is transformed by both itself and the body).
     * @method worldPointToLocal
     * @param {array} out
     * @param {array} worldPoint
     */
    Shape.prototype.worldPointToLocal = function (out, worldPoint) {
        var shapeWorldPosition = vec2_1.default.create();
        var body = this.body;
        if (!body)
            return;
        vec2_1.default.rotate(shapeWorldPosition, this.position, body.angle);
        vec2_1.default.add(shapeWorldPosition, shapeWorldPosition, body.position);
        vec2_1.default.toLocalFrame(out, worldPoint, shapeWorldPosition, body.angle + this.angle);
    };
    Shape.idCounter = 0;
    /**
     * @static
     * @property {Number} CIRCLE
     */
    Shape.CIRCLE = 1;
    /**
     * @static
     * @property {Number} PARTICLE
     */
    Shape.PARTICLE = 2;
    /**
     * @static
     * @property {Number} PLANE
     */
    Shape.PLANE = 4;
    /**
     * @static
     * @property {Number} CONVEX
     */
    Shape.CONVEX = 8;
    /**
     * @static
     * @property {Number} LINE
     */
    Shape.LINE = 16;
    /**
     * @static
     * @property {Number} BOX
     */
    Shape.BOX = 32;
    /**
     * @static
     * @property {Number} CAPSULE
     */
    Shape.CAPSULE = 64;
    /**
     * @static
     * @property {Number} HEIGHTFIELD
     */
    Shape.HEIGHTFIELD = 128;
    return Shape;
}());
exports.default = Shape;
