# Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

# Each letter in magazine can only be used once in ransomNote.

require 'pry'
def can_construct(ransom_note, magazine)
  splitted_ransom_note = ransom_note.split('')
  result = splitted_ransom_note.each_with_object(Hash.new(0)) do |c, h|
    h[c] += 1
  end
  magazine.each_char do |c|
    result[c] -= 1 if result.key? c
  end
  result.count { |_, v| v.positive? }.zero?
end

ransom_note = "a"
 magazine = "b"

#  ransom_note = "aa"
#  magazine = "bb"

#  ransom_note = "aa"
#  magazine = "aab"

# ransom_note = "aab"
# magazine = "baa"


p can_construct(ransom_note, magazine)
# Input: ransomNote = "a", magazine = "b"
# Output: false


# Input: ransomNote = "aa", magazine = "ab"
# Output: false


# Input: ransomNote = "aa", magazine = "aab"
# Output: true
