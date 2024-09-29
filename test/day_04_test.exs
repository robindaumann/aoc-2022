defmodule Day04Test do
  use ExUnit.Case, async: true
  require Aoc

  test "part1 input" do
    f = Aoc.path()
    assert Day04.part1(f) == 450
  end

  test "part1 example" do
    f = Aoc.example()
    assert Day04.part1(f) == 2
  end

  test "part2 input" do
    f = Aoc.path()
    assert Day04.part2(f) == 837
  end

  test "part2 example" do
    f = Aoc.example()
    assert Day04.part2(f) == 4
  end
end
