"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
/**
 * Base class for objects that dispatches events.
 * @class EventEmitter
 * @example
 *     var emitter = new EventEmitter();
 *     emitter.on('myEvent', function(evt){
 *         console.log(evt.message);
 *     });
 *     emitter.emit({
 *         type: 'myEvent',
 *         message: 'Hello world!'
 *     });
 */
var EventEmitter = /** @class */ (function () {
    function EventEmitter() {
        this._listeners = {};
        this._contexts = {};
    }
    /**
     * Add an event listener
     * @method on
     * @param  {String} type
     * @param  {Function} listener
     * @return {EventEmitter} The self object, for chainability.
     * @example
     *     emitter.on('myEvent', function(evt){
     *         console.log('myEvt was triggered!');
     *     });
     */
    EventEmitter.prototype.on = function (type, listener, context) {
        if (this._listeners[type] === undefined) {
            this._listeners[type] = [];
            this._contexts[type] = [];
        }
        if (this._listeners[type].indexOf(listener) === -1) {
            this._listeners[type].push(listener);
            this._contexts[type].push(context);
        }
        return this;
    };
    /**
     * Remove an event listener
     * @method off
     * @param  {String} type
     * @param  {Function} listener
     * @return {EventEmitter} The self object, for chainability.
     * @example
     *     emitter.on('myEvent', handler); // Add handler
     *     emitter.off('myEvent', handler); // Remove handler
     */
    EventEmitter.prototype.off = function (type, listener) {
        if (!this._listeners || !this._listeners[type]) {
            return this;
        }
        var index = this._listeners[type].indexOf(listener);
        if (index !== -1) {
            this._listeners[type].splice(index, 1);
            this._contexts[type].splice(index, 1);
        }
        return this;
    };
    /**
     * Check if an event listener is added
     * @method has
     * @param  {String} type
     * @param  {Function} listener
     * @return {Boolean}
     */
    EventEmitter.prototype.has = function (type, listener) {
        if (this._listeners === undefined) {
            return false;
        }
        var listeners = this._listeners;
        if (listener) {
            if (listeners[type] !== undefined && listeners[type].indexOf(listener) !== -1) {
                return true;
            }
        }
        else {
            if (listeners[type] !== undefined) {
                return true;
            }
        }
        return false;
    };
    /**
     * Emit an event.
     * @method emit
     * @param  {Object} event
     * @param  {String} event.type
     * @return {EventEmitter} The self object, for chainability.
     * @example
     *     emitter.emit({
     *         type: 'myEvent',
     *         customData: 123
     *     });
     */
    // TODO: the unknown type here is disturbing.
    EventEmitter.prototype.emit = function (event) {
        if (this._listeners === undefined) {
            return this;
        }
        var listenerArray = this._listeners[event.type];
        var contextArray = this._contexts[event.type];
        if (listenerArray !== undefined) {
            event.target = this;
            // Need to copy the listener array, in case some listener was added/removed inside a listener
            var tmpListenerArray = [];
            var tmpContextArray = [];
            for (var i = 0, l = listenerArray.length; i < l; i++) {
                tmpListenerArray.push(listenerArray[i]);
                tmpContextArray.push(contextArray[i]);
            }
            for (var i = 0, l = listenerArray.length; i < l; i++) {
                var listener = listenerArray[i];
                var context = contextArray[i];
                listener.call(context, event);
            }
        }
        return this;
    };
    return EventEmitter;
}());
exports.default = EventEmitter;
