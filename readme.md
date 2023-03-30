# GameMaker Data Structure Benchmark

This is a project to do a simple benchmark of GameMaker's various data structures.

## Running

To run, simply clone the project and run. You may look at the `init` script to define the tests that are run, and how many loops are run of each.

## Tests

The current tests I've done are:

| Test Label | Description |
| ---------- | ----------- |
| Array | A basic test with `array_create(length)`, using accessors. |
| Array (Func) | A basic test with `array_create(length)`, using `array_get` and `array_set` functions. |
| Array (Raw) | A basic test with `[]`, using accessors. |
| Array (Un-Initialized) | A basic test with an undefined array, using accessors. |
| List | A basic test with `ds_list_create`, using accessors. |
| List (Func) | A basic test with `ds_list_create`, using `ds_list_set` and `ds_list_find_values`. |
| Map | A basic test with `ds_map_create`, using accessors. |
| Map (Func) | A basic test with `ds_map_create`, using `ds_map_set` and `ds_map_find_value`. |
| Struct | A basic test with `{}`, using accessors. |
| Struct (Func) | A basic test with `{}`, using `variable_struct_set` and `variable_struct_get`. |

I haven't tested grids, stacks, queues, or priority queues at this time, as the same tests cannot be done on them. They may be added at a later date.

## Results

For each test, a subsequent test of 100, 1000, 10000, and 100000 loops were performed. For each of these, 20 runs were run. The average, highest, and lowest results were recorded.

Test Label | Loops | Fill Average | Read Average | Fill (Highest) | Read (Highest) | Fill (Lowest) | Read (Lowest)
------ | ------ | ------ | ------ | ------ | ------ | ------ | ------
Array | 100 | 0.02 | 0.02 | 0.03 | 0.02 | 0.01 | 0.01
Array | 1000 | 0.13 | 0.11 | 0.14 | 0.13 | 0.12 | 0.11
Array | 10000 | 1.28 | 1.19 | 2.03 | 1.57 | 1.14 | 1.09
Array | 100000 | 11.93 | 11.83 | 14.25 | 14.41 | 10.96 | 10.71
Array (Func) | 100 | 0.01 | 0.01 | 0.02 | 0.02 | 0.01 | 0.01
Array (Func) | 1000 | 0.13 | 0.14 | 0.21 | 0.22 | 0.12 | 0.12
Array (Func) | 10000 | 1.44 | 1.60 | 2.18 | 2.31 | 1.14 | 1.18
Array (Func) | 100000 | 12.99 | 14.20 | 18.93 | 21.48 | 11.47 | 12.03
Array (Raw) | 100 | 0.03 | 0.01 | 0.08 | 0.02 | 0.03 | 0.01
Array (Raw) | 1000 | 0.99 | 0.15 | 6.27 | 0.28 | 0.50 | 0.11
Array (Raw) | 10000 | 29.24 | 1.33 | 33.34 | 2.34 | 27.10 | 1.05
Array (Raw) | 100000 | 9239.33 | 10.90 | 9639.25 | 12.00 | 8813.77 | 10.63
Array (Un-Initialized) | 100 | 0.03 | 0.01 | 0.05 | 0.02 | 0.03 | 0.01
Array (Un-Initialized) | 1000 | 0.51 | 0.12 | 0.62 | 0.13 | 0.49 | 0.11
Array (Un-Initialized) | 10000 | 27.13 | 1.15 | 27.79 | 1.17 | 26.82 | 1.13
Array (Un-Initialized) | 100000 | 9311.16 | 11.13 | 10257.53 | 11.88 | 8812.28 | 10.66
List | 100 | 0.01 | 0.01 | 0.04 | 0.03 | 0.01 | 0.01
List | 1000 | 0.15 | 0.12 | 0.24 | 0.14 | 0.13 | 0.11
List | 10000 | 2.90 | 1.22 | 3.34 | 1.80 | 2.74 | 1.06
List | 100000 | 624.14 | 10.90 | 802.53 | 13.96 | 567.91 | 10.48
List (Func) | 100 | 0.01 | 0.01 | 0.02 | 0.02 | 0.01 | 0.01
List (Func) | 1000 | 0.14 | 0.11 | 0.16 | 0.13 | 0.13 | 0.11
List (Func) | 10000 | 2.83 | 1.17 | 3.13 | 1.60 | 2.79 | 1.13
List (Func) | 100000 | 600.53 | 10.77 | 787.91 | 12.85 | 550.06 | 10.34
Map | 100 | 0.02 | 0.01 | 0.03 | 0.02 | 0.02 | 0.01
Map | 1000 | 0.17 | 0.15 | 0.19 | 0.16 | 0.17 | 0.14
Map | 10000 | 3.33 | 3.05 | 4.45 | 3.75 | 2.95 | 2.50
Map | 100000 | 287.37 | 273.31 | 451.13 | 488.60 | 244.12 | 240.14
Map (Func) | 100 | 0.02 | 0.01 | 0.03 | 0.02 | 0.02 | 0.01
Map (Func) | 1000 | 0.18 | 0.16 | 0.20 | 0.29 | 0.17 | 0.14
Map (Func) | 10000 | 3.49 | 3.37 | 3.71 | 3.59 | 3.33 | 3.15
Map (Func) | 100000 | 266.50 | 271.39 | 359.94 | 511.87 | 241.51 | 237.36
Struct | 100 | 0.03 | 0.03 | 0.08 | 0.05 | 0.03 | 0.03
Struct | 1000 | 0.33 | 0.28 | 0.68 | 0.34 | 0.29 | 0.27
Struct | 10000 | 4.81 | 2.90 | 30.53 | 3.32 | 3.24 | 2.74
Struct | 100000 | 167.04 | 34.67 | 2624.30 | 41.29 | 34.10 | 29.36
Struct (Func) | 100 | 0.03 | 0.03 | 0.04 | 0.04 | 0.03 | 0.03
Struct (Func) | 1000 | 0.32 | 0.28 | 0.58 | 0.41 | 0.30 | 0.26
Struct (Func) | 10000 | 3.38 | 2.83 | 3.73 | 2.96 | 3.16 | 2.77
Struct (Func) | 100000 | 37.46 | 35.25 | 44.44 | 44.44 | 32.63 | 30.43

## Takeaways

- Arrays that have their length pre-defined are by far the most efficient.
- Arrays that *don't* have their length pre-defined are by far the *least* efficient.
- In general, it's quicker to use functions to access values than the accessors. The difference is negligable unless using a giant dataset, though.
- If you're using maps as an array alternative... it's actually more efficient than using lists! So keep at it! (or switch to structs).
- Structs are much faster than maps and lists, and come second only to pre-defined arrays.
- There's something funky with the struct accessor results. I have no idea what's going on, but the function methods seem to be more reliable.