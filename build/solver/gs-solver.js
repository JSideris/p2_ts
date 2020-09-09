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
var solver_1 = __importDefault(require("./solver"));
var friction_equation_1 = __importDefault(require("../equations/friction-equation"));
// Sets the .multiplier property of each equation
function updateMultipliers(equations, invDt) {
    var l = equations.length;
    while (l--) {
        var eq = equations[l];
        eq.multiplier = eq.lambda * invDt;
    }
}
function iterateEquation(eq) {
    // Compute iteration
    var B = eq.B, eps = eq.epsilon, invC = eq.invC, lambdaj = eq.lambda, GWlambda = eq.computeGWlambda(), maxForce_dt = eq.maxForceDt, minForce_dt = eq.minForceDt;
    var deltalambda = invC * (B - GWlambda - eps * lambdaj);
    // Clamp if we are not within the min/max interval
    var lambdaj_plus_deltalambda = lambdaj + deltalambda;
    if (lambdaj_plus_deltalambda < minForce_dt) {
        deltalambda = minForce_dt - lambdaj;
    }
    else if (lambdaj_plus_deltalambda > maxForce_dt) {
        deltalambda = maxForce_dt - lambdaj;
    }
    eq.lambda += deltalambda;
    eq.addToWlambda(deltalambda);
    return deltalambda;
}
var GSSolver = /** @class */ (function (_super) {
    __extends(GSSolver, _super);
    /**
     * Iterative Gauss-Seidel constraint equation solver.
     *
     * @class GSSolver
     * @constructor
     * @extends Solver
     * @param {Object} [options]
     * @param {Number} [options.iterations=10]
     * @param {Number} [options.tolerance=0]
     */
    function GSSolver(options) {
        var _a, _b, _c;
        var _this = _super.call(this, options, solver_1.default.GS) || this;
        /**
         * The number of iterations that were made during the last solve. If .tolerance is zero, this value will always be equal to .iterations, but if .tolerance is larger than zero, and the solver can quit early, then this number will be somewhere between 1 and .iterations.
         * @property {Number} usedIterations
         */
        _this.usedIterations = 0;
        _this.iterations = (_a = options === null || options === void 0 ? void 0 : options.iterations) !== null && _a !== void 0 ? _a : 10;
        _this.tolerance = (_b = options === null || options === void 0 ? void 0 : options.tolerance) !== null && _b !== void 0 ? _b : 1e-7;
        _this.frictionIterations = (_c = options === null || options === void 0 ? void 0 : options.frictionIterations) !== null && _c !== void 0 ? _c : 0;
        return _this;
    }
    /**
     * Solve the system of equations
     * @method solve
     * @param  {Number}  h       Time step
     * @param  {World}   world    World to solve
     */
    GSSolver.prototype.solve = function (h, world) {
        this.sortEquations();
        var iter = 0, maxIter = this.iterations, maxFrictionIter = this.frictionIterations, equations = this.equations, Neq = equations.length, tolSquared = Math.pow(this.tolerance * Neq, 2), bodies = world.bodies, Nbodies = bodies.length;
        this.usedIterations = 0;
        if (Neq) {
            for (var i = 0; i !== Nbodies; i++) {
                var b = bodies[i];
                // Update solve mass
                b.updateSolveMassProperties();
            }
        }
        for (var i_1 = 0; i_1 !== Neq; i_1++) {
            var c_1 = equations[i_1];
            c_1.lambda = 0;
            if (c_1.timeStep !== h || c_1.needsUpdate) {
                c_1.timeStep = h;
                c_1.update();
            }
            c_1.B = c_1.computeB(c_1.a, c_1.b, h);
            c_1.invC = c_1.computeInvC(c_1.epsilon);
            c_1.maxForceDt = c_1.maxForce * h;
            c_1.minForceDt = c_1.minForce * h;
        }
        var c, deltalambdaTot, j;
        if (Neq !== 0) {
            for (i = 0; i !== Nbodies; i++) {
                var b = bodies[i];
                // Reset vlambda
                b.resetConstraintVelocity();
            }
            if (maxFrictionIter) {
                // Iterate over contact equations to get normal forces
                for (iter = 0; iter !== maxFrictionIter; iter++) {
                    // Accumulate the total error for each iteration.
                    deltalambdaTot = 0.0;
                    for (j = 0; j !== Neq; j++) {
                        c = equations[j];
                        var deltalambda = iterateEquation(c);
                        deltalambdaTot += Math.abs(deltalambda);
                    }
                    this.usedIterations++;
                    // If the total error is small enough - stop iterate
                    if (deltalambdaTot * deltalambdaTot <= tolSquared) {
                        break;
                    }
                }
                updateMultipliers(equations, 1 / h);
                // Set computed friction force
                for (j = 0; j !== Neq; j++) {
                    var eq = equations[j];
                    if (eq instanceof friction_equation_1.default) {
                        var f = 0.0;
                        for (var k = 0; k !== eq.contactEquations.length; k++) {
                            f += eq.contactEquations[k].multiplier;
                        }
                        f *= eq.frictionCoefficient / eq.contactEquations.length;
                        eq.maxForce = f;
                        eq.minForce = -f;
                        eq.maxForceDt = f * h;
                        eq.minForceDt = -f * h;
                    }
                }
            }
            // Iterate over all equations
            for (iter = 0; iter !== maxIter; iter++) {
                // Accumulate the total error for each iteration.
                deltalambdaTot = 0.0;
                for (j = 0; j !== Neq; j++) {
                    c = equations[j];
                    var deltalambda = iterateEquation(c);
                    deltalambdaTot += Math.abs(deltalambda);
                }
                this.usedIterations++;
                // If the total error is small enough - stop iterate
                if (deltalambdaTot * deltalambdaTot < tolSquared) {
                    break;
                }
            }
            // Add result to velocity
            for (i = 0; i !== Nbodies; i++) {
                bodies[i].addConstraintVelocity();
            }
            updateMultipliers(equations, 1 / h);
        }
    };
    ;
    return GSSolver;
}(solver_1.default));
exports.default = GSSolver;
