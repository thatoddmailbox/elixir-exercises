prefix = fn (str) ->
	(fn (strToPrefix) ->
		str <> " " <> strToPrefix
	end)
end

mrs = prefix.("Mrs")
IO.puts(mrs.("Smith"))
IO.puts(prefix.("Elixir").("Rocks"))
