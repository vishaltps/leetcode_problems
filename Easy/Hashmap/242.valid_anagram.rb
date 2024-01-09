
# Given two strings s and t, return true if t is an anagram of s, and false otherwise.

# An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

def is_anagram(s, t)
  return false if s.length != t.length

  char_count = Hash.new(0)

  s.each_char do |char|
    char_count[char] += 1
  end

  t.each_char do |char|
    char_count[char] -= 1
    return false if char_count[char] < 0
  end

  return true

end

 s = "anagram"
  t = "nagaram"
p is_anagram(s, t)

 s = "rat"
  t = "car"
 p is_anagram(s, t)