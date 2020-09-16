//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;


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

	private _listeners: Map<string, Function[]> = new Map<string, Function[]>();
	private _contexts: Map<string, object[]> = new Map<string, object[]>();


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
		
		if ( !this._listeners.has( type )) {
			this._listeners.set( type , []);
			this._contexts.set( type , []);
		}
		let listeners = this._listeners.get( type );
		if ( listeners.indexOf( listener ) === -1 ) {
			let contexts = this._contexts.get( type );
			listeners.push( listener );
			contexts.push( context );
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
		if(!this._listeners.has(type)){
			return this;
		}
		let listeners = this._listeners.get(type);
		let index = listeners.indexOf( listener );
		if ( index !== - 1 ) {
			let contexts = this._contexts.get(type);
			listeners.splice( index, 1 );
			contexts.splice( index, 1 );
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
	has ( type: string, listener: Function|null): boolean {

		if(listener){
			if ( this._listeners.has( type ) && this._listeners.get( type ).indexOf( listener ) !== - 1 ) {
				return true;
			}
		}
		else{
			if(!this._listeners.has( type )) return true;
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
		let listenerArray: Function[] = this._listeners.get( event.type );
		let contextArray: object[] = this._contexts.get( event.type );
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
			
		return this;
	}
}