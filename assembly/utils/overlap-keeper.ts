import TupleDictionary from "./tuple-dictionary";
import OverlapKeeperRecordPool from "./overlap-keeper-record-pool";
import Body from "../objects/body";
import Shape from "../shapes/shape";


export default class OverlapKeeper{
	overlappingShapesLastState: TupleDictionary;
	overlappingShapesCurrentState: TupleDictionary;
	recordPool: OverlapKeeperRecordPool;
	tmpDict: TupleDictionary;
	tmpArray1: never[];

	/**
	 * Keeps track of overlaps in the current state and the last step state.
	 * @class OverlapKeeper
	 * @constructor
	 */
	constructor() {
		this.overlappingShapesLastState = new TupleDictionary();
		this.overlappingShapesCurrentState = new TupleDictionary();
		this.recordPool = new OverlapKeeperRecordPool({ size: 16 });
		this.tmpDict = new TupleDictionary();
		this.tmpArray1 = [];
	}

	/**
	 * Ticks one step forward in time. This will move the current overlap state to the "old" overlap state, and create a new one as current.
	 * @method tick
	 */
	tick() {
		var last = this.overlappingShapesLastState;
		var current = this.overlappingShapesCurrentState;

		// Save old objects into pool
		var l = last.keys.length;
		while(l--){
			var key = last.keys[l];
			var lastObject = last.getByKey(key);
			if(lastObject){
				// The record is only used in the "last" dict, and will be removed. We might as well pool it.
				this.recordPool.release(lastObject);
			}
		}

		// Clear last object
		last.reset();

		// Transfer from new object to old
		last.copy(current);

		// Clear current object
		current.reset();
	}

	/**
	 * @method setOverlapping
	 * @param {Body} bodyA
	 * @param {Body} shapeA
	 * @param {Body} bodyB
	 * @param {Body} shapeB
	 */
	setOverlapping(bodyA: Body, shapeA: Shape, bodyB: Body, shapeB: Shape) {
		var current = this.overlappingShapesCurrentState;

		// Store current contact state
		if(!current.get(shapeA.id, shapeB.id)){
			var data = this.recordPool.get();
			data.set(bodyA, shapeA, bodyB, shapeB);
			current.set(shapeA.id, shapeB.id, data);
		}
	}

	getNewOverlaps(result: Array<any>): Array<any>{
		return this.getDiff(this.overlappingShapesLastState, this.overlappingShapesCurrentState, result);
	}

	getEndOverlaps(result: Array<any>): Array<any>{
		return this.getDiff(this.overlappingShapesCurrentState, this.overlappingShapesLastState, result);
	}

	/**
	 * Checks if two bodies are currently overlapping.
	 * @method bodiesAreOverlapping
	 * @param  {Body} bodyA
	 * @param  {Body} bodyB
	 * @return {boolean}
	 */
	bodiesAreOverlapping(bodyA: Body, bodyB: Body): boolean{
		var current = this.overlappingShapesCurrentState;
		var l = current.keys.length;
		while(l--){
			var key = current.keys[l];
			var data = current.data[key];
			if((data.bodyA === bodyA && data.bodyB === bodyB) || data.bodyA === bodyB && data.bodyB === bodyA){
				return true;
			}
		}
		return false;
	}

	getDiff(dictA: TupleDictionary, dictB: TupleDictionary, result: Array<any>): Array<any>{
		var result = result || [];
		var last = dictA;
		var current = dictB;

		result.length = 0;

		var l = current.keys.length;
		while(l--){
			var key = current.keys[l];
			var data = current.data[key];

			if(!data){
				throw new Error('Key '+key+' had no data!');
			}

			var lastData = last.data[key];
			if(!lastData){
				// Not overlapping in last state, but in current.
				result.push(data);
			}
		}

		return result;
	}

	isNewOverlap(shapeA: Shape, shapeB: Shape): boolean{
		var last = this.overlappingShapesLastState;
		var current = this.overlappingShapesCurrentState;
		// Not in last but in new
		return !last.get(shapeA.id, shapeB.id) && !!current.get(shapeA.id, shapeB.id);
	}

	getNewBodyOverlaps(result: Array<any>): Array<any>{
		this.tmpArray1.length = 0;
		var overlaps = this.getNewOverlaps(this.tmpArray1);
		return this.getBodyDiff(overlaps, result);
	}

	getEndBodyOverlaps(result: Array<any>): Array<any>{
		this.tmpArray1.length = 0;
		var overlaps = this.getEndOverlaps(this.tmpArray1);
		return this.getBodyDiff(overlaps, result);
	}

	getBodyDiff(overlaps: Array<any>, result: Array<any>){
		result = result || [];
		var accumulator = this.tmpDict;

		var l = overlaps.length;

		while(l--){
			var data = overlaps[l];

			// Since we use body id's for the accumulator, these will be a subset of the original one
			accumulator.set(data.bodyA.id|0, data.bodyB.id|0, data);
		}

		l = accumulator.keys.length;
		while(l--){
			var data = accumulator.getByKey(accumulator.keys[l]);
			if(data){
				result.push(data.bodyA);
				result.push(data.bodyB);
			}
		}

		accumulator.reset();

		return result;
	}
}