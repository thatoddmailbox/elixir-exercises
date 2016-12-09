defmodule MyList do
  def span(from, from), do: [from]
  def span(from, to) when from < to do
    [from | span(from+1, to)]
  end

  def primes(n) do
    for num <- span(2, n), is_prime?(num), do: num
  end

  def is_prime?(2), do: true
  def is_prime?(num) do
    Enum.all?(span(2, num-1), &(rem(num, &1) != 0))
  end
end
