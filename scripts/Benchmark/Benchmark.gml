// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Benchmark(label, loops) constructor {
	self.loops = loops;
	self.label = label;
	
	results = [];
	
	static fillTest = function() {
		
	}
	
	static readTest = function(ds) {
	}
	
	static cleanup = function(ds) {
		
	}
	
	static runTest = function() {
		var fillStart = get_timer();
	
		var ds = self.fillTest();
	
		var fillDiff = get_timer() - fillStart;
	
		var readStart = get_timer();
	
		self.readTest(ds);
	
		var readDiff = get_timer() - readStart;
		
		self.cleanup(ds);
		
		array_push(results, { fill: fillDiff, read: readDiff});
	}
	
	static average = function(key) {
		var sum = 0;
		for (var i = 0; i < array_length(results); i++) {
			sum += results[i][$ key];
		}
		
		return sum / array_length(results);
	}
	
	static highest = function(key) {
		var val = 0;
		for (var i = 0; i < array_length(results); i++) {
			var h = results[i][$ key];
			if (h > val) {
				val = h;	
			}
		}
		
		return val;
	}
	
	static lowest = function(key) {
		var val = 0;
		for (var i = 0; i < array_length(results); i++) {
			var h = results[i][$ key];
			if (val == 0 || h < val) {
				val = h;	
			}
		}
		
		return val;
	}
	
	static toMs = function(val) {
		return val / 1000;	
	}
	
	static run = function() {
		for (var i = 0; i < RUN_COUNT; i++) {
			runTest();
		}
		
		var fillAverage = average("fill");
		var readAverage = average("read");
		
		show_debug_message(string_join(" | ",
			label,
			loops,
			toMs(fillAverage),
			toMs(readAverage),
			toMs(highest("fill")),
			toMs(highest("read")),
			toMs(lowest("fill")),
			toMs(lowest("read"))
		));
		
		return self;
	}
}