# Given an integer n, return the least number of perfect square numbers that sum to n.

# A perfect square is an integer that is the square of an integer; in other words, it is the product of some integer with itself. For example, 1, 4, 9, and 16 are perfect squares while 3 and 11 are not.

def num_squares(n)
  dp = Array.new(n+1,0)
  dp[0] = 0
  (1..n).each { |i| dp[i] = Float::INFINITY}

  (0..n*3/4).each do |i|
    j = 0
    while i + j*j <= n 
        dp[i + j*j] = [dp[i + j * j], dp[i] + 1].min
        j += 1
    end
  end
  dp[n] 
end



# Example 1:

# Input: n = 12
# Output: 3
# Explanation: 12 = 4 + 4 + 4.
# Example 2:

# Input: n = 13
# Output: 2
# Explanation: 13 = 4 + 9.
