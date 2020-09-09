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
var body_1 = __importDefault(require("./body"));
var constraint_1 = __importDefault(require("../constraints/constraint"));
var friction_equation_1 = __importDefault(require("../equations/friction-equation"));
var worldVelocity = vec2_1.default.create();
var relativePoint = vec2_1.default.create();
var tmpVec = vec2_1.default.create();
var TopDownVehicle = /** @class */ (function () {
    /**
     * @class TopDownVehicle
     * @constructor
     *
     * @deprecated This class will be moved out of the core library in future versions.
     *
     * @param {Body} chassisBody A dynamic body, already added to the world.
     * @param {Object} [options]
     *
     * @example
     *
     *     // Create a dynamic body for the chassis
     *     var chassisBody = new Body({
     *         mass: 1
     *     });
     *     var boxShape = new Box({ width: 0.5, height: 1 });
     *     chassisBody.addShape(boxShape);
     *     world.addBody(chassisBody);
     *
     *     // Create the vehicle
     *     var vehicle = new TopDownVehicle(chassisBody);
     *
     *     // Add one front wheel and one back wheel - we don't actually need four :)
     *     var frontWheel = vehicle.addWheel({
     *         localPosition: [0, 0.5] // front
     *     });
     *     frontWheel.setSideFriction(4);
     *
     *     // Back wheel
     *     var backWheel = vehicle.addWheel({
     *         localPosition: [0, -0.5] // back
     *     });
     *     backWheel.setSideFriction(3); // Less side friction on back wheel makes it easier to drift
     *     vehicle.addToWorld(world);
     *
     *     // Steer value zero means straight forward. Positive is left and negative right.
     *     frontWheel.steerValue = Math.PI / 16;
     *
     *     // Engine force forward
     *     backWheel.engineForce = 10;
     *     backWheel.setBrakeForce(0);
     */
    function TopDownVehicle(chassisBody, options) {
        var _this = this;
        // A dummy body to constrain the chassis to
        this.groundBody = new body_1.default({ mass: 0 });
        this.wheels = [];
        this.chassisBody = chassisBody;
        this.preStepCallback = function () {
            _this.update();
        };
    }
    /**
     * @method addToWorld
     * @param {World} world
     */
    TopDownVehicle.prototype.addToWorld = function (world) {
        this.world = world;
        world.addBody(this.groundBody);
        world.on("preStep", this.preStepCallback, this);
        for (var i = 0; i < this.wheels.length; i++) {
            var wheel = this.wheels[i];
            world.addConstraint(wheel);
        }
    };
    ;
    /**
     * @method removeFromWorld
     * @param {World} world
     */
    TopDownVehicle.prototype.removeFromWorld = function () {
        var world = this.world;
        if (world) {
            world.removeBody(this.groundBody);
            world.off('preStep', this.preStepCallback);
            for (var i = 0; i < this.wheels.length; i++) {
                var wheel = this.wheels[i];
                world.removeConstraint(wheel);
            }
            this.world = undefined;
        }
    };
    ;
    /**
     * @method addWheel
     * @param {object} [wheelOptions]
     * @return {WheelConstraint}
     */
    TopDownVehicle.prototype.addWheel = function (wheelOptions) {
        var wheel = new WheelConstraint(this, wheelOptions);
        this.wheels.push(wheel);
        return wheel;
    };
    ;
    /**
     * @method update
     */
    TopDownVehicle.prototype.update = function () {
        for (var i = 0; i < this.wheels.length; i++) {
            this.wheels[i].update();
        }
    };
    ;
    return TopDownVehicle;
}());
exports.default = TopDownVehicle;
var WheelConstraint = /** @class */ (function (_super) {
    __extends(WheelConstraint, _super);
    /**
     * @class WheelConstraint
     * @constructor
     * @extends {Constraint}
     * @param {Vehicle} vehicle
     * @param {object} [options]
     * @param {Array} [options.localForwardVector] The local wheel forward vector in local body space. Default is zero.
     * @param {Array} [options.localPosition] The local position of the wheen in the chassis body. Default is zero - the center of the body.
     * @param {Array} [options.sideFriction=5] The max friction force in the sideways direction.
     */
    function WheelConstraint(vehicle, options) {
        var _a;
        var _this = 
        // TODO: I have no idea what kind of constraint this is supposed to be. It seems this was undefined in the original code.
        _super.call(this, vehicle.chassisBody, vehicle.groundBody, 0) || this;
        _this.steerValue = 0;
        /**
         * @property {number} engineForce
         */
        _this.engineForce = 0;
        _this.vehicle = vehicle;
        _this.forwardEquation = new friction_equation_1.default(vehicle.chassisBody, vehicle.groundBody);
        _this.sideEquation = new friction_equation_1.default(vehicle.chassisBody, vehicle.groundBody);
        _this.setSideFriction((_a = options === null || options === void 0 ? void 0 : options.sideFriction) !== null && _a !== void 0 ? _a : 5);
        /**
         * @property {Array} localForwardVector
         */
        _this.localForwardVector = vec2_1.default.fromValues(0, 1);
        if (options === null || options === void 0 ? void 0 : options.localForwardVector) {
            vec2_1.default.copy(_this.localForwardVector, options.localForwardVector);
        }
        /**
         * @property {Array} localPosition
         */
        _this.localPosition = vec2_1.default.create();
        if (options === null || options === void 0 ? void 0 : options.localPosition) {
            vec2_1.default.copy(_this.localPosition, options.localPosition);
        }
        _this.equations.push(_this.forwardEquation);
        _this.equations.push(_this.sideEquation);
        _this.setBrakeForce(0);
        return _this;
    }
    /**
     * @method setBrakeForce
     */
    WheelConstraint.prototype.setBrakeForce = function (force) {
        this.forwardEquation.setSlipForce(force);
    };
    /**
     * @method setSideFriction
     */
    WheelConstraint.prototype.setSideFriction = function (force) {
        this.sideEquation.setSlipForce(force);
    };
    /**
     * @method getSpeed
     */
    WheelConstraint.prototype.getSpeed = function () {
        var body = this.vehicle.chassisBody;
        body.vectorToWorldFrame(relativePoint, this.localForwardVector);
        body.getVelocityAtPoint(worldVelocity, relativePoint);
        return vec2_1.default.dot(worldVelocity, relativePoint);
    };
    /**
     * @method update
     */
    WheelConstraint.prototype.update = function () {
        var body = this.vehicle.chassisBody;
        var forwardEquation = this.forwardEquation;
        var sideEquation = this.sideEquation;
        var steerValue = this.steerValue;
        // Directional
        body.vectorToWorldFrame(forwardEquation.t, this.localForwardVector);
        vec2_1.default.rotate(sideEquation.t, this.localForwardVector, Math.PI / 2);
        body.vectorToWorldFrame(sideEquation.t, sideEquation.t);
        vec2_1.default.rotate(forwardEquation.t, forwardEquation.t, steerValue);
        vec2_1.default.rotate(sideEquation.t, sideEquation.t, steerValue);
        // Attachment point
        body.toWorldFrame(forwardEquation.contactPointB, this.localPosition);
        vec2_1.default.copy(sideEquation.contactPointB, forwardEquation.contactPointB);
        body.vectorToWorldFrame(forwardEquation.contactPointA, this.localPosition);
        vec2_1.default.copy(sideEquation.contactPointA, forwardEquation.contactPointA);
        // Add engine force
        vec2_1.default.normalize(tmpVec, forwardEquation.t);
        vec2_1.default.scale(tmpVec, tmpVec, this.engineForce);
        this.vehicle.chassisBody.applyForce(tmpVec, forwardEquation.contactPointA);
    };
    return WheelConstraint;
}(constraint_1.default));
