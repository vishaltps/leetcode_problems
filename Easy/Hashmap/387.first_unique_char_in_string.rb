# Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.

def first_uniq_char(s)
  # matching = s.chars.tally.find {|_k,v| v == 1 } 
  matching = s.chars.group_by(&:itself).find { |_, chars| chars.length == 1 }
  matching ? s.index(matching[0]) : -1
end

# Example 1:

# Input: s = "leetcode"
# Output: 0
# Example 2:

# Input: s = "loveleetcode"
# Output: 2
# Example 3:

# Input: s = "aabb"
# Output: -1

# s = "leetcode"
s = "loveleetcode"
# s = "aabb"
p first_uniq_char(s)