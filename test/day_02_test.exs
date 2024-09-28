defmodule Day02Test do
  use ExUnit.Case, async: true
  require Aoc

  test "part1 input" do
    f = Aoc.path()
    assert Day02.part1(f) == 13809
  end

  test "part1 example" do
    f = Aoc.example()
    assert Day02.part1(f) == 15
  end

  test "part2 input" do
    f = Aoc.path()
    assert Day02.part2(f) == 12316
  end

  test "part2 example" do
    f = Aoc.example()
    assert Day02.part2(f) == 12
  end
end
