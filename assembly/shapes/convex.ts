//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Shape from "./shape";
import { ShapeOptions } from "./shape";

import AABB from "../collision/aabb";
import RaycastResult from "../collision/raycast-result";
import Ray from "../collision/ray";
import vec2 from "../math/vec2";

import {Triangulate} from "../math/polyk";

var updateCenterOfMass_centroid = vec2.create(),
	updateCenterOfMass_centroid_times_mass = vec2.create(),
	updateCenterOfMass_a = vec2.create(),
	updateCenterOfMass_b = vec2.create(),
	updateCenterOfMass_c = vec2.create();

var tmpVec1 = vec2.create();

var intersectConvex_rayStart = vec2.create();
var intersectConvex_rayEnd = vec2.create();
var intersectConvex_normal = vec2.create();

var pic_r0 = vec2.create();
var pic_r1 = vec2.create();

var tmpVec2 = vec2.create();
var worldAxis = tmpVec2;

export class ConvexOptions extends ShapeOptions{}

export default class Convex extends Shape {

	// TODO: this would be more efficient if I didn't use float32array[]s. Just convert to a big float32array with double the size.
	// Let's get this working first then switch it.
	
	/**
	 * Vertices defined in the local frame.
	 * @property vertices
	 * @type {Array}
	 */
	public vertices: Float32Array[] = [];

	/**
	 * Edge normals defined in the local frame, pointing out of the shape.
	 * @property normals
	 * @type {Array}
	 */
	public normals: Float32Array[] = [];

	/**
	 * Triangulated version of this convex. The structure is Array of 3-Arrays, and each subarray contains 3 integers, referencing the vertices.
	 * @property triangles
	 * @type {Array}
	 */
	public triangles: Uint16Array[] = [];

	/**
	 * The center of mass of the Convex
	 * @property centerOfMass
	 * @type {Array}
	 */
	public centerOfMass: Float32Array = vec2.create();

	/**
	 * Convex shape class.
	 * @class Convex
	 * @constructor
	 * @extends Shape
	 * @param {object} [options] (Note that this options object will be passed on to the {{#crossLink "Shape"}}{{/crossLink}} constructor.)
	 * @param {Array} [options.vertices] An array of vertices that span this shape. Vertices are given in counter-clockwise (CCW) direction.
	 * @example
	 *     let body = new Body({ mass: 1 });
	 *     let vertices = [[-1,-1], [1,-1], [1,1], [-1,1]];
	 *     let convexShape = new Convex({
	 *         vertices: vertices
	 *     });
	 *     body.addShape(convexShape);
	 */
	constructor(type: u16, vertices: Array<Float32Array>|null, options: ShapeOptions|null){
		super(type || Shape.CONVEX, options); 

		// Copy the verts
		let newVertices: Array<Float32Array>;
		if(vertices != null) newVertices = vertices;
		else newVertices = [];
		this.vertices = [];
		this.normals = [];
		for(let i: i32 = 0; i < newVertices.length; i++){
			this.vertices.push(vec2.clone(newVertices[i]));
			this.normals.push(vec2.create());
		}

		// These are called in the shape constructor, but need to call again here because verts weren't set up yet!
		this.updateBoundingRadius();
		this.updateArea();

		this.updateNormals();

		this.triangles = [];

		if(this.vertices.length){
			this.updateTriangles();
			this.updateCenterOfMass();
		}

		/**
		 * The bounding radius of the convex
		 * @property boundingRadius
		 * @type {Number}
		 */
		this.boundingRadius = 0;

		this.updateBoundingRadius();
		this.updateArea();
		if(this.area < 0){
			throw new Error("Convex vertices must be given in counter-clockwise winding.");
		}
	}

	
	updateNormals(): void{
		let vertices = this.vertices;
		let normals = this.normals;

		for(let i: i32 = 0; i < vertices.length; i++){
			let worldPoint0 = vertices[i];
			let worldPoint1 = vertices[(i+1) % vertices.length];

			let normal = normals[i];
			vec2.subtract(normal, worldPoint1, worldPoint0);

			// Get normal - just rotate 90 degrees since vertices are given in CCW
			vec2.rotate90cw(normal, normal);
			vec2.normalize(normal, normal);
		}
	}

	/**
	 * Project a Convex onto a world-oriented axis
	 * @method projectOntoAxis
	 * @static
	 * @param  {Array} offset
	 * @param  {Array} localAxis
	 * @param  {Array} result
	 */
	projectOntoLocalAxis(localAxis: Float32Array, result: Float32Array): void{

		let max: f32 = -Infinity,
			min: f32 = Infinity,
			v: Float32Array|null,
			value: f32 = 0;
		//localAxis = tmpVec1; // TODO: this makes no sense. However, it comes from source: https://github.com/schteppe/p2.js/blob/master/src/shapes/Convex.js#L122

		// Get projected position of all vertices
		for(let i: u16 = 0; i < (this.vertices.length as u16); i++){
			v = this.vertices[i];
			value = vec2.dot(v, localAxis);
			if(value > max){
				max = value;
			}
			if(value < min){
				min = value;
			}
		}

		if(min > max){
			let t = min;
			min = max;
			max = t;
		}

		vec2.set(result, min, max);
	}

	ConvexprojectOntoWorldAxis(localAxis: Float32Array, shapeOffset: Float32Array, shapeAngle: f32, result: Float32Array): void{

		this.projectOntoLocalAxis(localAxis, result);

		// Project the position of the body onto the axis - need to add this to the result
		if(shapeAngle !== 0){
			vec2.rotate(worldAxis, localAxis, shapeAngle);
		} else {
			worldAxis = localAxis;
		}
		let offset = vec2.dot(shapeOffset, worldAxis);

		vec2.set(result, result[0] + offset, result[1] + offset);
	}


	/**
	 * Update the .triangles property
	 * @method updateTriangles
	 */
	updateTriangles(): void{

		this.triangles.length = 0;

		// Rewrite on polyk notation, array of numbers
		let polykVerts:f32[] = [];
		for(let i:u16=0; i < (this.vertices.length as u16); i++){
			let v = this.vertices[i];
			polykVerts.push(v[0]);
			polykVerts.push(v[1]);
		}

		// Triangulate
		let triangles = Triangulate(polykVerts);

		// Loop over all triangles, add their inertia contributions to I
		for(let i:u16=0; i < (triangles.length as u16); i+=3){
			let id1:u16 = triangles[i] as u16,
				id2:u16 = triangles[i+1] as u16,
				id3:u16 = triangles[i+2] as u16;

			// Add to triangles
			let T = new Uint16Array(3);
			T[0] = id1;
			T[1] = id2;
			T[2] = id3;
			this.triangles.push(T);
		}
	}

	/**
	 * Update the .centerOfMass property.
	 * @method updateCenterOfMass
	 */
	updateCenterOfMass(): void{


		let triangles = this.triangles,
				verts = this.vertices,
				cm = this.centerOfMass,
				centroid = updateCenterOfMass_centroid,
				a = updateCenterOfMass_a,
				b = updateCenterOfMass_b,
				c = updateCenterOfMass_c,
				centroid_times_mass = updateCenterOfMass_centroid_times_mass;

		vec2.set(cm,0,0);
		let totalArea: f32 = 0;

		for(let i: u16 = 0; i < (triangles.length as u16); i++){
			let t = triangles[i],
				va = verts[t[0]],
				vb = verts[t[1]],
				vc = verts[t[2]];

			vec2.centroid(centroid,va,vb,vc);

			// Get mass for the triangle (density=1 in this case)
			// http://Mathf.stackexchange.com/questions/80198/area-of-triangle-via-vectors
			let m = Convex.triangleArea(va,vb,vc);
			totalArea += m;

			// Add to center of mass
			vec2.scale(centroid_times_mass, centroid, m);
			vec2.add(cm, cm, centroid_times_mass);
		}

		vec2.scale(cm,cm,1/totalArea);
	}

	/**
	 * Compute the moment of inertia of the Convex.
	 * @method computeMomentOfInertia
	 * @return {Number}
	 * @see http://www.gamedev.net/topic/342822-moment-of-inertia-of-a-polygon-2d/
	 */
	computeMomentOfInertia(): f32{
		let denom: f32 = 0.0,
			numer: f32 = 0.0,
			N: i32 = this.vertices.length;
		for(let j: i32 = N-1, i = 0; i < N; j = i, i ++){
			let p0 = this.vertices[j];
			let p1 = this.vertices[i];
			let a = Mathf.abs(vec2.crossLength(p0,p1));
			let b = vec2.dot(p1,p1) + vec2.dot(p1,p0) + vec2.dot(p0,p0);
			denom += a * b;
			numer += a;
		}
		return (1.0 / 6.0) * (denom / numer);
	}

	/**
	 * Updates the .boundingRadius property
	 * @method updateBoundingRadius
	 */
	updateBoundingRadius(): f32{
		let verts = this.vertices,
			r2: f32 = 0;
		if(!verts || verts.length == 0) return 0;
		for(let i:u16 = 0; i!==verts.length; i++){
			let l2: f32 = vec2.squaredLength(verts[i]);
			if(l2 > r2){
				r2 = l2;
			}
		}

		this.boundingRadius = Mathf.sqrt(r2);
		
		return this.boundingRadius;
	}

	/**
	 * Get the area of the triangle spanned by the three points a, b, c. The area is positive if the points are given in counter-clockwise order, otherwise negative.
	 * @static
	 * @method triangleArea
	 * @param {Array} a
	 * @param {Array} b
	 * @param {Array} c
	 * @return {Number}
	 * @deprecated
	 */
	static triangleArea(a: Float32Array, b: Float32Array, c: Float32Array): f32{
		return (((b[0] - a[0])*(c[1] - a[1]))-((c[0] - a[0])*(b[1] - a[1]))) * 0.5;
	}

	/**
	 * Update the .area
	 * @method updateArea
	 */
	updateArea(): f32{
		if(!this.vertices) return 0;
		this.updateTriangles();
		this.area = 0;

		let triangles = this.triangles,
			verts = this.vertices;
		for(let i: i32 = 0; i!==triangles.length; i++){
			let t = triangles[i],
				a = verts[t[0]],
				b = verts[t[1]],
				c = verts[t[2]];

			// Get mass for the triangle (density=1 in this case)
			let m = Convex.triangleArea(a,b,c);
			this.area += m;
		}

		return this.area;
	}

	/**
	 * @method computeAABB
	 * @param  {AABB}   out
	 * @param  {Array}  position
	 * @param  {Number} angle
	 * @todo: approximate with a local AABB?
	 */
	computeAABB(out: AABB, position: Float32Array, angle: f32): void{
		out.setFromPoints(this.vertices, position, angle, 0);
	}


	/**
	 * @method raycast
	 * @param  {RaycastResult} result
	 * @param  {Ray} ray
	 * @param  {array} position
	 * @param  {number} angle
	 */
	raycast(result: RaycastResult, ray: Ray, position: Float32Array, angle: f32): void{
		let rayStart = intersectConvex_rayStart;
		let rayEnd = intersectConvex_rayEnd;
		let normal = intersectConvex_normal;
		let vertices = this.vertices;

		// Transform to local shape space
		vec2.toLocalFrame(rayStart, ray.from, position, angle);
		vec2.toLocalFrame(rayEnd, ray.to, position, angle);

		let n = vertices.length;

		for (let i = 0; i < n && !result.shouldStop(ray); i++) {
			let q1 = vertices[i];
			let q2 = vertices[(i+1) % n];
			let delta = vec2.getLineSegmentsIntersectionFraction(rayStart, rayEnd, q1, q2);

			if(delta >= 0){
				vec2.subtract(normal, q2, q1);
				vec2.rotate(normal, normal, -Mathf.PI / 2 + angle);
				vec2.normalize(normal, normal);
				ray.reportIntersection(result, delta, normal, i);
			}
		}
	}

	pointTest(localPoint: Float32Array): boolean{

		let r0: Float32Array = pic_r0,
			r1: Float32Array = pic_r1,
			verts: Float32Array[] = this.vertices,
			lastCross: f32 = -1,
			numVerts: u16 = verts.length as u16;

		for(let i: u16 = 0; i < numVerts + 1; i++){
			let v0 = verts[i % numVerts],
				v1 = verts[(i + 1) % numVerts];

			vec2.subtract(r0, v0, localPoint);
			vec2.subtract(r1, v1, localPoint);

			let cross: f32 = vec2.crossLength(r0,r1);

			if(lastCross === -1){
				lastCross = cross;
			}

			// If we got a different sign of the distance vector, the point is out of the polygon
			if(cross * lastCross < 0){
				return false;
			}
			lastCross = cross;
		}
		return true;
	}
}