# Given two strings text1 and text2, return the length of their longest common subsequence. If there is no common subsequence, return 0.

# A subsequence of a string is a new string generated from the original string with some characters (can be none) deleted without changing the relative order of the remaining characters.

# For example, "ace" is a subsequence of "abcde".
# A common subsequence of two strings is a subsequence that is common to both strings.

def longest_common_subsequence(text1, text2)
  m = text1.length
  n = text2.length
  dp = Array.new(m + 1) { Array.new(n + 1, 0) }

  for i in 1..m
    for j in 1..n
      if text1[i - 1] == text2[j - 1]
        dp[i][j] = dp[i - 1][j - 1] + 1
      else
        dp[i][j] = [dp[i - 1][j], dp[i][j - 1]].max
      end
    end
  end
  binding.irb
  dp[m][n]
end

# Example 1:

# Input: text1 = "abcde", text2 = "ace" 
# Output: 3  
# Explanation: The longest common subsequence is "ace" and its length is 3.
# Example 2:

# Input: text1 = "abc", text2 = "abc"
# Output: 3
# Explanation: The longest common subsequence is "abc" and its length is 3.
# Example 3:

# Input: text1 = "abc", text2 = "def"
# Output: 0
# Explanation: There is no such common subsequence, so the result is 0.
 
# text1 = "abcde"
#  text2 = "ace" 
# text1 = "abc"
#  text2 = "def"

# text1 = "abc"
#  text2 = "abc"
text1 = "ezupkr"
text2 = "ubmrapg"

 p longest_common_subsequence(text1, text2)