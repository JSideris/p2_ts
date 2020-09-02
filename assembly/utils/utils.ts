/* global P2_ARRAY_TYPE */

/**
 * Misc utility functions
 */
class Utils{

	/**
	 * Append the values in array b to the array a. See <a href="http://stackoverflow.com/questions/1374126/how-to-append-an-array-to-an-existing-javascript-array/1374131#1374131">this</a> for an explanation.
	 * @method appendArray
	 * @static
	 * @param  {Array} a
	 * @param  {Array} b
	 */
	appendArray(a:Array<any>,b:Array<any>){
		for (var i = 0, len = b.length; i !== len; ++i) {
			a.push(b[i]);
		}
	}

	/**
	 * Garbage free Array.splice(). Does not allocate a new array.
	 * @method splice
	 * @static
	 * @param  {Array} array
	 * @param  {Number} index
	 * @param  {Number} howmany
	 */
	splice(array: Array<any>,index: u32,howmany: u32){
		howmany = howmany || 1;
		for (var i=index, len=array.length-howmany; i < len; i++){
			array[i] = array[i + howmany];
		}
		array.length = len;
	}

	/**
	 * Remove an element from an array, if the array contains the element.
	 * @method arrayRemove
	 * @static
	 * @param  {Array} array
	 * @param  {Number} element
	 */
	arrayRemove(array: Array<any>, element: any){
		var idx = array.indexOf(element);
		if(idx!==-1){
			this.splice(array, idx, 1);
		}
	}

	/**
	 * Extend an object with the properties of another
	 * @static
	 * @method extend
	 * @param  {object} a
	 * @param  {object} b
	 */
	extend(a: any,b: any){
		for(var key in b){
			a[key] = b[key];
		}
	}

	/**
	 * Shallow clone an object. Returns a new object instance with the same properties as the input instance.
	 * @static
	 * @method shallowClone
	 * @param  {object} obj
	 */
	shallowClone(obj: any){ // Might not be used anymore.
		var newObj = {};
		this.extend(newObj, obj);
		return newObj;
	}

	// /**
	//  * Extend an options object with default values.
	//  * @deprecated Not used internally, will be removed.
	//  * @static
	//  * @method defaults
	//  * @param  {object} options The options object. May be falsy: in this case, a new object is created and returned.
	//  * @param  {object} defaults An object containing default values.
	//  * @return {object} The modified options object.
	//  */
	// defaults(options, defaults){
	// 	console.warn('Utils.defaults is deprecated.');
	// 	options = options || {};
	// 	for(var key in defaults){
	// 		if(!(key in options)){
	// 			options[key] = defaults[key];
	// 		}
	// 	}
	// 	return options;
	// }
}

export default new Utils();