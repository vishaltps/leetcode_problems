# Given a string array words, return the maximum value of length(word[i]) * length(word[j]) where the two words do not share common letters. If no such two words exist, return 0.

require 'pry'

def max_product(words)
  max_len = 0
  bit_masks = Array.new(words.length, 0) 
  words.each_with_index do |word, i|
    word.each_char {|c| bit_masks[i] |= 1 << (c.ord  - 'a'.ord)}
  end
  

  (0...words.length).each do |i|
    (i + 1...words.length).each do |j|
      if (bit_masks[i] & bit_masks[j]).zero?
        max_len = [max_len, (words[i].length * words[j].length)].max
      end
    end
  end

  max_len












  # h = {}
  # words.each do |word|
  #   mask = 0

  #   word.chars.uniq.each do |c|
  #     mask |= (1 << (c.ord - 97))
  #   end

  #   h[mask] = [h[mask] || 0, word.length].max
  # end
  # (h.map { |k1, v1| h.map { |k2, v2| ( k2 & k1 == 0 || nil) && v1 * v2 }.compact }.flatten + [0]).max
  # words = words.sort_by(&:length).reverse
  # bins = words.map do |word|
  #   word.chars.reduce(0) { |val, ch| val |= 1 << (ch.ord - 'a'.ord) }
  # end
  

  # result = Hash.new(0)
  # output = []
  # words.each do |word|
  #   flag = true
  #   word.each_char do |c|
  #     if result.key? c
  #       flag = false
  #       break
  #     end

  #     result[c] += 1
  #   end
  #   binding.pry
  #   output << word if flag == true
  # end
  # binding.pry
end

words = ["abcw","baz","foo","bar","xtfn","abcdef"]

p max_product(words)