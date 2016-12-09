IO.inspect(Enum.map [1,2,3,4], fn x -> x + 2 end) # old
IO.inspect(Enum.map [1,2,3,4], &(&1 + 2)) # new

Enum.each [1,2,3,4], fn x -> IO.inspect x end # old
Enum.each [1,2,3,4], &(IO.inspect(&1)) # new
