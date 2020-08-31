// The entry file of your WebAssembly module.

export function uhoh(a: Float32Array, b: Float32Array): number {
	console.log("uhoh!");
  	return a[0] + b[0];
}
