# Given an array of strings strs, group the anagrams together. You can return the answer in any order.

# An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

require 'pry'
# def group_anagrams(strs)
#   result = []
#   if strs.all? { |element| element.strip.empty? }
#   end

#   strs.each_with_index do |str, _i|
#     next if result.flatten.include? str

#     result << [str]
#     (strs - [str]).each do |s|
#       h = Hash.new(0)
#       s.each_char do |c|
#         h[c] += 1
#       end

#       str.each_char do |c|
#         h[c] -= 1
#         result.last << s if h.values.all? 0
#       end
#     end
#   end
#   result
# end

def group_anagrams(strs)
  hash = {}
  strs.each do |str|
    key = str.split('').sort.join('')
    hash[key] ||= []
    hash[key].push(str)
  end
  hash.values
end


# Example 1:

# Input: strs = ["eat","tea","tan","ate","nat","bat"]
# Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
# Example 2:

# Input: strs = [""]
# Output: [[""]]
# Example 3:

# Input: strs = ["a"]
# Output: [["a"]]
 
strs = ["eat","tea","tan","ate","nat","bat"]
# strs = ["",""]
p group_anagrams(strs)