//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

export default class UnionFind{
	id: i32[];
	sz: i32[];
	size: i32;
	count: i32;

	/**
	 * Weighted Quick Union-Find with Path Compression. Based on https://github.com/juzerali/unionfind, but optimized for performance.
	 * @class UnionFind
	 * @constructor
	 * @param {number} size
	 */
	constructor(size: i32){
		this.id = [];
		this.sz = [];

		/**
		 * The number of elements.
		 * @property {number} size
		 */
		this.size = size;

		/**
		 * The number of distinct groups.
		 * @property {number} count
		 */
		this.count = size;

		this.resize(size);
	}

	/**
	 * Initialize the UnionFind data structure with number of distinct groups to begin with. Each group will be referred to as index of the array of size size starting at 0.
	 * @method resize
	 * @param {number} size
	 */
	resize(size: i32): void{
		this.count = this.size = size;
		var sz = this.sz;
		var id = this.id;
		for (let i = 0; i < size; i++) {
			id[i] = i;
			sz[i] = 1;
		}
	}

	/**
	 * Return the root (value) of the group in which p is.
	 * @method find
	 * @param {number} p
	 */
	find (p: i32): i32 {
		var id = this.id;
		while(p !== id[p]){
			id[p] = id[id[p]];
			p = id[p];
		}
		return p;
	}

	/**
	 * Combine elements in groups p and q into a single group. In other words connect the two groups.
	 * @method union
	 * @param {number} p
	 * @param {number} q
	 */
	union(p: i32, q: i32): void{
		var i = this.find(p)
		,	j = this.find(q);

		if (i === j){
			return;
		}

		var sz = this.sz;
		var id = this.id;
		if (sz[i] < sz[j]) 	{id[i] = j; sz[j] += sz[i];}
		else				{id[j] = i; sz[i] += sz[j];}

		this.count--;
		return;
	}
}