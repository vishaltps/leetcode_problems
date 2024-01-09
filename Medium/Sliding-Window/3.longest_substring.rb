# Given a string s, find the length of the longest 
# substring
#  without repeating characters.

 

def length_of_longest_substring(s)
  return 0 if s.length <= 0

  longest_count = first_index = second_index = 0
  h = {}

  while second_index < s.length
    if h[s[second_index]] && h[s[second_index]] >= first_index
      current_count = 0
      first_index = h[s[second_index]] + 1
      h[s[second_index]] = second_index
    else
      h[s[second_index]] = second_index
      current_count = second_index - first_index + 1
      longest_count = [longest_count, current_count].max
    end
    second_index += 1
  end
  longest_count
end

# Example 1:

# Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.
# Example 2:

# Input: s = "bbbbb"
# Output: 1
# Explanation: The answer is "b", with the length of 1.
# Example 3:

# Input: s = "pwwkew"
# Output: 3
# Explanation: The answer is "wke", with the length of 3.
# Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
 

s = "abcabcbb"
# s = "pwwkew"
# s = "bbbbb"
# s = "dvdf"
p length_of_longest_substring(s)