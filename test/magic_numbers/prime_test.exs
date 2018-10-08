defmodule PrimeTest do
  use ExUnit.Case
  alias MagicNumbers.Prime
  doctest MagicNumbers.Prime

  describe "numbers that are primes" do
    test "that 1 is a number prime" do
      assert Prime.is_prime(1) == true
    end

    test "that 2 is a number prime" do
      assert Prime.is_prime(2) == true
    end

    test "that 3 is a number prime" do
      assert Prime.is_prime(3) == true
    end

    test "that 5 is a number prime" do
      assert Prime.is_prime(5) == true
    end

    test "that 11 is a number prime" do
      assert Prime.is_prime(11) == true
    end

    test "that 23 is a number prime" do
      assert Prime.is_prime(23) == true
    end

    test "that 251 is a number prime" do
      assert Prime.is_prime(251) == true
    end
  end

  describe "numbers that are not primes" do
    test "that 4 is not a number prime" do
      assert Prime.is_prime(4) == false
    end

    test "that 6 is not a number prime" do
      assert Prime.is_prime(6) == false
    end

    test "that 8 is not a number prime" do
      assert Prime.is_prime(8) == false
    end

    test "that 14 is not a number prime" do
      assert Prime.is_prime(14) == false
    end

    test "that 253 is not a number prime" do
      assert Prime.is_prime(253) == false
    end
  end
end
