
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
export default class EventEmitter{

	private tmpArray: Function[] = [];
	private _listeners: {[name: string]: Function[]} = {};


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
	// TODO: try to remove this unknown type. Might cause problems with webassembly.
	on ( type: string, listener: Function, context: object ): EventEmitter {
		//listener.context = context || this; // Not sure what this does. Maybe nothing.
		
		if ( this._listeners[ type ] === undefined ) {
			this._listeners[ type ] = [];
		}
		if ( this._listeners[ type ].indexOf( listener ) === - 1 ) {
			this._listeners[ type ].push( listener );
		}
		return this;
	}

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
	off ( type: string, listener: Function ): EventEmitter {
		if(!this._listeners || !this._listeners[type]){
			return this;
		}
		var index = this._listeners[ type ].indexOf( listener );
		if ( index !== - 1 ) {
			this._listeners[ type ].splice( index, 1 );
		}
		return this;
	}

	/**
	 * Check if an event listener is added
	 * @method has
	 * @param  {String} type
	 * @param  {Function} listener
	 * @return {Boolean}
	 */
	has ( type: string, listener: Function): boolean {
		if ( this._listeners === undefined ){
			return false;
		}
		var listeners = this._listeners;
		if(listener){
			if ( listeners[ type ] !== undefined && listeners[ type ].indexOf( listener ) !== - 1 ) {
				return true;
			}
		} else {
			if ( listeners[ type ] !== undefined ) {
				return true;
			}
		}

		return false;
	}

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
	emit ( event: any ): EventEmitter {
		if ( this._listeners === undefined ){
			return this;
		}
		var listeners = this._listeners;
		var listenerArray = listeners[ event.type ];
		if ( listenerArray !== undefined ) {
			event.target = this;

			// Need to copy the listener array, in case some listener was added/removed inside a listener
			for (var i = 0, l = listenerArray.length; i < l; i++) {
				this.tmpArray[i] = listenerArray[i];
			}
			for (var i = 0, l = tmpArray.length; i < l; i++) {
				var listener = this.tmpArray[ i ];
				//listener.call( listener.context, event ); // TODO: had to comment this because context doesn't exist.
				listener.call( null, event );
			}
			tmpArray.length = 0;
		}
		return this;
	}
}