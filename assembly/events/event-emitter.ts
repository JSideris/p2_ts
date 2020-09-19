//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;


export class EventArgument{
	type:string = "";
	target:EventEmitter|null = null;

	constructor(type: string){
		this.type = type;
	}
}

/**
 * Base class for Objects that dispatches events.
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

	//private _listeners: Map<string, Function[]> = new Map<string, Function[]>();
	private _listeners: Map<string, Array<(event:EventArgument)=>void>> = new Map<string, Array<(event:EventArgument)=>void>>();
	private _contexts: Map<string, Object[]> = new Map<string, Object[]>();

	constructor(){}

	/**
	 * Add an event listener
	 * @method on
	 * @param  {String} type
	 * @param  {Function} listener
	 * @return {EventEmitter} The self Object, for chainability.
	 * @example
	 *     emitter.on('myEvent', function(evt){
	 *         console.log('myEvt was triggered!');
	 *     });
	 */
	on ( type: string, listener: (event:EventArgument)=>void, context: Object ): EventEmitter {
		
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
	 * @return {EventEmitter} The self Object, for chainability.
	 * @example
	 *     emitter.on('myEvent', handler); // Add handler
	 *     emitter.off('myEvent', handler); // Remove handler
	 */
	off ( type: string, listener: (event:EventArgument)=>void ): EventEmitter {
		if(!this._listeners.has(type)){
			return this;
		}
		let listeners:Array<(event:EventArgument)=>void> = this._listeners.get(type);
		let index = listeners.indexOf( listener );
		if ( index !== - 1 ) {
			let contexts: Object[] = this._contexts.get(type);
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
	has ( type: string, listener: ((event:EventArgument)=>void)|null): boolean {

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
	 * @return {EventEmitter} The self Object, for chainability.
	 * @example
	 *     emitter.emit({
	 *         type: 'myEvent',
	 *         customData: 123
	 *     });
	 */
	emit ( event: EventArgument ): EventEmitter {
		//let listenerArray: ((event:EventArgument)=>void)[] = this._listeners.get( event.type );
		let listenerArray = this._listeners.get( event.type );
		let contextArray: Object[] = this._contexts.get( event.type );
			event.target = this;

		// Need to copy the listener array, in case some listener was added/removed inside a listener
		let tmpListenerArray: Array<(event:EventArgument)=>void> = [];
		let tmpContextArray: Object[] = [];
		for (let i: u16 = 0, l = listenerArray.length as u16; i < l; i++) {
			tmpListenerArray.push(listenerArray[i]);
			tmpContextArray.push(contextArray[i]);
		}
		for (let i: u16 = 0, l = listenerArray.length as u16; i < l; i++) {
			let listener: (event:EventArgument)=>void = listenerArray[ i ];
			let context: Object = contextArray[ i ];
			// listener.call( context, event );
			// callListener( context, listener, event );
			listener(event);
		}
			
		return this;
	}
}

// function callListener(context: Object, listener: (event:EventArgument)=>void, event: EventArgument):void{
// 	listener.call( context, event );
// }