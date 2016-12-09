fizzbuzz = fn
	(0, 0, _) -> "FizzBuzz"
	(0, _, _) -> "Fizz"
	(_, 0, _) -> "Buzz"
	(_, _, c) -> c
end

IO.puts(fizzbuzz.(0, 0, 6)) # FizzBuzz
IO.puts(fizzbuzz.(0, 1, 6)) # Fizz
IO.puts(fizzbuzz.(1, 0, 6)) # Buzz
IO.puts(fizzbuzz.(1, 2, 9)) # 9
