// The entry file of your WebAssembly module.

function test(x:i32, y:i32):i32{
	return x + y;
}

export function add(a: i32, b: i32): i32 {
  return test.call(null, a);
}
