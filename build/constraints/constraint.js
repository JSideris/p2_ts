"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var Constraint = /** @class */ (function () {
    /**
     * Base constraint class.
     *
     * @class Constraint
     * @constructor
     * @author schteppe
     * @param {Body} bodyA
     * @param {Body} bodyB
     * @param {Number} type
     * @param {Object} [options]
     * @param {Object} [options.collideConnected=true]
     */
    function Constraint(bodyA, bodyB, type, options) {
        var _a, _b;
        this.type = type;
        this.equations = [];
        this.bodyA = bodyA;
        this.bodyB = bodyB;
        this.collideConnected = (_a = options === null || options === void 0 ? void 0 : options.collideConnected) !== null && _a !== void 0 ? _a : true;
        // Wake up bodies when connected
        if (((_b = options === null || options === void 0 ? void 0 : options.wakeUpBodies) !== null && _b !== void 0 ? _b : false) !== false) {
            if (bodyA) {
                bodyA.wakeUp();
            }
            if (bodyB) {
                bodyB.wakeUp();
            }
        }
    }
    /**
     * Updates the internal constraint parameters before solve.
     * @method update
     */
    Constraint.prototype.update = function () {
        throw new Error("method update() not implmemented in this Constraint subclass!");
    };
    ;
    /**
     * Set stiffness for this constraint.
     * @method setStiffness
     * @param {Number} stiffness
     */
    Constraint.prototype.setStiffness = function (stiffness) {
        var eqs = this.equations;
        for (var i = 0; i !== eqs.length; i++) {
            var eq = eqs[i];
            eq.stiffness = stiffness;
            eq.needsUpdate = true;
        }
    };
    ;
    /**
     * Set relaxation for this constraint.
     * @method setRelaxation
     * @param {Number} relaxation
     */
    Constraint.prototype.setRelaxation = function (relaxation) {
        var eqs = this.equations;
        for (var i = 0; i !== eqs.length; i++) {
            var eq = eqs[i];
            eq.relaxation = relaxation;
            eq.needsUpdate = true;
        }
    };
    ;
    /**
     * @method setMaxBias
     * @param {Number} maxBias
     */
    Constraint.prototype.setMaxBias = function (maxBias) {
        var eqs = this.equations;
        for (var i = 0; i !== eqs.length; i++) {
            var eq = eqs[i];
            eq.maxBias = maxBias;
        }
    };
    ;
    /**
     * @static
     * @property {number} DISTANCE
     */
    Constraint.DISTANCE = 1;
    /**
     * @static
     * @property {number} GEAR
     */
    Constraint.GEAR = 2;
    /**
     * @static
     * @property {number} LOCK
     */
    Constraint.LOCK = 3;
    /**
     * @static
     * @property {number} PRISMATIC
     */
    Constraint.PRISMATIC = 4;
    /**
     * @static
     * @property {number} REVOLUTE
     */
    Constraint.REVOLUTE = 5;
    return Constraint;
}());
exports.default = Constraint;
