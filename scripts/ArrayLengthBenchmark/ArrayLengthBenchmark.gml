// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function ArrayLengthBenchmark(loops) : Benchmark("Array (Length)", loops) constructor {
	static setup = function() {
	}
	
	static fillTest = function() {
		var loops = self.loops;
		var arr = array_create(self.loops);
		
		for (var i = 0; i < loops; i++) {
			arr[array_length(arr)] = i;
		}
		
		return arr;
	}
	
	static readTest = function(arr) {
		var loops = self.loops;
		var dummy = -1;

		for (var i = 0; i < loops; i++) {
			dummy = arr[i];
		}
	}
}