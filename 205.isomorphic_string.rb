# Given two strings s and t, determine if they are isomorphic.

# Two strings s and t are isomorphic if the characters in s can be replaced to get t.

# All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.


require 'pry'
def is_isomorphic(s, t)
  return false if s.length != t.length

  splitted_s = s.split('')
  splitted_t = t.split('')
  i = 0
  h = {}
  while i <= s.length
    condittion_one = ((h.key? splitted_s[i]) && (h[splitted_s[i]] != splitted_t[i]))
    condittion_two = ((h.value? splitted_t[i]) && ( h.key(splitted_t[i]) != splitted_s[i]))
    return false if  condittion_one || condittion_two

    h[splitted_s[i]] = splitted_t[i]
    i += 1
  end
  true
end

# # Input: s = "egg", t = "add"
# # Output: true
# s = "egg"
# t = "add"
# p is_isomorphic(s , t)

# # Example 2:
# s = "foo"
# t = "bar"
# p is_isomorphic(s , t)

# # Input: s = "foo", t = "bar"
# # Output: false
# # Example 3:

# # Input: 
# s = "paper"
# t = "title"
# p is_isomorphic(s , t)

s = "badc"
t = "baba"
p is_isomorphic(s , t)


# Output: true
 