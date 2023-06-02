defmodule Factorial do
  def setup(0), do: 1
  def setup(a) when is_number(a) and a > 0 do
    a * setup(a - 1)
  end

  def int({number, _}), do: number
end

IO.gets("Write number \n") |> Integer.parse |> Factorial.int |> Factorial.setup |> IO.puts
