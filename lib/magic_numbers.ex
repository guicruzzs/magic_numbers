defmodule MagicNumbers do
  alias MagicNumbers.Prime

  @moduledoc """
  It finds prime square root numbers given intervals or a list of them. :)
  """

  @doc """
  Count the amount of primes square roots numbers given a list of intervals.

  ## Examples

      iex> MagicNumbers.count_primes_roots_from([[1,4],[25,25]])
      3

  """
  def count_primes_roots_from(list) do
    async_stream = Task.async_stream(list, fn interval -> count_primes_roots_between(interval) end)
    Enum.reduce(async_stream, 0, fn {:ok, total}, acc -> acc + total end)
  end

  @doc """
  Reveals the amount of primes square roots numbers in a interval.

  ## Examples

      iex> MagicNumbers.count_primes_roots_between([1,4])
      2

  """
  def count_primes_roots_between(interval) do
    count_primes_roots_between(interval, trunc(:math.sqrt(hd(interval))))
  end

  def count_primes_roots_between(interval, base_number) when base_number * base_number > hd(tl(interval)) do
    0
  end

  def count_primes_roots_between(interval, base_number) when base_number * base_number < hd(interval) do
    count_primes_roots_between(interval, base_number + 1)
  end

  def count_primes_roots_between(interval, base_number) do
    case(Prime.is_prime(base_number)) do
      true  -> 1 + count_primes_roots_between(interval, base_number + 1)
      false -> 0 + count_primes_roots_between(interval, base_number + 1)
    end
  end
end