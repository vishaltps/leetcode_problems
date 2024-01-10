# Given a string s, reverse only all the vowels in the string and return it.

# The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.



VOWELS = %w[A E I O U].freeze
def reverse_vowels(s)
  return s if s.length == 1

  left = 0
  right = s.length - 1

  while left < right
    if (VOWELS.include? s[left].upcase) && (VOWELS.include? s[right].upcase)
      temp = s[left]
      s[left] = s[right]
      s[right] = temp
      left += 1
      right -= 1
    elsif !(VOWELS.include? s[left].upcase)
      left += 1
    elsif !(VOWELS.include? s[right].upcase)
      right -= 1
    end
  end
  s
end

# Example 1:

# Input: s = "hello"
# Output: "holle"
# Example 2:

# Input: s = "leetcode"
# Output: "leotcede"

s = "hello"
p reverse_vowels(s)