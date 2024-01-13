# You are given two strings of the same length s and t. In one step you can choose any character of t and replace it with another character.

# Return the minimum number of steps to make t an anagram of s.

# An Anagram of a string is a string that contains the same characters with a different (or the same) ordering.

def min_steps(s, t)
  min_steps = 0
  h = Hash.new(0)
  s.each_char do |c|
    h[c] += 1
  end

  t.each_char do |c|
    h[c].positive? ? h[c] -= 1 : min_steps += 1
  end
  min_steps
end

# Example 1:

# Input: s = "bab", t = "aba"
# Output: 1
# Explanation: Replace the first 'a' in t with b, t = "bba" which is anagram of s.
# Example 2:

# Input: s = "leetcode", t = "practice"
# Output: 5
# Explanation: Replace 'p', 'r', 'a', 'i' and 'c' from t with proper characters to make t anagram of s.
# Example 3:

# Input: s = "anagram", t = "mangaar"
# Output: 0
# Explanation: "anagram" and "mangaar" are anagrams. 

# s = "bab"
#  t = "aba"
s = "leetcode"
 t = "practice"
 p min_steps(s, t)