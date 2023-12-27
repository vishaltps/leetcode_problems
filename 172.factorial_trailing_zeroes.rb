require 'pry'

def trailing_zeroes(n)
  count = 0
  divisor = 5

  while n / divisor > 0
    count += n / divisor
    divisor *= 5
  end

  count

  # return 0 if n.zero?

  # factorail = (1..n).inject(:*)
  # fact_digits = factorail.digits
  # count = 0
  
  # fact_digits.length.times do |i|
  #   break if fact_digits[i] != 0

  #   count += 1
  # end

  # count
end

# Example 1:

# Input: n = 3
# Output: 0
# Explanation: 3! = 6, no trailing zero.
# Example 2:

# Input: n = 5
# Output: 1
# Explanation: 5! = 120, one trailing zero.
# Example 3:

# Input: n = 0
# Output: 0

n = 8324
# n = 5

p trailing_zeroes(n)