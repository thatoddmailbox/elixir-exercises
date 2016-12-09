defmodule MyString do
	def printable?([]) do
		true
	end
	def printable?([head | tail]) when head >= ?\s and head <= ?~ do
		printable?(tail)
	end
	def printable?([_, _]) do
		false
	end
end
