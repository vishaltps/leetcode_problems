# Given a pattern and a string s, find if s follows the same pattern.

# Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in s.



def word_pattern(pattern, s)

  # splitted_pa = pattern.split('')
  # splitted_t = t.split('')
  # i = 0
  # h = {}
  # while i <= s.length
  #   condittion_one = ((h.key? splitted_s[i]) && (h[splitted_s[i]] != splitted_t[i]))
  #   return false if  condittion_one

  #   h[splitted_s[i]] = splitted_t[i]
  #   i += 1
  # end
  # true
  h = {}
  splitted_s = s.split(' ')
  return false if pattern.length != splitted_s.length
  pattern.each_char.with_index do |p, i|
    
    condittion_one = ((h.key? p) && (h[p] != splitted_s[i]))
    condittion_two = ((h.value? splitted_s[i]) && ( h.key(splitted_s[i]) != p))
    return false if  condittion_one || condittion_two

    h[p] = splitted_s[i]
  end
  true
end

# Example 1:

# Input: pattern = "abba", s = "dog cat cat dog"
# Output: true
pattern = "abba"
 s = "dog cat cat dog"
p word_pattern(pattern, s)
# Example 2:

# Input: pattern = "abba", s = "dog cat cat fish"
# Output: false
# Example 3:
pattern = "abba"
 s = "dog cat cat fish"
 p word_pattern(pattern, s)

# Input: pattern = "aaaa", s = "dog cat cat dog"
# Output: false
pattern = "aaaa"
 s = "dog cat cat dog"
p word_pattern(pattern, s)
pattern = "abba"
s = "dog dog dog dog"
p word_pattern(pattern, s)

pattern = "aaa"
s = "aa aa aa aa"
p word_pattern(pattern, s)