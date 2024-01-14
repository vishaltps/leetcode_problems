# Two strings are considered close if you can attain one from the other using the following operations:

# Operation 1: Swap any two existing characters.
# For example, abcde -> aecdb
# Operation 2: Transform every occurrence of one existing character into another existing character, and do the same with the other character.
# For example, aacabb -> bbcbaa (all a's turn into b's, and all b's turn into a's)
# You can use the operations on either string as many times as necessary.

# Given two strings, word1 and word2, return true if word1 and word2 are close, and false otherwise.

def close_strings(word1, word2)
  return false if word1.length != word2.length
  return true if word1.chars.sort.join == word2.chars.sort.join

  a = Hash.new(0)
   b = Hash.new(0)

  word2.each_char do |c|
    a[c] += 1
  end

  word1.each_char do |c|
    b[c] += 1
  end
  
  a.values.sort == b.values.sort && a.keys.sort == b.keys.sort
end

# Example 1:

# Input: word1 = "abc", word2 = "bca"
# Output: true
# Explanation: You can attain word2 from word1 in 2 operations.
# Apply Operation 1: "abc" -> "acb"
# Apply Operation 1: "acb" -> "bca"
# Example 2:

# Input: word1 = "a", word2 = "aa"
# Output: false
# Explanation: It is impossible to attain word2 from word1, or vice versa, in any number of operations.
# Example 3:

# Input: word1 = "cabbba", word2 = "word1"
# Output: true
# Explanation: You can attain word2 from word1 in 3 operations.
# Apply Operation 1: "cabbba" -> "caabbb"
# Apply Operation 2: "caabbb" -> "baaccc"
# Apply Operation 2: "baaccc" -> "abbccc"

# word1 = "abc"
# word2 = "bca"
word1 = "cabbba"
word2 = "abbccc"
# word1 = "cabbba"
# word2 = "aabbss"
# word1 = "abbzccca"
# word2 = "babzzczc"
# word1 = "uau"
# word2 = "ssx"

p close_strings(word1, word2)