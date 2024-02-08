# The Fibonacci numbers, commonly denoted F(n) form a sequence, called the Fibonacci sequence, such that each number is the sum of the two preceding ones, starting from 0 and 1. That is,

# F(0) = 0, F(1) = 1
# F(n) = F(n - 1) + F(n - 2), for n > 1.
# Given n, calculate F(n).


def fib(n)
  # return n if n <= 1

  # fib(n - 1) + fib(n - 2)
  # return n if n <= 1
    # return memo[n] if memo.key?(n)

    # memo[n] = fib(n - 1, memo) + fib(n - 2, memo)
    return n if n <= 1

    fib_values = [0, 1]

    (2..n).each do |i|
        fib_values[i] = fib_values[i - 1] + fib_values[i - 2]
    end

    fib_values[n]
end

# Example 1:

# Input: n = 2
# Output: 1
# Explanation: F(2) = F(1) + F(0) = 1 + 0 = 1.
# Example 2:

# Input: n = 3
# Output: 2
# Explanation: F(3) = F(2) + F(1) = 1 + 1 = 2.
# Example 3:

# Input: n = 4
# Output: 3
# Explanation: F(4) = F(3) + F(2) = 2 + 1 = 3.

# 0, 1, 1,2,3,5,8,13, 21
# n = 7
p fib(n)