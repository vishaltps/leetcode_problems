# Given an integer n, return the number of prime numbers that are strictly less than n.
require 'pry'
def count_primes(n)
  return 0 if n <= 2

  # return 0 if n < 2

  # total_count = 0
  # 2.upto(n - 1) do |i|
  #   total_count += 1 if is_prime?(i)
  # end
  # total_count

  # limit = (Math.sqrt(n) - 1) / 2
  # total_count = 0
  # 2.upto(limit) do |i|
  #   total_count += 1 if is_prime?(i)
  # end
  # total_count
  upper = n / 2
  limit = (Math.sqrt(n) - 1) / 2
  primes = Array.new(upper, true)
  
  (1..limit).each do |i|
      if primes[i]
        step = 2 * i + 1
        j = step + i
        while j < upper
            primes[j] = false
            j += step
        end
      end
  end
  primes.count(true)
end

def is_prime?(i)
  return false if i != 2 && i.even?

  j = 2
  while j < (i / 2)
    return false if (i % j).zero?

    j += 1
  end
  true
end


# Example 1:

# Input: n = 10
# Output: 4
# Explanation: There are 4 prime numbers less than 10, they are 2, 3, 5, 7.
# Example 2:

# Input: n = 0
# Output: 0
# Example 3:

# Input: n = 1
# Output: 0

# n = 10
n = 499979
p count_primes(n)
