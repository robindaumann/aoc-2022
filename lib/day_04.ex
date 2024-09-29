defmodule Day04 do
  def part1(path) do
    Aoc.lines(path)
    |> parse_bounds()
    |> Enum.filter(&is_included?/1)
    |> Enum.count()
  end

  def part2(path) do
    Aoc.lines(path)
    |> parse_bounds()
    |> Enum.filter(&overlaps?/1)
    |> Enum.count()
  end

  defp parse_bounds(lines) do
    lines
    |> Enum.map(&Regex.run(~r/^(\d+)-(\d+),(\d+)-(\d+)$/, &1, capture: :all_but_first))
    |> Enum.map(&bounds_to_int/1)
  end

  defp bounds_to_int(bounds) do
    Enum.map(bounds, &String.to_integer/1)
  end

  defp is_included?([start_a, end_a, start_b, end_b]) do
    (start_a >= start_b and end_a <= end_b) or (start_b >= start_a and end_b <= end_a)
  end

  defp overlaps?([start_a, end_a, start_b, end_b]) do
    range_a = Range.new(start_a, end_a)
    range_b = Range.new(start_b, end_b)

    not Range.disjoint?(range_a, range_b)
  end
end
