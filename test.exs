defmodule Test do
	def test(x, y) when y > 4 do
		x + y
	end
	def test(x, y) when y < 4 do
		x - y
	end
end
