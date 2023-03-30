// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function MapFuncBenchmark(loops) : Benchmark("Map (Func)", loops) constructor {
	static fillTest = function() {
		var map = ds_map_create();
		var loops = self.loops;
		
		for (var i = 0; i < loops; i++) {
			ds_map_set(map, i, i);
		}
		
		return map;
	}
	
	static readTest = function(map) {
		var dummy = -1;
		var loops = self.loops;

		for (var i = 0; i < loops; i++) {
			dummy = ds_map_find_value(map, i);
		}
	}
	
	static cleanup = function(map) {
		ds_map_destroy(map);	
	}
}