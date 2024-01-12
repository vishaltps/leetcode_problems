# Given a string s and an integer k, return the maximum number of vowel letters in any substring of s with length k.

# Vowel letters in English are 'a', 'e', 'i', 'o', and 'u'.

V = 'aeiou'
def max_vowels(s, k)
  s = s.chars.map { |c| V.include?(c) ? 1 : 0}
  subsum = s[0...k].sum
  max = subsum

  k.upto(s.size - 1) do |i|
    subsum -= s[i - k]
    subsum += s[i]
    max = [subsum, max].max
  end
  max
  # max = 0
  # 0.upto(s.length - k).each do |i|
  #   current = s[i...i + k].count('aeiou')
  #   max = [current, max].max
  # end
  # max
end

# Example 1:

# Input: s = "abciiidef", k = 3
# Output: 3
# Explanation: The substring "iii" contains 3 vowel letters.
# Example 2:

# Input: s = "aeiou", k = 2
# Output: 2
# Explanation: Any substring of length 2 contains 2 vowels.
# Example 3:

# Input: s = "leetcode", k = 3
# Output: 2
# Explanation: "lee", "eet" and "ode" contain 2 vowels.

# s = "abciiidef"
#  k = 3
# s = "leetcode"
# k = 3
s = "aeiou"
 k = 2
# s = "weallloveyou"
# k = 7

p max_vowels(s, k)