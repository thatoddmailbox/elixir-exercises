defmodule MyList do
	def caesar(text, n) do
		_caesar(text, n)
	end

	defp _caesar([], n) do
		[]
	end
	defp _caesar([head | tail], n) when (head) + n > ?z do
		[head + (n - 26) | _caesar(tail, n)]
	end
	defp _caesar([head | tail], n) do
		[head + n | _caesar(tail, n)]
	end
end
