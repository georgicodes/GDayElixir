# Functions-1
list_concat = fn (a, b) -> a ++ b end
list_concat.([1,2,3], [4,5,6])

sum = fn (a, b, c) -> a + b + c end
sum.(1,2,3)

#pair_tuple_to_list ???

# Functions-2
fizz = fn (a, b, c) ->
  cond do
    a + b == 0 ->
      "FizzBuzz"
    a == 0 ->
      "Fizz"
    b == 0 ->
      "Buzz"
    true ->
      Integer.to_string(c)
  end
end
IO.puts fizz.(4, 1, 3)

fizz2 = fn (a,b,c) ->
  case {a,b,c} do
    {0, x, _} when x > 0 ->
      "Fizz"
    {x, 0, _} when x > 0 ->
      "Buzz"
    {0, 0, _} ->
      "FizzBuzz"
    _ ->
      Integer.to_string(c)
  end
end
IO.puts fizz2.(4, 1, 3)

# Functions-3
