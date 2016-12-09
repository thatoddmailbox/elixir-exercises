defmodule Chop do
	def guess(actual, a..b) do
		guess = round((b - a) / 2) + (a)
		IO.puts("Is it #{guess}?")
		:timer.sleep(1000)
		cond do
			guess == actual ->
				IO.puts("It is #{guess}")
				#IO.puts("YAY")
			guess > actual ->
				#IO.puts("#{a}..#{guess}")
				#IO.puts("guess is higher")
				Chop.guess(actual, a..guess)
			guess < actual ->
				#IO.puts("#{guess}..#{b}")
				#IO.puts("guess is lower")
				Chop.guess(actual, guess..b)
		end

	end
end

Chop.guess(273, 1..1000)
