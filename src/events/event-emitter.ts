type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;


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

	private _listeners: {[name: string]: Function[]} = {};
	private _contexts: {[name: string]: object[]} = {};


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
	on ( type: string, listener: Function, context: object ): EventEmitter {
		
		if ( this._listeners[ type ] === undefined ) {
			this._listeners[ type ] = [];
			this._contexts[ type ] = [];
		}
		if ( this._listeners[ type ].indexOf( listener ) === - 1 ) {
			this._listeners[ type ].push( listener );
			this._contexts[ type ].push( context );
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
			this._contexts[ type ].splice( index, 1 );
		}
		return this;
	}

	/**
	 * Check if an event listener is added
	 * @method has
	 * @param  {String} type
	 * @param  {Function} listener
	 * @return {boolean}
	 */
	has ( type: string, listener?: Function): boolean {
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
		let listenerArray = this._listeners[ event.type ];
		let contextArray = this._contexts[ event.type ];
		if ( listenerArray !== undefined ) {
			event.target = this;

			// Need to copy the listener array, in case some listener was added/removed inside a listener
			let tmpListenerArray = [];
			let tmpContextArray = [];
			for (let i = 0, l = listenerArray.length; i < l; i++) {
				tmpListenerArray.push(listenerArray[i]);
				tmpContextArray.push(contextArray[i]);
			}
			for (let i = 0, l = listenerArray.length; i < l; i++) {
				let listener = listenerArray[ i ];
				let context = contextArray[ i ];
				listener.call( context, event );
			}
			
		}
		return this;
	}
}