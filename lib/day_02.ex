defmodule Day02 do
  def part1(path) do
    Aoc.lines(path)
    |> Enum.map(fn line -> score(line, &strategy_1/2) end)
    |> Enum.sum()
  end

  def part2(path) do
    Aoc.lines(path)
    |> Enum.map(fn line -> score(line, &strategy_2/2) end)
    |> Enum.sum()
  end

  defp score(line, strategy) do
    [opponent, shape] = String.split(line)
    strategy.(opponent, shape)
  end


  # A Rock, B Paper, C Scissors
  # X     , Y      , C
  def strategy_1("A", "X"), do: 3 + 1
  def strategy_1("A", "Y"), do: 6 + 2
  def strategy_1("A", "Z"), do: 0 + 3
  def strategy_1("B", "X"), do: 0 + 1
  def strategy_1("B", "Y"), do: 3 + 2
  def strategy_1("B", "Z"), do: 6 + 3
  def strategy_1("C", "X"), do: 6 + 1
  def strategy_1("C", "Y"), do: 0 + 2
  def strategy_1("C", "Z"), do: 3 + 3

  # A Rock, B Paper, C Scissors
  # X Lose, Y Draw,  Z Win
  def strategy_2("A", "X"), do: 0 + 3
  def strategy_2("A", "Y"), do: 3 + 1
  def strategy_2("A", "Z"), do: 6 + 2
  def strategy_2("B", "X"), do: 0 + 1
  def strategy_2("B", "Y"), do: 3 + 2
  def strategy_2("B", "Z"), do: 6 + 3
  def strategy_2("C", "X"), do: 0 + 2
  def strategy_2("C", "Y"), do: 3 + 3
  def strategy_2("C", "Z"), do: 6 + 1
end
