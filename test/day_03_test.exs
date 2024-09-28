defmodule Day03Test do
  use ExUnit.Case, async: true
  require Aoc

  test "part1 input" do
    f = Aoc.path()
    assert Day03.part1(f) == 7872
  end

  test "part1 example" do
    f = Aoc.example()
    assert Day03.part1(f) == 157
  end

  test "part2 input" do
    f = Aoc.path()
    assert Day03.part2(f) == 2497
  end

  test "part2 example" do
    f = Aoc.example()
    assert Day03.part2(f) == 70
  end
end
