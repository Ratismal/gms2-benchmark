// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#macro RUN_COUNT 20

function init(){
	show_debug_message("==========[ Test Start ]==========\n\n\n");
	
	show_debug_message(string_join(" | ",
		"Test Label",
		"Loops",
		"Fill Average",
		"Read Average",
		"Fill (Highest)",
		"Read (Highest)",
		"Fill (Lowest)",
		"Read (Lowest)"
	));
	show_debug_message(string_join(" | ",
		"------",
		"------",
		"------",
		"------",
		"------",
		"------",
		"------",
		"------",
	));
	
	var tests = [
		ArrayBenchmark,
		ArrayFuncBenchmark,
		ArrayRawBenchmark,
		ArrayUninitBenchmark,
		// ArrayLengthBenchmark,

		ListBenchmark,
		ListFuncBenchmark,
		
		MapBenchmark,
		MapFuncBenchmark,
		
		StructBenchmark,
		StructFuncBenchmark
	];
	var loops = [
		100, 
		1000, 
		10000,
		100000,
		// 1000000,
	];
	
	for (var i = 0; i < array_length(tests); i++) {
		for (var j = 0; j < array_length(loops); j++) {
			new tests[i](loops[j]).run();
		}
	}

	show_debug_message("\n\n\n==========[ Test End ]==========\n\n\n");
	
	game_end(0);
}