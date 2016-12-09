defmodule MyList do
	def max([head | tail]) do
		_max([head | tail], head)
	end

	defp _max([], current) do
		current
	end
	defp _max([head | tail], current) when head > current do
		_max(tail, head)
	end
	defp _max([head | tail], current) do
		_max(tail, current)
	end
end
