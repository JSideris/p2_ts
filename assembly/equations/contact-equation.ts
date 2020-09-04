import Body from "../objects/body";
import Equation from "./Equation";
import Shape from "../shapes/shape";
import vec2 from "../math/vec2";



function addSubSub(out:Float32Array, a:Float32Array, b:Float32Array, c:Float32Array, d:Float32Array){
	out[0] = a[0] + b[0] - c[0] - d[0];
	out[1] = a[1] + b[1] - c[1] - d[1];
}


var vi = vec2.create();
var vj = vec2.create();
var relVel = vec2.create();

export default class ContactEquation extends Equation{

		/**
		 * Vector from body i center of mass to the contact point.
		 * @property contactPointA
		 * @type {Array}
		 */
		contactPointA: Float32Array = vec2.create();
		penetrationVec: Float32Array = vec2.create();

		/**
		 * World-oriented vector from body A center of mass to the contact point.
		 * @property contactPointB
		 * @type {Array}
		 */
		contactPointB: Float32Array = vec2.create();

		/**
		 * The normal vector, pointing out of body i
		 * @property normalA
		 * @type {Array}
		 */
		normalA: Float32Array = vec2.create();

		/**
		 * The restitution to use (0=no bounciness, 1=max bounciness).
		 * @property restitution
		 * @type {Number}
		 */
		restitution: f32 = 0;

		/**
		 * This property is set to true if this is the first impact between the bodies (not persistant contact).
		 * @property firstImpact
		 * @type {Boolean}
		 * @readOnly
		 */
		firstImpact: boolean = false;

		/**
		 * The shape in body i that triggered this contact.
		 * @property shapeA
		 * @type {Shape}
		 */
		shapeA: Shape;

		/**
		 * The shape in body j that triggered this contact.
		 * @property shapeB
		 * @type {Shape}
		 */
		shapeB: Shape;

	/**
	 * Non-penetration constraint equation. Tries to make the contactPointA and contactPointB vectors coincide, while keeping the applied force repulsive.
	 *
	 * @class ContactEquation
	 * @constructor
	 * @extends Equation
	 * @param {Body} bodyA
	 * @param {Body} bodyB
	 */
	constructor(bodyA?: Body, bodyB?: Body){
		super(bodyA, bodyB, 0, Infinity);
	}

	computeB(a: f32, b: f32, h: f32){
		let bi = this.bodyA,
			bj = this.bodyB,
			ri = this.contactPointA,
			rj = this.contactPointB,
			xi = bi?.position ?? new Float32Array(2),
			xj = bj?.position ?? new Float32Array(2);

		let n = this.normalA,
			G = this.G;

		// Caluclate cross products
		let rixn = vec2.crossLength(ri,n),
			rjxn = vec2.crossLength(rj,n);

		// G = [-n -rixn n rjxn]
		G[0] = -n[0];
		G[1] = -n[1];
		G[2] = -rixn;
		G[3] = n[0];
		G[4] = n[1];
		G[5] = rjxn;


		// Compute iteration
		let GW, Gq;
		if(this.firstImpact && this.restitution !== 0){
			Gq = 0;
			GW = (1/b)*(1+this.restitution) * this.computeGW();
		} else {
			// Calculate q = xj+rj -(xi+ri) i.e. the penetration vector
			let penetrationVec = this.penetrationVec;
			addSubSub(penetrationVec,xj,rj,xi,ri);
			Gq = vec2.dot(n,penetrationVec) + this.offset;
			GW = this.computeGW();
		}

		let GiMf = this.computeGiMf();
		let B = - Gq * a - GW * b - h*GiMf;

		return B;
	};

	/**
	 * Get the relative velocity along the normal vector.
	 * @method getVelocityAlongNormal
	 * @return {number}
	 */
	getVelocityAlongNormal(): f32{


		this.bodyA && this.bodyA.getVelocityAtPoint(vi, this.contactPointA);
		this.bodyB && this.bodyB.getVelocityAtPoint(vj, this.contactPointB);

		vec2.subtract(relVel, vi, vj);

		return vec2.dot(this.normalA, relVel);
	};
}