# Given an integer n, return the number of trailing zeroes in n!.

# Note that n! = n * (n - 1) * (n - 2) * ... * 3 * 2 * 1.

def trailing_zeroes(n)
  return 0 if n.zero?
  
  factorail = (1..n).inject(:*)
  fact_digits = factorail.digits
  count = 0
  
  fact_digits.length.times do |i|
    return count if fact_digits[i] != 0
    
    count += 1
  end
  
  count
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
 

