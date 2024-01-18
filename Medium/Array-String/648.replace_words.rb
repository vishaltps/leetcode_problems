# In English, we have a concept called root, which can be followed by some other word to form another longer word - let's call this word successor. For example, when the root "an" is followed by the successor word "other", we can form a new word "another".

# Given a dictionary consisting of many roots and a sentence consisting of words separated by spaces, replace all the successors in the sentence with the root forming it. If a successor can be replaced by more than one root, replace it with the root that has the shortest length.

# Return the sentence after the replacement.

def replace_words(dictionary, sentence)
  ary = sentence.split(' ')

  i = 0
  while i < ary.size
    dictionary.each do |d|
      ary[i] = d if ary[i][0...d.length] == d
    end
    i += 1
  end
  ary.join(' ') 
  # sentence.split(' ').map { |word| find_prefix(dictionary, word) }.join(' ')
end

def find_prefix(dictionary, word)
  dictionary.each do |d|
    return d if word[0...d.length] == d
  end
  word
end

# Example 1:

# Input: dictionary = ["cat","bat","rat"], sentence = "the cattle was rattled by the battery"
# Output: "the cat was rat by the bat"
# Example 2:

# Input: dictionary = ["a","b","c"], sentence = "aadsfasf absbs bbab cadsfafs"
# Output: "a a b c"
 

dictionary = ["cat","bat","rat"]
sentence = "the cattle was rattled by the battery"
# dictionary = ["a","b","c"]
#  sentence = "aadsfasf absbs bbab cadsfafs"
p replace_words(dictionary, sentence)