defmodule Day01Test do
  use ExUnit.Case, async: true
  require Aoc

  test "part1 input" do
    f = Aoc.path()
    assert Day01.part1(f) == 72511
  end

  test "part1 example" do
    f = Aoc.example()
    assert Day01.part1(f) == 24000
  end

  test "part2 input" do
    f = Aoc.path()
    assert Day01.part2(f) == 212117
  end

  test "part2 example" do
    f = Aoc.example()
    assert Day01.part2(f) == 45000
  end
end
