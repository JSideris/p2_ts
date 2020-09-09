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
var pool_1 = __importDefault(require("./pool"));
var contact_equation_1 = __importDefault(require("../equations/contact-equation"));
var ContactEquationPool = /** @class */ (function (_super) {
    __extends(ContactEquationPool, _super);
    /**
     * @class
     */
    function ContactEquationPool(options) {
        return _super.call(this, options) || this;
    }
    /**
     * @method create
     * @return {ContactEquation}
     */
    ContactEquationPool.prototype.create = function () {
        return new contact_equation_1.default();
    };
    /**
     * @method destroy
     * @param {ContactEquation} equation
     * @return {ContactEquationPool}
     */
    ContactEquationPool.prototype.destroy = function (equation) {
        equation.bodyA = equation.bodyB = null;
        return this;
    };
    return ContactEquationPool;
}(pool_1.default));
exports.default = ContactEquationPool;
