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
var event_emitter_1 = __importDefault(require("../events/event-emitter"));
var Solver = /** @class */ (function (_super) {
    __extends(Solver, _super);
    /**
     * Base class for constraint solvers.
     * @class Solver
     * @constructor
     * @extends EventEmitter
     */
    function Solver(options, type) {
        var _a;
        var _this = _super.call(this) || this;
        _this.type = type;
        /**
         * Current equations in the solver.
         *
         * @property equations
         * @type {Array}
         */
        _this.equations = [];
        /**
         * Function that is used to sort all equations before each solve.
         * @property equationSortFunction
         * @type {function|boolean}
         */
        _this.equationSortFunction = (_a = options === null || options === void 0 ? void 0 : options.equationSortFunction) !== null && _a !== void 0 ? _a : undefined;
        return _this;
    }
    /**
     * Sort all equations using the .equationSortFunction. Should be called by subclasses before solving.
     * @method sortEquations
     */
    Solver.prototype.sortEquations = function () {
        if (this.equationSortFunction) {
            this.equations.sort(this.equationSortFunction);
        }
    };
    ;
    /**
     * Add an equation to be solved.
     *
     * @method addEquation
     * @param {Equation} eq
     */
    Solver.prototype.addEquation = function (eq) {
        if (eq.enabled) {
            this.equations.push(eq);
        }
    };
    ;
    /**
     * Add equations. Same as .addEquation, but this time the argument is an array of Equations
     *
     * @method addEquations
     * @param {Array} eqs
     */
    Solver.prototype.addEquations = function (eqs) {
        for (var i = 0, N = eqs.length; i !== N; i++) {
            var eq = eqs[i];
            if (eq.enabled) {
                this.equations.push(eq);
            }
        }
    };
    ;
    /**
     * Remove an equation.
     *
     * @method removeEquation
     * @param {Equation} eq
     */
    Solver.prototype.removeEquation = function (eq) {
        var i = this.equations.indexOf(eq);
        if (i !== -1) {
            this.equations.splice(i, 1);
        }
    };
    ;
    /**
     * Remove all currently added equations.
     *
     * @method removeAllEquations
     */
    Solver.prototype.removeAllEquations = function () {
        this.equations.length = 0;
    };
    ;
    /**
     * Gauss-Seidel solver.
     * @property GS
     * @type {Number}
     * @static
     */
    Solver.GS = 1;
    return Solver;
}(event_emitter_1.default));
exports.default = Solver;
