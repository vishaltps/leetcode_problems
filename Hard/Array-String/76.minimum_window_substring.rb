# Given two strings s and t of lengths m and n respectively, return the minimum window 
# substring
#  of s such that every character in t (including duplicates) is included in the window. If there is no such substring, return the empty string "".

# The testcases will be generated such that the answer is unique.

def min_window(s, t)
  return '' if s.nil? || t.nil? || s.empty? || t.empty? || s.length < t.length

  t_counts = Hash.new(0)
  required_chars = t.length

  t.each_char {|c|t_counts[c] += 1}

  left = right = 0
  min_len = Float::INFINITY
  min_window_start = 0
  n = s.length
  while right < n
    required_chars -= 1 if t_counts[s[right]] > 0

    t_counts[s[right]] -= 1
    right += 1

    while required_chars == 0
      if right - left < min_len
        min_len = right - left
        min_window_start = left
      end

      t_counts[s[left]] += 1
      required_chars += 1 if t_counts[s[left]] > 0

      left += 1
    end
  end
  min_len == Float::INFINITY ? '' : s[min_window_start...(min_window_start + min_len)]
end

# Example 1:

# Input: s = "ADOBECODEBANC", t = "ABC"
# Output: "BANC"
# Explanation: The minimum window substring "BANC" includes 'A', 'B', and 'C' from string t.
# Example 2:

# Input: s = "a", t = "a"
# Output: "a"
# Explanation: The entire string s is the minimum window.
# Example 3:

# Input: s = "a", t = "aa"
# Output: ""
# Explanation: Both 'a's from t must be included in the window.
# Since the largest window of s only has one 'a', return empty string.

s = "ADOBECODEBANC"
t = "ABC"
# s = "ab"
# t = "A"
# s = "bdab"
# t = "ab"



p min_window(s, t)