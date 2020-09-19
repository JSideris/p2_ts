//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;


/*
	PolyK library
	url: http://polyk.ivank.net
	Released under MIT licence.

	Copyright (c) 2012 Ivan Kuckir

	Permission is hereby granted, free of charge, to any person
	obtaining a copy of this software and associated documentation
	files (the "Software"), to deal in the Software without
	restriction, including without limitation the rights to use,
	copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the
	Software is furnished to do so, subject to the following
	conditions:

	The above copyright notice and this permission notice shall be
	included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
	EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
	OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
	NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
	HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
	WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
	FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
	OTHER DEALINGS IN THE SOFTWARE.
*/


/*
	Is Polygon self-intersecting?

	O(n^2)
*/
/*
IsSimple(p)
{
	let n = p.length>>1;
	if(n<4) return true;
	let a1 = new this._P(), a2 = new this._P();
	let b1 = new this._P(), b2 = new this._P();
	let c = new this._P();

	for(let i: i32 = 0; i<n; i++)
	{
		a1.x = p[2*i  ];
		a1.y = p[2*i+1];
		if(i==n-1)  { a2.x = p[0    ];  a2.y = p[1    ]; }
		else        { a2.x = p[2*i+2];  a2.y = p[2*i+3]; }

		for(let j: i32 =0; j<n; j++)
		{
			if(Math.abs(i-j) < 2) continue;
			if(j==n-1 && i==0) continue;
			if(i==n-1 && j==0) continue;

			b1.x = p[2*j  ];
			b1.y = p[2*j+1];
			if(j==n-1)  { b2.x = p[0    ];  b2.y = p[1    ]; }
			else        { b2.x = p[2*j+2];  b2.y = p[2*j+3]; }

			if(this._GetLineIntersection(a1,a2,b1,b2,c) != null) return false;
		}
	}
	return true;
}

IsConvex(p)
{
	if(p.length<6) return true;
	let l = p.length - 4;
	for(let i: i32 = 0; i<l; i+=2)
		if(!this._convex(p[i], p[i+1], p[i+2], p[i+3], p[i+4], p[i+5])) return false;
	if(!this._convex(p[l  ], p[l+1], p[l+2], p[l+3], p[0], p[1])) return false;
	if(!this._convex(p[l+2], p[l+3], p[0  ], p[1  ], p[2], p[3])) return false;
	return true;
}
*/

export function GetArea(p: Float32Array): f32
{
	if(p.length <6) return 0;
	let l = p.length - 2;
	let sum = 0;
	for(let i: i32 = 0; i<l; i+=2)
		sum += (p[i+2]-p[i]) * (p[i+1]+p[i+3]);
	sum += (p[0]-p[l]) * (p[l+1]+p[1]);
	return - sum * 0.5;
}

/*
GetAABB(p)
{
	let minx = Infinity;
	let miny = Infinity;
	let maxx = -minx;
	let maxy = -miny;
	for(let i: i32 = 0; i<p.length; i+=2)
	{
		minx = Math.min(minx, p[i  ]);
		maxx = Math.max(maxx, p[i  ]);
		miny = Math.min(miny, p[i+1]);
		maxy = Math.max(maxy, p[i+1]);
	}
	return {x:minx, y:miny, width:maxx-minx, height:maxy-miny};
}
*/

export function Triangulate(p: Array<f32>): Array<u16>
{
	let n: u16 = (p.length>>1) as u16;
	if(n < 3) return [];
	let tgs: u16[] = [];
	let avl: u16[] = [];
	for(let i:u16 = 0; i < n; i++) avl.push(i);

	let i: u16 = 0;
	let al: u16 = n;
	while(al > 3)
	{
		let i0: u16 = avl[(i+0)%al];
		let i1: u16 = avl[(i+1)%al];
		let i2: u16 = avl[(i+2)%al];

		let ax = p[2*i0],  ay = p[2*i0+1];
		let bx = p[2*i1],  by = p[2*i1+1];
		let cx = p[2*i2],  cy = p[2*i2+1];

		let earFound = false;
		if(_convex(ax, ay, bx, by, cx, cy))
		{
			earFound = true;
			for(let j:u16=0; j<al; j++)
			{
				let vi = avl[j];
				if(vi==i0 || vi==i1 || vi==i2) continue;
				if(_PointInTriangle(p[2*vi], p[2*vi+1], ax, ay, bx, by, cx, cy)) {earFound = false; break;}
			}
		}
		if(earFound)
		{
			tgs.push(i0);
			tgs.push(i1);
			tgs.push(i2);
			avl.splice((i+1)%al, 1);
			al--;
			i= 0;
		}
		else if(i++ > 3*al) break;      // no convex angles :(
	}
	tgs.push(avl[0]);
	tgs.push(avl[1]);
	tgs.push(avl[2]);
	return tgs;
}
/*
ContainsPoint(p, px, py)
{
	let n = p.length>>1;
	let ax, ay, bx = p[2*n-2]-px, by = p[2*n-1]-py;
	let depth = 0;
	for(let i: i32 = 0; i<n; i++)
	{
		ax = bx;  ay = by;
		bx = p[2*i  ] - px;
		by = p[2*i+1] - py;
		if(ay< 0 && by< 0) continue;    // both "up" or both "donw"
		if(ay>=0 && by>=0) continue;    // both "up" or both "donw"
		if(ax< 0 && bx< 0) continue;

		let lx = ax + (bx-ax)*(-ay)/(by-ay);
		if(lx>0) depth++;
	}
	return (depth & 1) == 1;
}

Slice(p, ax, ay, bx, by)
{
	if(this.ContainsPoint(p, ax, ay) || this.ContainsPoint(p, bx, by)) return [p.slice(0)];

	let a = new this._P(ax, ay);
	let b = new this._P(bx, by);
	let iscs = [];  // intersections
	let ps = [];    // points
	for(let i: i32 = 0; i<p.length; i+=2) ps.push(new this._P(p[i], p[i+1]));

	for(let i: i32 = 0; i<ps.length; i++)
	{
		let isc = new this._P(0,0);
		isc = this._GetLineIntersection(a, b, ps[i], ps[(i+1)%ps.length], isc);

		if(isc)
		{
			isc.flag = true;
			iscs.push(isc);
			ps.splice(i+1,0,isc);
			i++;
		}
	}
	if(iscs.length == 0) return [p.slice(0)];
	let comp(u,v) {return this._P.dist(a,u) - this._P.dist(a,v); }
	iscs.sort(comp);

	let pgs = [];
	let dir = 0;
	while(iscs.length > 0)
	{
		let n = ps.length;
		let i0 = iscs[0];
		let i1 = iscs[1];
		let ind0 = ps.indexOf(i0);
		let ind1 = ps.indexOf(i1);
		let solved = false;

		if(this._firstWithFlag(ps, ind0) == ind1) solved = true;
		else
		{
			i0 = iscs[1];
			i1 = iscs[0];
			ind0 = ps.indexOf(i0);
			ind1 = ps.indexOf(i1);
			if(this._firstWithFlag(ps, ind0) == ind1) solved = true;
		}
		if(solved)
		{
			dir--;
			let pgn = this._getPoints(ps, ind0, ind1);
			pgs.push(pgn);
			ps = this._getPoints(ps, ind1, ind0);
			i0.flag = i1.flag = false;
			iscs.splice(0,2);
			if(iscs.length == 0) pgs.push(ps);
		}
		else { dir++; iscs.reverse(); }
		if(dir>1) break;
	}
	let result = [];
	for(let i: i32 = 0; i<pgs.length; i++)
	{
		let pg = pgs[i];
		let npg = [];
		for(let j: i32 =0; j<pg.length; j++) npg.push(pg[j].x, pg[j].y);
		result.push(npg);
	}
	return result;
}

Raycast(p, x, y, dx, dy, isc)
{
	let l = p.length - 2;
	let tp = this._tp;
	let a1 = tp[0], a2 = tp[1],
	b1 = tp[2], b2 = tp[3], c = tp[4];
	a1.x = x; a1.y = y;
	a2.x = x+dx; a2.y = y+dy;

	if(isc==null) isc = {dist:0, edge:0, norm:{x:0, y:0}, refl:{x:0, y:0}};
	isc.dist = Infinity;

	for(let i: i32 = 0; i<l; i+=2)
	{
		b1.x = p[i  ];  b1.y = p[i+1];
		b2.x = p[i+2];  b2.y = p[i+3];
		let nisc = this._RayLineIntersection(a1, a2, b1, b2, c);
		if(nisc) this._updateISC(dx, dy, a1, b1, b2, c, i/2, isc);
	}
	b1.x = b2.x;  b1.y = b2.y;
	b2.x = p[0];  b2.y = p[1];
	let nisc = this._RayLineIntersection(a1, a2, b1, b2, c);
	if(nisc) this._updateISC(dx, dy, a1, b1, b2, c, p.length/2, isc);

	return (isc.dist != Infinity) ? isc : null;
}

ClosestEdge(p, x, y, isc)
{
	let l = p.length - 2;
	let tp = this._tp;
	let a1 = tp[0],
	b1 = tp[2], b2 = tp[3], c = tp[4];
	a1.x = x; a1.y = y;

	if(isc==null) isc = {dist:0, edge:0, point:{x:0, y:0}, norm:{x:0, y:0}};
	isc.dist = Infinity;

	for(let i: i32 = 0; i<l; i+=2)
	{
		b1.x = p[i  ];  b1.y = p[i+1];
		b2.x = p[i+2];  b2.y = p[i+3];
		this._pointLineDist(a1, b1, b2, i>>1, isc);
	}
	b1.x = b2.x;  b1.y = b2.y;
	b2.x = p[0];  b2.y = p[1];
	this._pointLineDist(a1, b1, b2, l>>1, isc);

	let idst = 1/isc.dist;
	isc.norm.x = (x-isc.point.x)*idst;
	isc.norm.y = (y-isc.point.y)*idst;
	return isc;
}

_pointLineDist(p, a, b, edge, isc)
{
	let x = p.x, y = p.y, x1 = a.x, y1 = a.y, x2 = b.x, y2 = b.y;

	let A = x - x1;
	let B = y - y1;
	let C = x2 - x1;
	let D = y2 - y1;

	let dot = A * C + B * D;
	let len_sq = C * C + D * D;
	let param = dot / len_sq;

	let xx, yy;

	if (param < 0 || (x1 == x2 && y1 == y2)) {
		xx = x1;
		yy = y1;
	}
	else if (param > 1) {
		xx = x2;
		yy = y2;
	}
	else {
		xx = x1 + param * C;
		yy = y1 + param * D;
	}

	let dx = x - xx;
	let dy = y - yy;
	let dst = Math.sqrt(dx * dx + dy * dy);
	if(dst<isc.dist)
	{
		isc.dist = dst;
		isc.edge = edge;
		isc.point.x = xx;
		isc.point.y = yy;
	}
}

_updateISC(dx, dy, a1, b1, b2, c, edge, isc)
{
	let nrl = this._P.dist(a1, c);
	if(nrl<isc.dist)
	{
		let ibl = 1/this._P.dist(b1, b2);
		let nx = -(b2.y-b1.y)*ibl;
		let ny =  (b2.x-b1.x)*ibl;
		let ddot = 2*(dx*nx+dy*ny);
		isc.dist = nrl;
		isc.norm.x = nx;
		isc.norm.y = ny;
		isc.refl.x = -ddot*nx+dx;
		isc.refl.y = -ddot*ny+dy;
		isc.edge = edge;
	}
}

_getPoints(ps, ind0, ind1)
{
	let n = ps.length;
	let nps = [];
	if(ind1<ind0) ind1 += n;
	for(let i: i32 = ind0; i<= ind1; i++) nps.push(ps[i%n]);
	return nps;
}

_firstWithFlag(ps, ind)
{
	let n = ps.length;
	while(true)
	{
		ind = (ind+1)%n;
		if(ps[ind].flag) return ind;
	}
}
*/

function _PointInTriangle(px: f32, py: f32, ax: f32, ay: f32, bx: f32, by: f32, cx: f32, cy: f32): boolean
{
	let v0x:f32 = cx-ax;
	let v0y:f32 = cy-ay;
	let v1x:f32 = bx-ax;
	let v1y:f32 = by-ay;
	let v2x:f32 = px-ax;
	let v2y:f32 = py-ay;

	let dot00:f32 = v0x*v0x+v0y*v0y;
	let dot01:f32 = v0x*v1x+v0y*v1y;
	let dot02:f32 = v0x*v2x+v0y*v2y;
	let dot11:f32 = v1x*v1x+v1y*v1y;
	let dot12:f32 = v1x*v2x+v1y*v2y;

	let invDenom:f32 = 1.0 / (dot00 * dot11 - dot01 * dot01);
	let u:f32 = (dot11 * dot02 - dot01 * dot12) * invDenom;
	let v:f32 = (dot00 * dot12 - dot01 * dot02) * invDenom;

	// Check if point is in triangle
	return (u >= 0) && (v >= 0) && (u + v < 1);
}
/*
_RayLineIntersection(a1, a2, b1, b2, c)
{
	let dax = (a1.x-a2.x), dbx = (b1.x-b2.x);
	let day = (a1.y-a2.y), dby = (b1.y-b2.y);

	let Den = dax*dby - day*dbx;
	if (Den == 0) return null;  // parallel

	let A = (a1.x * a2.y - a1.y * a2.x);
	let B = (b1.x * b2.y - b1.y * b2.x);

	let I = c;
	let iDen = 1/Den;
	I.x = ( A*dbx - dax*B ) * iDen;
	I.y = ( A*dby - day*B ) * iDen;

	if(!this._InRect(I, b1, b2)) return null;
	if((day>0 && I.y>a1.y) || (day<0 && I.y<a1.y)) return null;
	if((dax>0 && I.x>a1.x) || (dax<0 && I.x<a1.x)) return null;
	return I;
}

_GetLineIntersection(a1, a2, b1, b2, c)
{
	let dax = (a1.x-a2.x), dbx = (b1.x-b2.x);
	let day = (a1.y-a2.y), dby = (b1.y-b2.y);

	let Den = dax*dby - day*dbx;
	if (Den == 0) return null;  // parallel

	let A = (a1.x * a2.y - a1.y * a2.x);
	let B = (b1.x * b2.y - b1.y * b2.x);

	let I = c;
	I.x = ( A*dbx - dax*B ) / Den;
	I.y = ( A*dby - day*B ) / Den;

	if(this._InRect(I, a1, a2) && this._InRect(I, b1, b2)) return I;
	return null;
}

_InRect(a, b, c)
{
	if  (b.x == c.x) return (a.y>=Math.min(b.y, c.y) && a.y<=Math.max(b.y, c.y));
	if  (b.y == c.y) return (a.x>=Math.min(b.x, c.x) && a.x<=Math.max(b.x, c.x));

	if(a.x >= Math.min(b.x, c.x) && a.x <= Math.max(b.x, c.x)
	&& a.y >= Math.min(b.y, c.y) && a.y <= Math.max(b.y, c.y))
	return true;
	return false;
}
*/
function _convex(ax: f32, ay: f32, bx: f32, by: f32, cx: f32, cy: f32): boolean
{
	return (ay-by)*(cx-bx) + (bx-ax)*(cy-by) >= 0;
}

/*
	_P(x,y)
	{
		this.x = x;
		this.y = y;
		this.flag = false;
	}
	_P.prototype.toString()
	{
		return "Point ["+this.x+", "+this.y+"]";
	}
	_P.dist(a,b)
	{
		let dx = b.x-a.x;
		let dy = b.y-a.y;
		return Math.sqrt(dx*dx + dy*dy);
	}

	_tp = [];
	for(let i: i32 = 0; i<10; i++) this._tp.push(new this._P(0,0));
*/


// var PolyK = new _PolyK();

// export default PolyK;



// import {Triangulate} from "../math/polyk";
// import {GetArea} from "../math/polyk";