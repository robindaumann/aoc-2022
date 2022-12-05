# Aoc2022

My solutions for [AOC 2022](https://adventofcode.com/2022/). Written in elixir. I do not
run the tests in Github Actions this year. So, the inputs will be excluded here.

## Structure

* `lib/` contains the project source code
* `input/` should contain the puzzle input (not included here)
* `test/` contains the tests which are used to start the computation and check the output
for the minimal example as well as the full input

## Run tests

Either run

```shell
mix test
```

in the project root to start all tests or

```shell
mix test test/day_01.exs
```

to start the tests for a specific day (i.e. day 1).
