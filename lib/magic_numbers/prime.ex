defmodule MagicNumbers.Prime do
    @moduledoc """
  Documentation for MagicNumbers.Prime.
  """

  @doc """
  Check whether a number is prime.

  ## Examples

      iex> Prime.is_prime(5)
      true

      iex> Prime.is_prime(6)
      false

  """
  def is_prime(number) when number <= 3 do
    true
  end

  def is_prime(number) when rem(number,2) == 0 do
    false
  end

  def is_prime(number) do
    is_prime(number, div(number, 2) - 1)
  end

  def is_prime(_, divisor) when divisor <= 2 do
    true
  end

  def is_prime(number, divisor) do
    case rem(number,divisor) do
      0 -> false
      _ -> is_prime(number, divisor - 2)
    end
  end

end