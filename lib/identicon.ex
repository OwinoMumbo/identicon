defmodule Identicon do
  def main (input) do
    #take user input
    input
    |> hash_input
  end

  def hash_input(input) do
    #convert input to hash
    :crypto.hash(:md5, input)#converts input to hash via crypto
    |> :binary.bin_to_list #pipes the output to a binary list of numbers
  end
end
