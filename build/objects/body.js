"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var vec2_1 = __importDefault(require("../math/vec2"));
var add = vec2_1.default.add, sub = vec2_1.default.subtract, vec2create = vec2_1.default.create;
var aabb_1 = __importDefault(require("../collision/aabb"));
var poly_decomp_1 = __importDefault(require("../math/poly-decomp"));
var Convex_1 = __importDefault(require("../shapes/Convex"));
var ray_1 = __importDefault(require("../collision/ray"));
var raycast_result_1 = __importDefault(require("../collision/raycast-result"));
var event_emitter_1 = __importDefault(require("../events/event-emitter"));
//decomp = require('poly-decomp')
var integrate_fhMinv = vec2create();
var integrate_velodt = vec2create();
var _tmp = vec2create();
var _idCounter = 0;
var Body = /** @class */ (function (_super) {
    __extends(Body, _super);
    /**
     * A rigid body. Has got a center of mass, position, velocity and a number of
     * shapes that are used for collisions.
     *
     * @class Body
     * @constructor
     * @extends EventEmitter
     * @param {Object} [options]
     * @param {Boolean} [options.allowSleep=true]
     * @param {Number} [options.angle=0]
     * @param {Number} [options.angularDamping=0.1]
     * @param {Number} [options.angularForce=0]
     * @param {Number} [options.angularVelocity=0]
     * @param {Number} [options.ccdIterations=10]
     * @param {Number} [options.ccdSpeedThreshold=-1]
     * @param {Boolean} [options.collisionResponse]
     * @param {Number} [options.damping=0.1]
     * @param {Boolean} [options.fixedRotation=false]
     * @param {Boolean} [options.fixedX=false]
     * @param {Boolean} [options.fixedY=false]
     * @param {Array} [options.force]
     * @param {Number} [options.gravityScale=1]
     * @param {Number} [options.mass=0] A number >= 0. If zero, the .type will be set to Body.STATIC.
     * @param {Array} [options.position]
     * @param {Number} [options.sleepSpeedLimit]
     * @param {Number} [options.sleepTimeLimit]
     * @param {Number} [options.type] See {{#crossLink "Body/type:property"}}{{/crossLink}}
     * @param {Array} [options.velocity]
     *
     * @example
     *
     *     // Create a typical dynamic body
     *     var body = new Body({
     *         mass: 1, // non-zero mass will set type to Body.DYNAMIC
     *         position: [0, 5],
     *         angle: 0,
     *         velocity: [0, 0],
     *         angularVelocity: 0
     *     });
     *
     *     // Add a circular shape to the body
     *     var circleShape = new Circle({ radius: 0.5 });
     *     body.addShape(circleShape);
     *
     *     // Add the body to the world
     *     world.addBody(body);
     *
     * @example
     *
     *     // Create a static plane body
     *     var planeBody = new Body({
     *         mass: 0, // zero mass will set type to Body.STATIC
     *         position: [0, 0]
     *     });
     *     var planeShape = new Plane();
     *     planeBody.addShape(planeShape);
     *     world.addBody(planeBody);
     *
     * @example
     *
     *     // Create a moving kinematic box body
     *     var platformBody = new Body({
     *         type: Body.KINEMATIC,
     *         position: [0, 3],
     *         velocity: [1, 0]
     *     });
     *     var boxShape = new Box({ width: 2, height: 0.5 });
     *     platformBody.addShape(boxShape);
     *     world.addBody(platformBody);
     */
    function Body(options) {
        var _a, _b, _c, _d, _e, _f, _g, _h, _j, _k, _l, _m, _o, _p, _q, _r, _s;
        var _this = _super.call(this) || this;
        /**
         * The body identifier. Read only!
         * @readonly
         * @property id
         * @type {Number}
        */
        _this.id = -1;
        /**
         * Index of the body in the World .bodies array. Is set to -1 if the body isn't added to a World.
         * @readonly
         * @property index
         * @type {Number}
         */
        _this.index = 0;
        /**
         * The world that this body is added to (read only). This property is set to NULL if the body is not added to any world.
         * @readonly
         * @property world
         * @type {World}
         */
        _this.world = null;
        /**
         * The shapes of the body.
         *
         * @property shapes
         * @type {Array}
         */
        _this.shapes = [];
        /**
         * The mass of the body. If you change this number, you should call {{#crossLink "Body/updateMassProperties:method"}}{{/crossLink}}.
         *
         * @property mass
         * @type {number}
         *
         * @example
         *     body.mass = 1;
         *     body.updateMassProperties();
         */
        _this.mass = 0;
        /**
         * The inverse mass of the body.
         *
         * @readonly
         * @property invMass
         * @type {number}
         */
        _this.invMass = 0;
        /**
         * The inertia of the body around the Z axis.
         * @readonly
         * @property inertia
         * @type {number}
         */
        _this.inertia = 0;
        /**
         * The inverse inertia of the body.
         * @readonly
         * @property invInertia
         * @type {number}
         */
        _this.invInertia = 0;
        _this.invMassSolve = 0;
        _this.invInertiaSolve = 0;
        /**
         * Set to true if you want to fix the rotation of the body.
         *
         * @property fixedRotation
         * @type {Boolean}
         *
         * @example
         *     // Fix rotation during runtime
         *     body.fixedRotation = true;
         *     body.updateMassProperties();
         */
        _this.fixedRotation = true;
        /**
         * Set to true if you want to fix the body movement along the X axis. The body will still be able to move along Y.
         * @property {Boolean} fixedX
         *
         * @example
         *     // Fix X movement on body creation
         *     var body = new Body({ mass: 1, fixedX: true });
         *
         * @example
         *     // Fix X movement during runtime
         *     body.fixedX = true;
         *     body.updateMassProperties();
         */
        _this.fixedX = false;
        /**
         * Set to true if you want to fix the body movement along the Y axis. The body will still be able to move along X. See .fixedX
         * @property {Boolean} fixedY
         */
        _this.fixedY = false;
        /**
         * Angular constraint velocity that was added to the body during last step.
         * @readonly
         * @property wlambda
         * @type {Array} // This was array before the port, but hte assignment was always 0.
         */
        _this.wlambda = 0;
        /**
         * The angle of the body, in radians.
         * @property angle
         * @type {number}
         * @example
         *     // The angle property is not normalized to the interval 0 to 2*pi, it can be any value.
         *     // If you need a value between 0 and 2*pi, use the following function to normalize it.
         *     function normalizeAngle(angle){
         *         angle = angle % (2*Math.PI);
         *         if(angle < 0){
         *             angle += (2*Math.PI);
         *         }
         *         return angle;
         *     }
         */
        _this.angle = 0;
        /**
         * The previous angle of the body.
         * @readonly
         * @property previousAngle
         * @type {Number}
         */
        _this.previousAngle = 0;
        /**
         * The interpolated angle of the body. Use this for rendering.
         * @readonly
         * @property interpolatedAngle
         * @type {Number}
         */
        _this.interpolatedAngle = 0;
        /**
         * The angular velocity of the body, in radians per second.
         * @property angularVelocity
         * @type {number}
         */
        _this.angularVelocity = 0;
        /**
         * The angular force acting on the body. See {{#crossLink "Body/force:property"}}{{/crossLink}}.
         * @property angularForce
         * @type {number}
         */
        _this.angularForce = 0;
        /**
         * The angular force acting on the body. Should be a value between 0 and 1.
         * @property angularDamping
         * @type {Number}
         * @default 0.1
         */
        _this.angularDamping = 0.1;
        /**
         * The type of motion this body has. Should be one of: {{#crossLink "Body/STATIC:property"}}Body.STATIC{{/crossLink}}, {{#crossLink "Body/DYNAMIC:property"}}Body.DYNAMIC{{/crossLink}} and {{#crossLink "Body/KINEMATIC:property"}}Body.KINEMATIC{{/crossLink}}.
         *
         * * Static bodies do not move, and they do not respond to forces or collision.
         * * Dynamic bodies body can move and respond to collisions and forces.
         * * Kinematic bodies only moves according to its .velocity, and does not respond to collisions or force.
         *
         * @property type
         * @type {number}
         *
         * @example
         *     // Bodies are static by default. Static bodies will never move.
         *     var body = new Body();
         *     console.log(body.type == Body.STATIC); // true
         *
         * @example
         *     // By setting the mass of a body to a nonzero number, the body
         *     // will become dynamic and will move and interact with other bodies.
         *     var dynamicBody = new Body({
         *         mass : 1
         *     });
         *     console.log(dynamicBody.type == Body.DYNAMIC); // true
         *
         * @example
         *     // Kinematic bodies will only move if you change their velocity.
         *     var kinematicBody = new Body({
         *         type: Body.KINEMATIC // Type can be set via the options object.
         *     });
         */
        _this.type = Body.STATIC;
        /**
         * Bounding circle radius. Update with {{#crossLink "Body/updateBoundingRadius:method"}}{{/crossLink}}.
         * @readonly
         * @property boundingRadius
         * @type {Number}
         */
        _this.boundingRadius = 0;
        /**
         * Indicates if the AABB needs update. Update it with {{#crossLink "Body/updateAABB:method"}}{{/crossLink}}.
         * @property aabbNeedsUpdate
         * @type {Boolean}
         * @see updateAABB
         *
         * @example
         *     // Force update the AABB
         *     body.aabbNeedsUpdate = true;
         *     body.updateAABB();
         *     console.log(body.aabbNeedsUpdate); // false
         */
        _this.aabbNeedsUpdate = true;
        /**
         * If true, the body will automatically fall to sleep. Note that you need to enable sleeping in the {{#crossLink "World"}}{{/crossLink}} before anything will happen.
         * @property allowSleep
         * @type {Boolean}
         * @default true
         */
        _this.allowSleep = true;
        _this.wantsToSleep = false;
        /**
         * One of {{#crossLink "Body/AWAKE:property"}}Body.AWAKE{{/crossLink}}, {{#crossLink "Body/SLEEPY:property"}}Body.SLEEPY{{/crossLink}} and {{#crossLink "Body/SLEEPING:property"}}Body.SLEEPING{{/crossLink}}.
         *
         * The body is initially Body.AWAKE. If its velocity norm is below .sleepSpeedLimit, the sleepState will become Body.SLEEPY. If the body continues to be Body.SLEEPY for .sleepTimeLimit seconds, it will fall asleep (Body.SLEEPY).
         *
         * @property sleepState
         * @type {Number}
         * @default Body.AWAKE
         */
        _this.sleepState = Body.AWAKE;
        /**
         * If the speed (the norm of the velocity) is smaller than this value, the body is considered sleepy.
         * @property sleepSpeedLimit
         * @type {Number}
         * @default 0.2
         */
        _this.sleepSpeedLimit = 0.2;
        /**
         * If the body has been sleepy for this sleepTimeLimit seconds, it is considered sleeping.
         * @property sleepTimeLimit
         * @type {Number}
         * @default 1
         */
        _this.sleepTimeLimit = 1;
        /**
         * Gravity scaling factor. If you want the body to ignore gravity, set this to zero. If you want to reverse gravity, set it to -1.
         * @property {Number} gravityScale
         * @default 1
         */
        _this.gravityScale = 1;
        /**
         * Whether to produce contact forces when in contact with other bodies. Note that contacts will be generated, but they will be disabled. That means that this body will move through other bodies, but it will still trigger contact events, etc.
         * @property {Boolean} collisionResponse
         */
        _this.collisionResponse = true;
        /**
         * How long the body has been sleeping.
         * @readonly
         * @property {Number} idleTime
         */
        _this.idleTime = 0;
        /**
         * The last time when the body went to SLEEPY state.
         * @readonly
         * @property {Number} timeLastSleepy
         * @private
         */
        _this.timeLastSleepy = 0;
        /**
         * If the body speed exceeds this threshold, CCD (continuous collision detection) will be enabled. Set it to a negative number to disable CCD completely for this body.
         * @property {number} ccdSpeedThreshold
         * @default -1
         */
        _this.ccdSpeedThreshold = -1;
        /**
         * The number of iterations that should be used when searching for the time of impact during CCD. A larger number will assure that there's a small penetration on CCD collision, but a small number will give more performance.
         * @property {number} ccdIterations
         * @default 10
         */
        _this.ccdIterations = 10;
        /**
         * @property {number} islandId
         */
        _this.islandId = -1;
        _this.concavePath = [];
        // Should be private, but used by world.
        _this._wakeUpAfterNarrowphase = false;
        _this._shapeAABB = new aabb_1.default();
        _this.id = (_a = options === null || options === void 0 ? void 0 : options.id) !== null && _a !== void 0 ? _a : ++_idCounter;
        _this.mass = (_b = options === null || options === void 0 ? void 0 : options.mass) !== null && _b !== void 0 ? _b : 0;
        _this.fixedRotation = (_c = options === null || options === void 0 ? void 0 : options.fixedRotation) !== null && _c !== void 0 ? _c : false;
        _this.fixedX = (_d = options === null || options === void 0 ? void 0 : options.fixedX) !== null && _d !== void 0 ? _d : false;
        _this.fixedY = (_e = options === null || options === void 0 ? void 0 : options.fixedY) !== null && _e !== void 0 ? _e : false;
        _this.massMultiplier = vec2create();
        _this.position = (options === null || options === void 0 ? void 0 : options.position) ? vec2_1.default.clone(options.position) : vec2create();
        _this.interpolatedPosition = vec2_1.default.clone(_this.position);
        _this.previousPosition = vec2_1.default.clone(_this.position);
        _this.velocity = (options === null || options === void 0 ? void 0 : options.velocity) ? vec2_1.default.clone(options.velocity) : vec2create();
        _this.vlambda = vec2create();
        _this.angle = (_f = options === null || options === void 0 ? void 0 : options.angle) !== null && _f !== void 0 ? _f : 0;
        _this.previousAngle = _this.angle;
        _this.interpolatedAngle = _this.angle;
        _this.angularVelocity = (_g = options === null || options === void 0 ? void 0 : options.angularVelocity) !== null && _g !== void 0 ? _g : 0;
        _this.force = (options === null || options === void 0 ? void 0 : options.force) ? vec2_1.default.clone(options.force) : vec2create();
        _this.angularForce = (_h = options === null || options === void 0 ? void 0 : options.angularForce) !== null && _h !== void 0 ? _h : 0;
        _this.damping = (_j = options === null || options === void 0 ? void 0 : options.damping) !== null && _j !== void 0 ? _j : 0.1;
        _this.angularDamping = (_k = options === null || options === void 0 ? void 0 : options.angularDamping) !== null && _k !== void 0 ? _k : 0.1;
        _this.sleepTimeLimit = (_l = options === null || options === void 0 ? void 0 : options.sleepTimeLimit) !== null && _l !== void 0 ? _l : 1;
        if ((options === null || options === void 0 ? void 0 : options.type) !== undefined) {
            _this.type = options.type;
        }
        else if (!(options === null || options === void 0 ? void 0 : options.mass)) {
            _this.type = Body.STATIC;
        }
        else {
            _this.type = Body.DYNAMIC;
        }
        _this.aabb = new aabb_1.default();
        _this.allowSleep = (_m = options === null || options === void 0 ? void 0 : options.allowSleep) !== null && _m !== void 0 ? _m : true;
        _this.sleepSpeedLimit = (_o = options === null || options === void 0 ? void 0 : options.sleepSpeedLimit) !== null && _o !== void 0 ? _o : 0.2;
        _this.gravityScale = (_p = options === null || options === void 0 ? void 0 : options.gravityScale) !== null && _p !== void 0 ? _p : 1;
        _this.collisionResponse = (_q = options === null || options === void 0 ? void 0 : options.collisionResponse) !== null && _q !== void 0 ? _q : true;
        _this.ccdSpeedThreshold = (_r = options === null || options === void 0 ? void 0 : options.ccdSpeedThreshold) !== null && _r !== void 0 ? _r : -1;
        _this.ccdIterations = (_s = options === null || options === void 0 ? void 0 : options.ccdIterations) !== null && _s !== void 0 ? _s : 10;
        _this.updateMassProperties();
        return _this;
    }
    /**
     * @private
     * @method updateSolveMassProperties
     */
    Body.prototype.updateSolveMassProperties = function () {
        if (this.sleepState === Body.SLEEPING || this.type === Body.KINEMATIC) {
            this.invMassSolve = 0;
            this.invInertiaSolve = 0;
        }
        else {
            this.invMassSolve = this.invMass;
            this.invInertiaSolve = this.invInertia;
        }
    };
    ;
    /**
     * Set the total density of the body
     * @method setDensity
     * @param {number} density
     */
    Body.prototype.setDensity = function (density) {
        var totalArea = this.getArea();
        this.mass = totalArea * density;
        this.updateMassProperties();
    };
    ;
    /**
     * Get the total area of all shapes in the body
     * @method getArea
     * @return {Number}
     */
    Body.prototype.getArea = function () {
        var totalArea = 0;
        for (var i = 0; i < this.shapes.length; i++) {
            totalArea += this.shapes[i].area;
        }
        return totalArea;
    };
    ;
    /**
     * Get the AABB from the body. The AABB is updated if necessary.
     * @method getAABB
     * @return {AABB} The AABB instance from the body.
     */
    Body.prototype.getAABB = function () {
        if (this.aabbNeedsUpdate) {
            this.updateAABB();
        }
        return this.aabb;
    };
    ;
    /**
     * Updates the AABB of the Body, and set .aabbNeedsUpdate = false.
     * @method updateAABB
     */
    Body.prototype.updateAABB = function () {
        var shapes = this.shapes, N = shapes.length, offset = _tmp, bodyAngle = this.angle;
        for (var i = 0; i !== N; i++) {
            var shape = shapes[i], angle = shape.angle + bodyAngle;
            // Get shape world offset
            vec2_1.default.rotate(offset, shape.position, bodyAngle);
            vec2_1.default.add(offset, offset, this.position);
            // Get shape AABB
            shape.computeAABB(this._shapeAABB, offset, angle);
            if (i === 0) {
                this.aabb.copy(this._shapeAABB);
            }
            else {
                this.aabb.extend(this._shapeAABB);
            }
        }
        this.aabbNeedsUpdate = false;
    };
    ;
    /**
     * Update the bounding radius of the body (this.boundingRadius). Should be done if any of the shape dimensions or positions are changed.
     * @method updateBoundingRadius
     */
    Body.prototype.updateBoundingRadius = function () {
        var shapes = this.shapes, N = shapes.length, radius = 0;
        for (var i = 0; i !== N; i++) {
            var shape = shapes[i], offset = vec2_1.default.length(shape.position), r = shape.boundingRadius;
            if (offset + r > radius) {
                radius = offset + r;
            }
        }
        this.boundingRadius = radius;
    };
    ;
    /**
     * Add a shape to the body. You can pass a local transform when adding a shape,
     * so that the shape gets an offset and angle relative to the body center of mass.
     * Will automatically update the mass properties and bounding radius.
     *
     * @method addShape
     * @param  {Shape}              shape
     * @param  {Array} [offset] Local body offset of the shape.
     * @param  {Number}             [angle]  Local body angle.
     *
     * @example
     *     var body = new Body(),
     *         shape = new Circle({ radius: 1 });
     *
     *     // Add the shape to the body, positioned in the center
     *     body.addShape(shape);
     *
     *     // Add another shape to the body, positioned 1 unit length from the body center of mass along the local x-axis.
     *     body.addShape(shape,[1,0]);
     *
     *     // Add another shape to the body, positioned 1 unit length from the body center of mass along the local y-axis, and rotated 90 degrees CCW.
     *     body.addShape(shape,[0,1],Math.PI/2);
     */
    Body.prototype.addShape = function (shape, offset, angle) {
        if (angle === void 0) { angle = 0; }
        if (shape.body) {
            throw new Error('A shape can only be added to one body.');
        }
        var world = this.world;
        if (world && world.stepping) {
            throw new Error('A shape cannot be added during step.');
        }
        shape.body = this;
        // Copy the offset vector
        if (offset) {
            vec2_1.default.copy(shape.position, offset);
        }
        else {
            vec2_1.default.set(shape.position, 0, 0);
        }
        shape.angle = angle || 0;
        this.shapes.push(shape);
        this.updateMassProperties();
        this.updateBoundingRadius();
        this.aabbNeedsUpdate = true;
    };
    ;
    /**
     * Remove a shape.
     * @method removeShape
     * @param  {Shape} shape
     * @return {Boolean} True if the shape was found and removed, else false.
     */
    Body.prototype.removeShape = function (shape) {
        var world = this.world;
        if (world && world.stepping) {
            throw new Error('A shape cannot be removed during step.');
        }
        var idx = this.shapes.indexOf(shape);
        if (idx !== -1) {
            this.shapes.splice(idx, 1);
            this.aabbNeedsUpdate = true;
            shape.body = undefined;
            return true;
        }
        else {
            return false;
        }
    };
    ;
    /**
     * Updates .inertia, .invMass, .invInertia for this Body. Should be called when changing the structure or mass of the Body.
     *
     * @method updateMassProperties
     *
     * @example
     *     body.mass += 1;
     *     body.updateMassProperties();
     */
    Body.prototype.updateMassProperties = function () {
        if (this.type === Body.STATIC || this.type === Body.KINEMATIC) {
            // Consider making it infinity.
            this.mass = Infinity;
            this.invMass = 0;
            this.inertia = Infinity;
            this.invInertia = 0;
        }
        else {
            var shapes = this.shapes, N = shapes.length, I = 0;
            if (!this.fixedRotation) {
                for (var i = 0; i < N; i++) {
                    var shape = shapes[i], r2 = vec2_1.default.squaredLength(shape.position), Icm = shape.computeMomentOfInertia();
                    I += Icm + r2;
                }
                this.inertia = this.mass * I;
                this.invInertia = I > 0 ? 1 / I : 0;
            }
            else {
                this.inertia = Infinity;
                this.invInertia = 0;
            }
            // Inverse mass properties are easy
            this.invMass = 1 / this.mass;
            vec2_1.default.set(this.massMultiplier, this.fixedX ? 0 : 1, this.fixedY ? 0 : 1);
        }
    };
    ;
    /**
     * Apply force to a point relative to the center of mass of the body. This could for example be a point on the Body surface. Applying force this way will add to Body.force and Body.angularForce.
     * @method applyForce
     * @param  {Array} force The force vector to add, oriented in world space.
     * @param  {Array} [relativePoint] A point relative to the body in world space. If not given, it is set to zero and all of the force will be exerted on the center of mass.
     * @example
     *     var body = new Body({ mass: 1 });
     *     var relativePoint = [1, 0]; // Will apply the force at [body.position[0] + 1, body.position[1]]
     *     var force = [0, 1]; // up
     *     body.applyForce(force, relativePoint);
     *     console.log(body.force); // [0, 1]
     *     console.log(body.angularForce); // 1
     */
    Body.prototype.applyForce = function (force, relativePoint) {
        // Add linear force
        add(this.force, this.force, force);
        if (relativePoint) {
            // Compute produced rotational force
            var rotForce = vec2_1.default.crossLength(relativePoint, force);
            // Add rotational force
            this.angularForce += rotForce;
        }
    };
    ;
    /**
     * Apply force to a point relative to the center of mass of the body. This could for example be a point on the Body surface. Applying force this way will add to Body.force and Body.angularForce.
     * @method applyForceLocal
     * @param  {Array} localForce The force vector to add, oriented in local body space.
     * @param  {Array} [localPoint] A point relative to the body in local body space. If not given, it is set to zero and all of the force will be exerted on the center of mass.
     * @example
     *     var body = new Body({ mass: 1 });
     *     var localPoint = [1, 0]; // x=1 locally in the body
     *     var localForce = [0, 1]; // up, locally in the body
     *     body.applyForceLocal(localForce, localPoint);
     *     console.log(body.force); // [0, 1]
     *     console.log(body.angularForce); // 1
     */
    Body.prototype.applyForceLocal = function (localForce, localPoint) {
        // These 3 lines were originally outside of this function. Not sure why.
        var Body_applyForce_forceWorld = vec2create();
        var Body_applyForce_pointWorld = vec2create();
        var Body_applyForce_pointLocal = vec2create();
        localPoint = localPoint || Body_applyForce_pointLocal;
        var worldForce = Body_applyForce_forceWorld;
        var worldPoint = Body_applyForce_pointWorld;
        this.vectorToWorldFrame(worldForce, localForce);
        this.vectorToWorldFrame(worldPoint, localPoint);
        this.applyForce(worldForce, worldPoint);
    };
    ;
    /**
     * Apply impulse to a point relative to the body. This could for example be a point on the Body surface. An impulse is a force added to a body during a short period of time (impulse = force * time). Impulses will be added to Body.velocity and Body.angularVelocity.
     * @method applyImpulse
     * @param  {Array} impulseVector The impulse vector to add, oriented in world space.
     * @param  {Array} [relativePoint] A point relative to the body in world space. If not given, it is set to zero and all of the impulse will be exerted on the center of mass.
     * @example
     *     var body = new Body({ mass: 1 });
     *     var relativePoint = [0, 0]; // center of the body
     *     var impulseVector = [0, 1]; // world up
     *     body.applyImpulse(impulseVector, relativePoint);
     */
    Body.prototype.applyImpulse = function (impulseVector, relativePoint) {
        var Body_applyImpulse_velo = vec2create(); // Was originally outside of this function. 
        if (this.type !== Body.DYNAMIC) {
            return;
        }
        // Compute produced central impulse velocity
        var velo = Body_applyImpulse_velo;
        vec2_1.default.scale(velo, impulseVector, this.invMass);
        vec2_1.default.multiply(velo, this.massMultiplier, velo);
        // Add linear impulse
        add(this.velocity, velo, this.velocity);
        if (relativePoint) {
            // Compute produced rotational impulse velocity
            var rotVelo = vec2_1.default.crossLength(relativePoint, impulseVector);
            rotVelo *= this.invInertia;
            // Add rotational Impulse
            this.angularVelocity += rotVelo;
        }
    };
    ;
    /**
     * Apply impulse to a point relative to the body. This could for example be a point on the Body surface. An impulse is a force added to a body during a short period of time (impulse = force * time). Impulses will be added to Body.velocity and Body.angularVelocity.
     * @method applyImpulseLocal
     * @param  {Array} localImpulse The impulse vector to add, oriented in local body space.
     * @param  {Array} [localPoint] A point relative to the body in local body space. If not given, it is set to zero and all of the impulse will be exerted on the center of mass.
     * @example
     *     var body = new Body({ mass: 1 });
     *     var localPoint = [1, 0]; // x=1, locally in the body
     *     var localImpulse = [0, 1]; // up, locally in the body
     *     body.applyImpulseLocal(localImpulse, localPoint);
     *     console.log(body.velocity); // [1, 0]
     *     console.log(body.angularVelocity); // 1
     */
    Body.prototype.applyImpulseLocal = function (localImpulse, localPoint) {
        // Originally outside of this function.
        var Body_applyImpulse_impulseWorld = vec2create();
        var Body_applyImpulse_pointWorld = vec2create();
        var Body_applyImpulse_pointLocal = vec2create();
        localPoint = localPoint || Body_applyImpulse_pointLocal;
        var worldImpulse = Body_applyImpulse_impulseWorld;
        var worldPoint = Body_applyImpulse_pointWorld;
        this.vectorToWorldFrame(worldImpulse, localImpulse);
        this.vectorToWorldFrame(worldPoint, localPoint);
        this.applyImpulse(worldImpulse, worldPoint);
    };
    ;
    /**
     * Transform a world point to local body frame.
     * @method toLocalFrame
     * @param  {Array} out          The point to store the result in
     * @param  {Array} worldPoint   The input world point
     */
    Body.prototype.toLocalFrame = function (out, worldPoint) {
        vec2_1.default.toLocalFrame(out, worldPoint, this.position, this.angle);
    };
    ;
    /**
     * Transform a local point to world frame.
     * @method toWorldFrame
     * @param  {Array} out          The point to store the result in
     * @param  {Array} localPoint   The input local point
     */
    Body.prototype.toWorldFrame = function (out, localPoint) {
        vec2_1.default.toGlobalFrame(out, localPoint, this.position, this.angle);
    };
    ;
    /**
     * Transform a world vector to local body frame.
     * @method vectorToLocalFrame
     * @param  {Array} out          The vector to store the result in
     * @param  {Array} worldVector  The input world vector
     */
    Body.prototype.vectorToLocalFrame = function (out, worldVector) {
        vec2_1.default.vectorToLocalFrame(out, worldVector, this.angle);
    };
    ;
    /**
     * Transform a local vector to world frame.
     * @method vectorToWorldFrame
     * @param  {Array} out          The vector to store the result in
     * @param  {Array} localVector  The input local vector
     */
    Body.prototype.vectorToWorldFrame = function (out, localVector) {
        vec2_1.default.rotate(out, localVector, this.angle);
    };
    ;
    /**
     * Reads a polygon shape path, and assembles convex shapes from that and puts them at proper offset points.
     * @method fromPolygon
     * @param {Array} path An array of 2d vectors, e.g. [[0,0],[0,1],...] that resembles a concave or convex polygon. The shape must be simple and without holes.
     * @param {Object} [options]
     * @param {Boolean} [options.optimalDecomp=false]   Set to true if you need optimal decomposition. Warning: very slow for polygons with more than 10 vertices.
     * @param {Boolean} [options.skipSimpleCheck=false] Set to true if you already know that the path is not intersecting itself.
     * @param {Number} [options.removeCollinearPoints=0] Set to a number (angle threshold value) to remove collinear points, or 0 to keep all points.
     * @return {Boolean} True on success, else false.
     * @example
     *     var body = new Body();
     *     var path = [
     *         [-1, 1],
     *         [-1, 0],
     *         [1, 0],
     *         [1, 1],
     *         [0.5, 0.5]
     *     ];
     *     body.fromPolygon(path);
     *     console.log(body.shapes); // [Convex, Convex, ...]
     */
    Body.prototype.fromPolygon = function (path, options) {
        var _a, _b, _c;
        // Remove all shapes
        for (var i = this.shapes.length; i >= 0; --i) {
            this.removeShape(this.shapes[i]);
        }
        // Copy the path
        var p = [];
        for (var i = 0; i < path.length; i++) {
            p[i] = vec2_1.default.clone(path[i]);
        }
        // Make it counter-clockwise
        poly_decomp_1.default.makeCCW(p);
        if ((options === null || options === void 0 ? void 0 : options.removeCollinearPoints) != 0) {
            poly_decomp_1.default.removeCollinearPoints(p, (_a = options === null || options === void 0 ? void 0 : options.removeCollinearPoints) !== null && _a !== void 0 ? _a : 0);
        }
        // Check if any line segment intersects the path itself
        if (!(options === null || options === void 0 ? void 0 : options.skipSimpleCheck)) {
            if (!poly_decomp_1.default.isSimple(p)) {
                return false;
            }
        }
        // Save this path for later
        this.concavePath = [];
        for (var i = 0; i < p.length; i++) {
            this.concavePath[i] = vec2_1.default.clone(p[i]);
        }
        // Slow or fast decomp?
        var convexes;
        if (options === null || options === void 0 ? void 0 : options.optimalDecomp) {
            convexes = (_b = poly_decomp_1.default.decomp(p)) !== null && _b !== void 0 ? _b : new Array();
        }
        else {
            convexes = (_c = poly_decomp_1.default.quickDecomp(p)) !== null && _c !== void 0 ? _c : new Array();
        }
        var cm = vec2create();
        // Add convexes
        for (var i = 0; i !== convexes.length; i++) {
            // Create convex
            var c = new Convex_1.default(undefined, convexes[i]);
            // Move all vertices so its center of mass is in the local center of the convex
            for (var j = 0; j !== c.vertices.length; j++) {
                var v = c.vertices[j];
                sub(v, v, c.centerOfMass);
            }
            vec2_1.default.copy(cm, c.centerOfMass);
            c = new Convex_1.default(undefined, c.vertices);
            // Add the shape
            this.addShape(c, cm);
        }
        this.adjustCenterOfMass();
        this.aabbNeedsUpdate = true;
        return true;
    };
    /**
     * Moves the shape offsets so their center of mass becomes the body center of mass.
     * @method adjustCenterOfMass
     * @example
     *     var body = new Body({ position: [0, 0] });
     *     var shape = new Circle({ radius: 1 });
     *     body.addShape(shape, [1, 0], 0);
     *     body.adjustCenterOfMass();
     *     console.log(body.position); // [1, 0]
     *     console.log(shape.position); // [0, 0]
     */
    Body.prototype.adjustCenterOfMass = function () {
        var adjustCenterOfMass_tmp2 = vec2create(), adjustCenterOfMass_tmp3 = vec2create(), adjustCenterOfMass_tmp4 = vec2create();
        var offset_times_area = adjustCenterOfMass_tmp2, sum = adjustCenterOfMass_tmp3, cm = adjustCenterOfMass_tmp4, totalArea = 0;
        vec2_1.default.set(sum, 0, 0);
        for (var i = 0; i !== this.shapes.length; i++) {
            var s = this.shapes[i];
            vec2_1.default.scale(offset_times_area, s.position, s.area);
            add(sum, sum, offset_times_area);
            totalArea += s.area;
        }
        vec2_1.default.scale(cm, sum, 1 / totalArea);
        // Now move all shapes
        for (var i = 0; i !== this.shapes.length; i++) {
            var s = this.shapes[i];
            sub(s.position, s.position, cm);
        }
        // Move the body position too
        add(this.position, this.position, cm);
        // And concave path
        for (var i = 0; this.concavePath && i < this.concavePath.length; i++) {
            sub(this.concavePath[i], this.concavePath[i], cm);
        }
        this.updateMassProperties();
        this.updateBoundingRadius();
    };
    /**
     * Sets the force on the body to zero.
     * @method setZeroForce
     */
    Body.prototype.setZeroForce = function () {
        var f = this.force;
        f[0] = f[1] = this.angularForce = 0;
    };
    Body.prototype.resetConstraintVelocity = function () {
        var b = this, vlambda = b.vlambda;
        vec2_1.default.set(vlambda, 0, 0);
        b.wlambda = 0;
    };
    Body.prototype.addConstraintVelocity = function () {
        var b = this, v = b.velocity;
        add(v, v, b.vlambda);
        b.angularVelocity += b.wlambda;
    };
    /**
     * Apply damping, see <a href="http://code.google.com/p/bullet/issues/detail?id=74">this</a> for details.
     * @method applyDamping
     * @param  {number} dt Current time step
     */
    Body.prototype.applyDamping = function (dt) {
        if (this.type === Body.DYNAMIC) { // Only for dynamic bodies
            var v = this.velocity;
            vec2_1.default.scale(v, v, Math.pow(1 - this.damping, dt));
            this.angularVelocity *= Math.pow(1 - this.angularDamping, dt);
        }
    };
    /**
     * Wake the body up. Normally you should not need this, as the body is automatically awoken at events such as collisions.
     * Sets the sleepState to {{#crossLink "Body/AWAKE:property"}}Body.AWAKE{{/crossLink}} and emits the wakeUp event if the body wasn't awake before.
     * @method wakeUp
     */
    Body.prototype.wakeUp = function () {
        var s = this.sleepState;
        this.sleepState = Body.AWAKE;
        this.idleTime = 0;
        if (s !== Body.AWAKE) {
            _super.prototype.emit.call(this, wakeUpEvent);
        }
    };
    /**
     * Force body sleep
     * @method sleep
     */
    Body.prototype.sleep = function () {
        this.sleepState = Body.SLEEPING;
        this.angularVelocity = this.angularForce = 0;
        vec2_1.default.set(this.velocity, 0, 0);
        vec2_1.default.set(this.force, 0, 0);
        _super.prototype.emit.call(this, sleepEvent);
    };
    /**
     * Called every timestep to update internal sleep timer and change sleep state if needed.
     * @method sleepTick
     * @param {number} time The world time in seconds
     * @param {boolean} dontSleep
     * @param {number} dt
     */
    Body.prototype.sleepTick = function (time, dontSleep, dt) {
        if (!this.allowSleep || this.type === Body.SLEEPING) {
            return;
        }
        this.wantsToSleep = false;
        var speedSquared = vec2_1.default.squaredLength(this.velocity) + Math.pow(this.angularVelocity, 2), speedLimitSquared = Math.pow(this.sleepSpeedLimit, 2);
        // Add to idle time
        if (speedSquared >= speedLimitSquared) {
            this.idleTime = 0;
            this.sleepState = Body.AWAKE;
        }
        else {
            this.idleTime += dt;
            if (this.sleepState !== Body.SLEEPY) {
                this.sleepState = Body.SLEEPY;
                _super.prototype.emit.call(this, sleepyEvent);
            }
        }
        if (this.idleTime > this.sleepTimeLimit) {
            if (!dontSleep) {
                this.sleep();
            }
            else {
                this.wantsToSleep = true;
            }
        }
    };
    /**
     * Check if the body is overlapping another body. Note that this method only works if the body was added to a World and if at least one step was taken.
     * @method overlaps
     * @param  {Body} body
     * @return {boolean}
     */
    Body.prototype.overlaps = function (body) {
        if (!this.world)
            return false;
        return this.world.overlapKeeper.bodiesAreOverlapping(this, body);
    };
    /**
     * Move the body forward in time given its current velocity.
     * @method integrate
     * @param  {Number} dt
     */
    Body.prototype.integrate = function (dt) {
        var minv = this.invMass, f = this.force, pos = this.position, velo = this.velocity;
        // Save old position
        vec2_1.default.copy(this.previousPosition, this.position);
        this.previousAngle = this.angle;
        // Velocity update
        if (!this.fixedRotation) {
            this.angularVelocity += this.angularForce * this.invInertia * dt;
        }
        vec2_1.default.scale(integrate_fhMinv, f, dt * minv);
        vec2_1.default.multiply(integrate_fhMinv, this.massMultiplier, integrate_fhMinv);
        add(velo, integrate_fhMinv, velo);
        // CCD
        if (!this.integrateToTimeOfImpact(dt)) {
            // Regular position update
            vec2_1.default.scale(integrate_velodt, velo, dt);
            add(pos, pos, integrate_velodt);
            if (!this.fixedRotation) {
                this.angle += this.angularVelocity * dt;
            }
        }
        this.aabbNeedsUpdate = true;
    };
    Body.prototype.integrateToTimeOfImpact = function (dt) {
        var _a;
        if (!this.world)
            return false;
        var result = new raycast_result_1.default();
        var ray = new ray_1.default({
            mode: ray_1.default.CLOSEST,
            skipBackfaces: true
        });
        var direction = vec2create();
        var end = vec2create();
        var startToEnd = vec2create();
        var rememberPosition = vec2create();
        if (this.ccdSpeedThreshold < 0 || vec2_1.default.squaredLength(this.velocity) < Math.pow(this.ccdSpeedThreshold, 2)) {
            return false;
        }
        // Ignore all the ignored body pairs
        // This should probably be done somewhere else for optimization
        var ignoreBodies = [];
        var disabledPairs = this.world.disabledBodyCollisionPairs;
        for (var i = 0; i < disabledPairs.length; i += 2) {
            var bodyA = disabledPairs[i];
            var bodyB = disabledPairs[i + 1];
            if (bodyA === this) {
                ignoreBodies.push(bodyB);
            }
            else if (bodyB === this) {
                ignoreBodies.push(bodyA);
            }
        }
        vec2_1.default.normalize(direction, this.velocity);
        vec2_1.default.scale(end, this.velocity, dt);
        add(end, end, this.position);
        sub(startToEnd, end, this.position);
        var startToEndAngle = this.angularVelocity * dt;
        var len = vec2_1.default.length(startToEnd);
        var timeOfImpact = 1;
        var hitBody = null;
        vec2_1.default.copy(ray.from, this.position);
        vec2_1.default.copy(ray.to, end);
        ray.update();
        for (var i = 0; i < this.shapes.length; i++) {
            var shape = this.shapes[i];
            result.reset();
            ray.collisionGroup = shape.collisionGroup;
            ray.collisionMask = shape.collisionMask;
            this.world.raycast(result, ray);
            hitBody = (_a = result.body) !== null && _a !== void 0 ? _a : null;
            if (!hitBody)
                continue;
            if (hitBody === this || ignoreBodies.indexOf(hitBody) !== -1) {
                hitBody = null;
            }
            if (hitBody) {
                break;
            }
        }
        if (!hitBody || !timeOfImpact) {
            return false;
        }
        result.getHitPoint(end, ray);
        sub(startToEnd, end, this.position);
        timeOfImpact = vec2_1.default.distance(end, this.position) / len; // guess
        var rememberAngle = this.angle;
        vec2_1.default.copy(rememberPosition, this.position);
        // Got a start and end point. Approximate time of impact using binary search
        var iter = 0;
        var tmin = 0;
        var tmid = timeOfImpact;
        var tmax = 1;
        while (tmax >= tmin && iter < this.ccdIterations) {
            iter++;
            // calculate the midpoint
            tmid = (tmax + tmin) / 2;
            // Move the body to that point
            vec2_1.default.scale(integrate_velodt, startToEnd, tmid);
            add(this.position, rememberPosition, integrate_velodt);
            this.angle = rememberAngle + startToEndAngle * tmid;
            this.updateAABB();
            // check overlap
            var overlaps = this.aabb.overlaps(hitBody.aabb) && this.world.narrowphase.bodiesOverlap(this, hitBody, true);
            if (overlaps) {
                // change max to search lower interval
                tmax = tmid;
            }
            else {
                // change min to search upper interval
                tmin = tmid;
            }
        }
        timeOfImpact = tmax; // Need to guarantee overlap to resolve collisions
        vec2_1.default.copy(this.position, rememberPosition);
        this.angle = rememberAngle;
        // move to TOI
        vec2_1.default.scale(integrate_velodt, startToEnd, timeOfImpact);
        add(this.position, this.position, integrate_velodt);
        if (!this.fixedRotation) {
            this.angle += startToEndAngle * timeOfImpact;
        }
        return true;
    };
    /**
     * Get velocity of a point in the body.
     * @method getVelocityAtPoint
     * @param  {Array} result A vector to store the result in
     * @param  {Array} relativePoint A world oriented vector, indicating the position of the point to get the velocity from
     * @return {Array} The result vector
     * @example
     *     var body = new Body({
     *         mass: 1,
     *         velocity: [1, 0],
     *         angularVelocity: 1
     *     });
     *     var result = [];
     *     var point = [1, 0];
     *     body.getVelocityAtPoint(result, point);
     *     console.log(result); // [1, 1]
     */
    Body.prototype.getVelocityAtPoint = function (result, relativePoint) {
        vec2_1.default.crossVZ(result, relativePoint, this.angularVelocity);
        vec2_1.default.subtract(result, this.velocity, result);
        return result;
    };
    /**
     * Dynamic body.
     * @property DYNAMIC
     * @type {Number}
     * @static
     */
    Body.DYNAMIC = 1;
    /**
     * Static body.
     * @property STATIC
     * @type {Number}
     * @static
     */
    Body.STATIC = 2;
    /**
     * Kinematic body.
     * @property KINEMATIC
     * @type {Number}
     * @static
     */
    Body.KINEMATIC = 4;
    /**
     * @property AWAKE
     * @type {Number}
     * @static
     */
    Body.AWAKE = 0;
    /**
     * @property SLEEPY
     * @type {Number}
     * @static
     */
    Body.SLEEPY = 1;
    /**
     * @property SLEEPING
     * @type {Number}
     * @static
     */
    Body.SLEEPING = 2;
    return Body;
}(event_emitter_1.default));
exports.default = Body;
/**
 * @event sleepy
 */
var sleepyEvent = {
    type: "sleepy"
};
/**
 * @event sleep
 */
var sleepEvent = {
    type: "sleep"
};
/**
 * @event wakeup
 */
var wakeUpEvent = {
    type: "wakeup"
};
