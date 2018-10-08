defmodule MagicNumbersTest do
  use ExUnit.Case
  doctest MagicNumbers

  describe "count the amount of primes roots in a given list of intervals" do
    test "a list [[1,1]]" do
      assert MagicNumbers.count_primes_roots_from([[1,1]]) == 1
    end

    test "a list [[1,4]]" do
      assert MagicNumbers.count_primes_roots_from([[1,4]]) == 2
    end

    test "a list [[1,4],[1,4]]" do
      assert MagicNumbers.count_primes_roots_from([[1,4],[1,4]]) == 4
    end

    test "a list [[1,9],[25,25]]" do
      assert MagicNumbers.count_primes_roots_from([[1,9],[25,25]]) == 4
    end

    test "a list [[8,27],[49,49]]" do
      assert MagicNumbers.count_primes_roots_from([[8,27],[49,49]]) == 3
    end

    test "a list [[8,27],[49,49],[1,63001]]" do
      assert MagicNumbers.count_primes_roots_from([[8,27],[49,49],[1,63001]]) == 92
    end
  end

  describe "count the amount of primes roots in a given interval" do
    test "an interval between 1 and 1" do
      assert MagicNumbers.count_primes_roots_between([1,1]) == 1
    end

    test "an interval between 1 and 2" do
      assert MagicNumbers.count_primes_roots_between([1,2]) == 1
    end

    test "an interval between 1 and 4" do
      assert MagicNumbers.count_primes_roots_between([1,4]) == 2
    end

    test "an interval between 1 and 5" do
      assert MagicNumbers.count_primes_roots_between([1,5]) == 2
    end

    test "an interval between 1 and 9" do
      assert MagicNumbers.count_primes_roots_between([1,9]) == 3
    end

    test "an interval between 1 and 10" do
      assert MagicNumbers.count_primes_roots_between([1,10]) == 3
    end

    test "an interval between 1 and 24" do
      assert MagicNumbers.count_primes_roots_between([1,24]) == 3
    end

    test "an interval between 1 and 25" do
      assert MagicNumbers.count_primes_roots_between([1,25]) == 4
    end

    test "an interval between 1 and 26" do
      assert MagicNumbers.count_primes_roots_between([1,26]) == 4
    end

    test "an interval between 1 and 63001" do
      assert MagicNumbers.count_primes_roots_between([1,63001]) == 89
    end
  end
end
