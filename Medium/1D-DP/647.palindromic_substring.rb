# Given a string s, return the number of palindromic substrings in it.

# A string is a palindrome when it reads the same backward as forward.

# A substring is a contiguous sequence of characters within the string.

def count_substrings(s)
  total_count = 0
  dp = Array.new(s.length) { Array.new(s.length, false) }

  (0..s.length - 1).reverse_each do |start|
    (start..s.length - 1).each do |end_idx|
      if s[start] == s[end_idx] && (end_idx - start <= 2 || dp[start + 1][end_idx - 1])
        dp[start][end_idx] = true
        total_count += 1
      end
    end
  end

  total_count
end

# Example 1:

# Input: s = "abc"
# Output: 3
# Explanation: Three palindromic strings: "a", "b", "c".
# Example 2:

# Input: s = "aaa"
# Output: 6
# Explanation: Six palindromic strings: "a", "a", "a", "aa", "aa", "aaa".
 

s = "abc"
p count_substrings(s)