# A transformation sequence from word beginWord to word endWord using a dictionary wordList is a sequence of words beginWord -> s1 -> s2 -> ... -> sk such that:

# Every adjacent pair of words differs by a single letter.
# Every si for 1 <= i <= k is in wordList. Note that beginWord does not need to be in wordList.
# sk == endWord
# Given two words, beginWord and endWord, and a dictionary wordList, return the number of words in the shortest transformation sequence from beginWord to endWord, or 0 if no such sequence exists.

def ladder_length(begin_word, end_word, word_list)
  return 0 unless (word_list.include? end_word)

  word_set = Set.new(word_list)
  queue = [begin_word]
  ladder_length = 1

  until queue.empty?
    size = queue.size
    size.times do
      current_word = queue.shift

      current_word.each_char.with_index do |c, i|
        ('a'..'z').each do |new_char|
          next if new_char == c 

          tranform_word = current_word.dup
          tranform_word[i] = new_char
          return ladder_length + 1 if (word_set.include? tranform_word) && tranform_word == end_word

          if word_set.include? tranform_word
            queue.push(tranform_word)
            word_set.delete(tranform_word)
          end
        end
      end
    end
    ladder_length += 1
  end
  0
end

# The time complexity of this code is O(N*M^2), where N is the number of words in the word list and M is the length of each word. This is because for each word in the word list, we iterate through each character and try replacing it with each letter of the alphabet, resulting in M^2 operations. We do this for each word in the word list, resulting in a total of N*M^2 operations.

#   The space complexity of this code is O(N), where N is the number of words in the word list. This is because we create a set to store the word list, which requires O(N) space. Additionally, we use a queue to perform breadth-first search, which can store up to N words at a time. Therefore, the space complexity is O(N).
  
# Example 1:

# Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log","cog"]
# Output: 5
# Explanation: One shortest transformation sequence is "hit" -> "hot" -> "dot" -> "dog" -> cog", which is 5 words long.
# Example 2:

# Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log"]
# Output: 0
# Explanation: The endWord "cog" is not in wordList, therefore there is no valid transformation sequence.
begin_word  = 'hit'
end_word = 'cog'
word_list =  ["hot","dot","dog","lot","log","cog"]

# begin_word = "hot"
# end_word = "dog"
# word_list = ["hot","dog"]

# begin_word = "hot"
# end_word = "dog"

# word_list = ["hot","dog","dot"]

 p ladder_length(begin_word, end_word, word_list)