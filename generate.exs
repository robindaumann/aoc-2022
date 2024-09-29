#!/usr/bin/env elixir

[day] = System.argv()

if String.length(day) != 2 do
  IO.puts(:stderr, "provide day with leading zero. day: '#{day}'")
  System.halt(1)
end

lib_file = "lib/day_#{day}.ex"
unless File.exists?(lib_file) do
  File.write!(lib_file, EEx.eval_file("lib/day.eex", day: day))
  IO.puts("Created module file.")
end

test_file = "test/day_#{day}_test.exs"
unless File.exists?(test_file) do
  File.write!("test/day_#{day}_test.exs", EEx.eval_file("lib/test.eex", day: day))
  IO.puts("Created test file.")
end

input_file = "input/day_#{day}.txt"
unless File.exists?(input_file) do
  :inets.start()
  :ssl.start()

  url_day = String.trim_leading(day, "0")
  url = "https://adventofcode.com/2022/day/#{url_day}/input"

  cookie = File.read!("cookie.txt")
  headers = [{"Cookie", "session=#{cookie}"}]

  {:ok, :saved_to_file} = :httpc.request(:get, {url, headers}, [], [{:stream, input_file}])
  IO.puts("Created input file.")
end
