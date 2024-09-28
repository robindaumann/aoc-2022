defmodule Day03 do
  def part1(path) do
    Aoc.lines(path)
    |> Enum.map(&priority/1)
    |> Enum.sum()
  end

  defp priority(rucksack) do
    if rem(String.length(rucksack), 2) != 0, do: raise(ArithmeticError)
    middle = div(String.length(rucksack), 2)

    String.split_at(rucksack, middle)
    |> Tuple.to_list()
    |> Enum.map(&remove_duplicates/1)
    |> Enum.join()
    |> calc_priority(2)
  end

  defp calc_priority(rucksack, target_count) do
    rucksack
    |> String.graphemes()
    |> Enum.frequencies()
    |> Enum.find_value(fn {item, count} -> if count == target_count, do: item end)
    |> item_priority()
  end

  defp remove_duplicates(items), do: String.graphemes(items) |> Enum.uniq() |> Enum.join()

  defp item_priority(<<item::utf8>>) when item >= 97, do: item - 96
  defp item_priority(<<item::utf8>>) when item < 97, do: item - 38

  def part2(path) do
    Aoc.lines(path)
    |> Enum.chunk_every(3)
    |> Enum.map(&sticker_priority/1)
    |> Enum.sum()
  end

  defp sticker_priority(rucksacks) do
    rucksacks
    |> Enum.map(&remove_duplicates/1)
    |> Enum.join()
    |> calc_priority(3)
  end
end
