//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import vec2 from "../math/vec2";
import Ray from "./ray";

export default class AABB{

	lowerBound: Float32Array;
	upperBound: Float32Array;
	private tmp: Float32Array = vec2.create();

	/**
	 * Axis aligned bounding box class.
	 * @class AABB
	 * @constructor
	 * @param {Object}  [options]
	 * @param {Array}   [options.upperBound]
	 * @param {Array}   [options.lowerBound]
	 * @example
	 *     let aabb = new AABB({
	 *         upperBound: [1, 1],
	 *         lowerBound: [-1, -1]
	 *     });
	 */
	constructor(upperBound: Float32Array|null, lowerBound: Float32Array|null){

		/**
		 * The lower bound of the bounding box.
		 * @property lowerBound
		 * @type {Array}
		 */
		this.lowerBound = lowerBound ? vec2.clone(lowerBound) : vec2.create();

		/**
		 * The upper bound of the bounding box.
		 * @property upperBound
		 * @type {Array}
		 */
		this.upperBound = upperBound ? vec2.clone(upperBound) : vec2.create();
	}


	/**
	 * Set the AABB bounds from a set of points, transformed by the given position and angle.
	 * @method setFromPoints
	 * @param {Array} points An array of vec2's.
	 * @param {Array} position
	 * @param {number} [angle=0]
	 * @param {number} [skinSize=0] Some margin to be added to the AABB.
	 */
	setFromPoints(points: Float32Array[], position: Float32Array, angle: f32, skinSize: f32 = 0): void{
		let l = this.lowerBound,
			u = this.upperBound;

		angle = angle || 0;

		// Set to the first point
		if(angle !== 0){
			vec2.rotate(l, points[0], angle);
		} else {
			vec2.copy(l, points[0]);
		}
		vec2.copy(u, l);

		// Compute cosines and sines just once
		let cosAngle = Mathf.cos(angle),
			sinAngle = Mathf.sin(angle);
		for(let i: i32 = 1; i<points.length; i++){
			let p = points[i];

			if(angle !== 0){
				let x = p[0],
					y = p[1];
				this.tmp[0] = cosAngle * x -sinAngle * y;
				this.tmp[1] = sinAngle * x +cosAngle * y;
				p = this.tmp;
			}

			for(let j: i32 = 0; j < 2; j++){
				if(p[j] > u[j]){
					u[j] = p[j];
				}
				if(p[j] < l[j]){
					l[j] = p[j];
				}
			}
		}

		// Add offset
		if(position){
			vec2.add(l, l, position);
			vec2.add(u, u, position);
		}

		if(skinSize){
			l[0] -= skinSize;
			l[1] -= skinSize;
			u[0] += skinSize;
			u[1] += skinSize;
		}
	}

	/**
	 * Copy bounds from an AABB to this AABB
	 * @method copy
	 * @param  {AABB} aabb
	 */
	copy(aabb: AABB): void{
		vec2.copy(this.lowerBound, aabb.lowerBound);
		vec2.copy(this.upperBound, aabb.upperBound);
	}

	/**
	 * Extend this AABB so that it covers the given AABB too.
	 * @method extend
	 * @param  {AABB} aabb
	 */
	extend(aabb: AABB): void{
		let lower = this.lowerBound,
			upper = this.upperBound;

		// Loop over x and y
		let i = 2;
		while(i--){
			// Extend lower bound
			let l = aabb.lowerBound[i];
			if(lower[i] > l){
				lower[i] = l;
			}

			// Upper
			let u = aabb.upperBound[i];
			if(upper[i] < u){
				upper[i] = u;
			}
		}
	}

	/**
	 * Returns true if the given AABB overlaps this AABB.
	 * @method overlaps
	 * @param  {AABB} aabb
	 * @return {boolean}
	 */
	overlaps(aabb: AABB): boolean{
		let l1 = this.lowerBound,
			u1 = this.upperBound,
			l2 = aabb.lowerBound,
			u2 = aabb.upperBound;

		//      l2        u2
		//      |---------|
		// |--------|
		// l1       u1

		return ((l2[0] <= u1[0] && u1[0] <= u2[0]) || (l1[0] <= u2[0] && u2[0] <= u1[0])) &&
			((l2[1] <= u1[1] && u1[1] <= u2[1]) || (l1[1] <= u2[1] && u2[1] <= u1[1]));
	};

	/**
	 * @method containsPoint
	 * @param  {Array} point
	 * @return {boolean}
	 */
	containsPoint(point: Float32Array): boolean{
		let l = this.lowerBound,
			u = this.upperBound;
		return l[0] <= point[0] && point[0] <= u[0] && l[1] <= point[1] && point[1] <= u[1];
	}

	/**
	 * Check if the AABB is hit by a ray.
	 * @method overlapsRay
	 * @param  {Ray} ray
	 * @return {number} -1 if no hit, a number between 0 and 1 if hit, indicating the position between the "from" and "to" points.
	 * @example
	 *     let aabb = new AABB({
	 *         upperBound: [1, 1],
	 *         lowerBound: [-1, -1]
	 *     });
	 *     let ray = new Ray({
	 *         from: [-2, 0],
	 *         to: [0, 0]
	 *     });
	 *     let fraction = aabb.overlapsRay(ray); // fraction == 0.5
	 */
	overlapsRay(ray: Ray): f32{

		// ray.direction is unit direction vector of ray
		let dirFracX: f32 = 1.0 / ray.direction[0];
		let dirFracY: f32 = 1.0 / ray.direction[1];

		// this.lowerBound is the corner of AABB with minimal coordinates - left bottom, rt is maximal corner
		let from = ray.from;
		let lowerBound: Float32Array = this.lowerBound;
		let upperBound: Float32Array = this.upperBound;
		let t1: f32 = (lowerBound[0] - from[0]) * dirFracX;
		let t2: f32 = (upperBound[0] - from[0]) * dirFracX;
		let t3: f32 = (lowerBound[1] - from[1]) * dirFracY;
		let t4: f32 = (upperBound[1] - from[1]) * dirFracY;

		let tmin: f32 = Mathf.max(Mathf.min(t1, t2), Mathf.min(t3, t4));
		let tmax: f32 = Mathf.min(Mathf.max(t1, t2), Mathf.max(t3, t4));

		// if tmax < 0, ray (line) is intersecting AABB, but whole AABB is behing us
		if (tmax < 0){
			//t = tmax;
			return -1;
		}

		// if tmin > tmax, ray doesn't intersect AABB
		if (tmin > tmax){
			//t = tmax;
			return -1;
		}

		return tmin / ray.length;
	}
}