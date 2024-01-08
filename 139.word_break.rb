# Given a string s and a dictionary of strings wordDict, return true if s can be segmented into a space-separated sequence of one or more dictionary words.

# Note that the same word in the dictionary may be reused multiple times in the segmentation.
require 'pry'
# def word_break(s, word_dict)
#   result = ''
#   i = 0
#   while i < s.length
#     return true if word_dict.empty?

#     result += s[i]
#     if word_dict.include? result
#       word_dict.shift
#       result = ''
#     end
#     i += 1
#   end

#   word_dict.empty?
# end
def word_break(s, word_dict)
  # n = s.length
  # dp = Array.new(n + 1, false)
  # dp[0] = true

  # (1..n).each do |end_idx|
  #   (0..end_idx - 1).each do |start_idx|
  #     if dp[start_idx] && word_dict.include?(s[start_idx...end_idx])
  #       dp[end_idx] = true
  #       break
  #     end
  #   end
  # end

  # dp[n]
  n = s.length
  dp = Array.new(n + 1, false)
  dp[0] = true
  
  (1..n).each do |end_idx|
    (0..end_idx - 1).each do |start_idx|
      if dp[j] && word_dict.include?(s[start_idx..i])
        dp[end_idx] = true
        break
      end
    end
  end
  
  dp[n]
end


# Example 1:

# Input: s = "leetcode", wordDict = ["leet","code"]
# Output: true
# Explanation: Return true because "leetcode" can be segmented as "leet code".
# Example 2:

# Input: s = "applepenapple", wordDict = ["apple","pen"]
# Output: true
# Explanation: Return true because "applepenapple" can be segmented as "apple pen apple".
# Note that you are allowed to reuse a dictionary word.
# Example 3:

# Input: s = "catsandog", wordDict = ["cats","dog","sand","and","cat"]
# Output: false

s = "leetcode"
word_dict = ["leet","code"]
# s = "applepenapple"
#  word_dict = ["apple","pen"]
# s = "catsandog"
# word_dict = ["cats","dog","sand","and","cat"]
# s = "bb"
# word_dict = ["a","b","bbb","bbbb"]

p word_break(s, word_dict)