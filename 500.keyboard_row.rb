# Given an array of strings words, return the words that can be typed using letters of the alphabet on only one row of American keyboard like the image below.

# In the American keyboard:

# the first row consists of the characters "qwertyuiop",
# the second row consists of the characters "asdfghjkl", and
# the third row consists of the characters "zxcvbnm".
def find_words(words)
  keyboard_characters = Array.new
  keyboard_characters.push("qwertyuiop".chars, "asdfghjkl".chars, "zxcvbnm".chars)

  result = []
  words.each do |word|
    if keyboard_characters.any? { |sa| word.downcase.chars.all? { |val| sa.include?(val) } }
      result.push(word)
    end
  end
  result
end

words = ["Hello","Alaska","Dad","Peace"]
p find_words(words)