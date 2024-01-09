# Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

# A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

def is_subsequence(s, t)
  # result = ""
  # splitted_s = s.split('')

  # t.each_char do |a|
  #   result += a if splitted_s.include? a
  #   return true if result == s
  # end
  # false
  first_index = 0
  second_index = 0
  while first_index < s.length && second_index < t.length
    first_index += 1 if s[first_index] == t[second_index]
    second_index += 1
  end
  first_index == s.length
end


# Example 1:

# Input: s = "abc", t = "ahbgdc"
# Output: true
# s = "abc"
# t = "ahbgdc"
# s = "axc"
# t = "ahbgdc"
s = "ab"
t = "baab"


p is_subsequence(s, t)
# Example 2:

# Input: s = "axc", t = "ahbgdc"
# Output: false


