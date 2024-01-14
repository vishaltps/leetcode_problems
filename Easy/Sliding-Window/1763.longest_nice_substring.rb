# A string s is nice if, for every letter of the alphabet that s contains, it appears both in uppercase and lowercase. For example, "abABB" is nice because 'A' and 'a' appear, and 'B' and 'b' appear. However, "abA" is not because 'b' appears, but 'B' does not.

# Given a string s, return the longest substring of s that is nice. If there are multiple, return the substring of the earliest occurrence. If there are none, return an empty string.

def longest_nice_substring(s)
  # longest_str = ''
  # left = 0
  # right = 1
  # while right < s.length
  #   if s[left].downcase == s[right].downcase
  #     longest_str = s[left..right] if s[left..right].length > longest_str.length
  #   else
  #     left += 1
  #   end
  #   right += 1
  # end
  # longest_str
  max_l = max_r = nil
  
  max_length = 0

  i = 0
  while i < s.size
    j = i
    found_char_hash = Hash.new
    h = Hash.new(0)
    while j < s.size
      c = s[j]
      h[c] += 1
      if !found_char_hash[c.downcase] && h[c.downcase] && h[c.downcase] > 0 && h[c.upcase] && h[c.upcase] > 0
        found_char_hash[c.downcase] = true
      end
      length = j - i + 1
      if found_char_hash.size * 2 == h.size && length > 1 
        if length > max_length
          max_l = i
          max_r = j
          max_length = length
        end
      end
      j+= 1
    end
    i += 1
  end
  max_l ? s[max_l..max_r] : ''
end

# Example 1:

# Input: s = "YazaAay"
# Output: "aAa"
# Explanation: "aAa" is a nice string because 'A/a' is the only letter of the alphabet in s, and both 'A' and 'a' appear.
# "aAa" is the longest nice substring.
# Example 2:

# Input: s = "Bb"
# Output: "Bb"
# Explanation: "Bb" is a nice string because both 'B' and 'b' appear. The whole string is a substring.
# Example 3:

# Input: s = "c"
# Output: ""
# Explanation: There are no nice substrings.

# s = "YazaAay"
s = "Bb"
# s = "c"
# s = "dDzeE"
# s = "cChH"


 p longest_nice_substring(s)