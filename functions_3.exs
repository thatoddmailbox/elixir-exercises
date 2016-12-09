fizzbuzz = fn
	(0, 0, _) -> "FizzBuzz"
	(0, _, _) -> "Fizz"
	(_, 0, _) -> "Buzz"
	(_, _, c) -> c
end

fizzbuzz_2 = fn (n) ->
	fizzbuzz.(rem(n,3), rem(n,5), n)
end

IO.puts(fizzbuzz_2.(10))
IO.puts(fizzbuzz_2.(11))
IO.puts(fizzbuzz_2.(12))
IO.puts(fizzbuzz_2.(13))
IO.puts(fizzbuzz_2.(14))
IO.puts(fizzbuzz_2.(15))
IO.puts(fizzbuzz_2.(16))
