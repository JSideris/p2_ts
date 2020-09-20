//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Broadphase from "./broadphase";
import World from "../world/world";
import { RemoveBodyEvent } from "../world/world";
import { AddBodyEvent } from "../world/world";
import Body from "../objects/body";
import AABB from "./aabb";
import Utils from "../utils/utils";
import { EventArgument } from "../events/event-emitter";

// TODO: this appears to be a bubble sort. We could probably do better.
function sortAxisList(a: Body[], axisIndex: u32): Body[]{
	for(let i: u16 = 1, l: u16 = (a.length as u16); i < l; i++) { // Why not i=0?
		let v = a[i];
		let j: i32 = i - 1;
		for(; j >= 0; j--) {
			if(a[j].aabb.lowerBound[axisIndex] <= v.aabb.lowerBound[axisIndex]){
				break;
			}
			a[j + 1] = a[j];
		}
		a[j + 1] = v;
	}
	return a;
}

function _addBodyHandler(e: EventArgument): void{
	if(e instanceof AddBodyEvent && (e as AddBodyEvent).body){
		let sapB = (e as AddBodyEvent).sapBroadphase;
		if(sapB) sapB.axisList.push((e as AddBodyEvent).body!);
	}
}

function _removeBodyHandler(e: EventArgument): void{
	// Remove from list
	if(e instanceof RemoveBodyEvent && (e as RemoveBodyEvent).body){
		let sapB = (e as RemoveBodyEvent).sapBroadphase;
		if(sapB){
			let idx = sapB.axisList.indexOf((e as RemoveBodyEvent).body!);
			if(idx !== -1){
				sapB.axisList.splice(idx,1);
			}
		}
	}
}

export default class SAPBroadphase extends Broadphase{
	/**
	 * List of bodies currently in the broadphase.
	 * @property axisList
	 * @type {Array}
	 */
	axisList: Body[] = [];
	/**
	 * The axis to sort along. 0 means x-axis and 1 y-axis. If your bodies are more spread out over the X axis, set axisIndex to 0, and you will gain some performance.
	 * @property axisIndex
	 * @type {Number}
	 */
	axisIndex: i32 = 0;
	// private _addBodyHandler: (e: EventArgument) => void = (e: EventArgument)=>{};
	// private _removeBodyHandler: (e: EventArgument) => void = (e: EventArgument)=>{};

	/**
	 * Sweep and prune broadphase along one axis.
	 *
	 * @class SAPBroadphase
	 * @constructor
	 * @extends Broadphase
	 */
	constructor(){
		super(Broadphase.SAP);
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
			.off("addBody", _addBodyHandler)
			.off("removeBody", _removeBodyHandler);

		// Add handlers to update the list of bodies.
		// TODO: now that I've added context, we can test moving those inline functions to proper private methods.
		world.on("addBody", _addBodyHandler, this)
			.on("removeBody", _removeBodyHandler, this);

		this.world = world;
	};

	sortList(): void{
		let bodies = this.axisList,
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
	getCollisionPairs(/*world*/): Body[]{
		let bodies = this.axisList,
			result = this.result,
			axisIndex = this.axisIndex;

		result.length = 0;

		// Update all AABBs if needed
		let l: i32 = bodies.length;
		while(l--){
			let b = bodies[l];
			if(b.aabbNeedsUpdate){
				b.updateAABB();
			}
		}

		// Sort the lists
		this.sortList();

		// Look through the X list
		for(let i: u16=0, N: u16 = (bodies.length as u16); i < N; i++){
			let bi = bodies[i];

			for(let j: u16 = i + 1; j < N; j++){
				let bj = bodies[j];

				// Bounds overlap?
				let overlaps: boolean = (bj.aabb.lowerBound[axisIndex] <= bi.aabb.upperBound[axisIndex]);
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
	aabbQuery(aabb: AABB, result: Body[]): void{
		result = result || [];

		this.sortList();

		let axisList = this.axisList;
		for(let i: u16 = 0; i < (axisList.length as u16); i++){
			let b = axisList[i];

			if(b.aabbNeedsUpdate){
				b.updateAABB();
			}

			if(b.aabb.overlaps(aabb)){
				result.push(b);
			}
		}
	};
}