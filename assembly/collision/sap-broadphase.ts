//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Broadphase from "./broadphase";
import World from "../world/world";
import Body from "../objects/body";
import AABB from "./aabb";
import Utils from "../utils/utils";

// TODO: this appears to be a bubble sort. We could probably do better.
function sortAxisList(a: Body[], axisIndex: u32): Body[]{
	for(var i=1, l=a.length; i<l; i++) { // Why not i=0?
		var v = a[i];
		for(var j=i - 1;j>=0;j--) {
			if(a[j].aabb.lowerBound[axisIndex] <= v.aabb.lowerBound[axisIndex]){
				break;
			}
			a[j+1] = a[j];
		}
		a[j+1] = v;
	}
	return a;
}

export default class SAPBroadphase extends Broadphase{
	/**
	 * List of bodies currently in the broadphase.
	 * @property axisList
	 * @type {Array}
	 */
	axisList: Body[];
	/**
	 * The axis to sort along. 0 means x-axis and 1 y-axis. If your bodies are more spread out over the X axis, set axisIndex to 0, and you will gain some performance.
	 * @property axisIndex
	 * @type {Number}
	 */
	axisIndex: u32;
	private _addBodyHandler: (e: any) => void;
	private _removeBodyHandler: (e: any) => void;

	/**
	 * Sweep and prune broadphase along one axis.
	 *
	 * @class SAPBroadphase
	 * @constructor
	 * @extends Broadphase
	 */
	constructor(){
		super(Broadphase.SAP);

		this.axisList = [];

		this.axisIndex = 0;

		this._addBodyHandler = (e) => {
			this.axisList.push(e.body);
		};

		this._removeBodyHandler = (e) => {
			// Remove from list
			var idx = this.axisList.indexOf(e.body);
			if(idx !== -1){
				this.axisList.splice(idx,1);
			}
		};
	}

	/**
	 * Change the world
	 * @method setWorld
	 * @param {World} world
	 */
	setWorld(world: World): void{
		// Clear the old axis array
		this.axisList.length = 0;

		// Add all bodies from the new world
		Utils.appendArray(this.axisList, world.bodies);

		// Remove old handlers, if any
		world
			.off("addBody",this._addBodyHandler)
			.off("removeBody",this._removeBodyHandler);

		// Add handlers to update the list of bodies.
		// TODO: now that I've added context, we can test moving those inline functions to proper private methods.
		world.on("addBody",this._addBodyHandler, this)
			.on("removeBody",this._removeBodyHandler, this);

		this.world = world;
	};

	sortList(): void{
		var bodies = this.axisList,
		axisIndex = this.axisIndex;

		// Sort the lists
		sortAxisList(bodies, axisIndex);
	};

	/**
	 * Get the colliding pairs
	 * @method getCollisionPairs
	 * @param  {World} world
	 * @return {Array}
	 */
	getCollisionPairs(/*world*/): Array<Body>{
		var bodies = this.axisList,
			result = this.result,
			axisIndex = this.axisIndex;

		result.length = 0;

		// Update all AABBs if needed
		var l = bodies.length;
		while(l--){
			var b = bodies[l];
			if(b.aabbNeedsUpdate){
				b.updateAABB();
			}
		}

		// Sort the lists
		this.sortList();

		// Look through the X list
		for(var i=0, N=bodies.length|0; i!==N; i++){
			var bi = bodies[i];

			for(var j=i+1; j<N; j++){
				var bj = bodies[j];

				// Bounds overlap?
				var overlaps = (bj.aabb.lowerBound[axisIndex] <= bi.aabb.upperBound[axisIndex]);
				if(!overlaps){
					break;
				}

				if(Broadphase.canCollide(bi,bj) && this.boundingVolumeCheck(bi,bj)){
					result.push(bi);
					result.push(bj);
				}
			}
		}

		return result;
	};

	/**
	 * Returns all the bodies within an AABB.
	 * @method aabbQuery
	 * @param  {World} world
	 * @param  {AABB} aabb
	 * @param {array} result An array to store resulting bodies in.
	 * @return {array}
	 * @todo since the list is sorted, optimization can be done
	 */
	aabbQuery(world: World, aabb: AABB, result: Body[]): Body[]{
		result = result || [];

		this.sortList();

		var axisList = this.axisList;
		for(var i = 0; i < axisList.length; i++){
			var b = axisList[i];

			if(b.aabbNeedsUpdate){
				b.updateAABB();
			}

			if(b.aabb.overlaps(aabb)){
				result.push(b);
			}
		}

		return result;
	};
}