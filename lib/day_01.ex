defmodule Day01 do
  def part1(path) do
    solve(path, 0..0)
  end

  def part2(path) do
    solve(path, 0..2)
  end

  defp solve(path, range) do
    Aoc.lines(path)
    |> Enum.chunk_by(fn line -> line == "" end)
    |> Enum.reject(fn block -> block == [""] end)
    |> Enum.map(&sum_block/1)
    |> Enum.sort(:desc)
    |> Enum.slice(range)
    |> Enum.sum()
  end

  defp sum_block(block) do
    Enum.map(block, &String.to_integer/1) |> Enum.sum()
  end
end
