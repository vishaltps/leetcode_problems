# A string is good if there are no repeated characters.

# Given a string s​​​​​, return the number of good substrings of length three in s​​​​​​.

# Note that if there are multiple occurrences of the same substring, every occurrence should be counted.

# A substring is a contiguous sequence of characters in a string.


def count_good_substrings(s)
  left = count = 0
  right = 2
  (s.size-2).times do |i|
    count += 1 if s[i..i+2].chars.uniq.size == 3
  end
  while right < s.length
    count += 1 if s[left..right].chars.uniq.size == 3

    left += 1
    right += 1
  end
  count
end

# Example 1:

# Input: s = "xyzzaz"
# Output: 1
# Explanation: There are 4 substrings of size 3: "xyz", "yzz", "zza", and "zaz". 
# The only good substring of length 3 is "xyz".
# Example 2:

# Input: s = "aababcabc"
# Output: 4
# Explanation: There are 7 substrings of size 3: "aab", "aba", "bab", "abc", "bca", "cab", and "abc".
# The good substrings are "abc", "bca", "cab", and "abc".
# s = "xyzzaz"
s = "aababcabc"
p count_good_substrings(s)