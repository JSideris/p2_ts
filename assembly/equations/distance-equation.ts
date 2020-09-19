import Equation from "./equation";
import Body from "../objects/body";
import vec2 from "../math/vec2";
import DistanceConstraint from "../constraints/distance-constraint";

export default class DistanceEquation extends Equation{

	distanceConstraint: DistanceConstraint;
	r: Float32Array = vec2.create();
	ri: Float32Array = vec2.create(); // worldAnchorA
	rj: Float32Array = vec2.create(); // worldAnchorB

	constructor(distanceConstraint: DistanceConstraint, bodyA: Body|null, bodyB: Body|null, minForce: f32, maxForce: f32){
		super(bodyA, bodyB, minForce, maxForce);
		this.distanceConstraint = distanceConstraint;
	}

	computeGq(): f32 {
		let bodyA: Body = this.bodyA!,
			bodyB: Body = this.bodyB!,
			xi: Float32Array = bodyA.position,
			xj: Float32Array = bodyB.position;

		// Transform local anchors to world
		vec2.rotate(this.ri, this.distanceConstraint.localAnchorA, bodyA.angle);
		vec2.rotate(this.rj, this.distanceConstraint.localAnchorB, bodyB.angle);

		vec2.add(this.r, xj, this.rj);
		vec2.subtract(this.r, this.r, this.ri);
		vec2.subtract(this.r, this.r, xi);

		//vec2.subtract(r, bodyB.position, bodyA.position);
		return vec2.length(this.r) - this.distanceConstraint.distance;
	}
}