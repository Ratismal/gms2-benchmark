// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function ListBenchmark(loops) : Benchmark("List", loops) constructor {
	static fillTest = function() {
		var list = ds_list_create();
		var loops = self.loops;
		
		for (var i = 0; i < loops; i++) {
			list[| i] = i;
		}
		
		return list;
	}
	
	static readTest = function(list) {
		var dummy = -1;
		var loops = self.loops;

		for (var i = 0; i < loops; i++) {
			dummy = list[| i];
		}
	}
	
	static cleanup = function(list) {
		ds_list_destroy(list);	
	}
}