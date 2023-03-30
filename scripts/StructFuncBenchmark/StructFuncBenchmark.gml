// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function StructFuncBenchmark(loops) : Benchmark("Struct (Func)", loops) constructor {
	static fillTest = function() {
		var map = {};
		var loops = self.loops;
		
		for (var i = 0; i < loops; i++) {
			variable_struct_set(map, i, i);
		}
		
		return map;
	}
	
	static readTest = function(map) {
		var dummy = -1;
		var loops = self.loops;

		for (var i = 0; i < loops; i++) {
			dummy = variable_struct_get(map, i);
		}
	}
}