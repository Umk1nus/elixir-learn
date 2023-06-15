defmodule EvenNumbers do
  def even([]), do: 0
  def even([head | tail]) when rem(head,2) !== 0, do: even(tail)
  def even([head | tail]) when rem(head,2) == 0 do
    IO.puts(head)
    even(tail)
  end
end

[20,5,20,4,5,21] |> EvenNumbers.even
