# Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.

require 'pry'
def reverse_words(s)
  splitted_s = s.split(' ')
  output = []

  splitted_s.each do |word|
    reversed_word = reverse_word_manually(word)
    output << reversed_word
  end

  output.join(' ')
end

def reverse_word_manually(word)
  reversed_word = ''
  (word.length - 1).downto(0).each do |i|
    reversed_word += word[i]
  end

  reversed_word
end

# Input: s = "Let's take LeetCode contest"
# Output: "s'teL ekat edoCteeL tsetnoc"


s = "Let's take LeetCode contest"
p reverse_words(s)