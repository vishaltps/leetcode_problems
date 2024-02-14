# A transformation sequence from word beginWord to word endWord using a dictionary wordList is a sequence of words beginWord -> s1 -> s2 -> ... -> sk such that:

# Every adjacent pair of words differs by a single letter.
# Every si for 1 <= i <= k is in wordList. Note that beginWord does not need to be in wordList.
# sk == endWord
# Given two words, beginWord and endWord, and a dictionary wordList, return the number of words in the shortest transformation sequence from beginWord to endWord, or 0 if no such sequence exists.

def ladder_length(begin_word, end_word, word_list)
  return 0 unless word_list.include? end_word

  queue = [begin_word]
  ladder_length = 1
  word_set = Set.new(word_list)

  until queue.empty?
    size = queue.size

    size.times do
      current_word = queue.shift
      
      current_word.each_char.with_index do |c, i|
        ('a'..'z').each do |new_char|
          next if new_char == c

          tranpose_word = current_word.dup
          tranpose_word[i] = new_char

          return ladder_length + 1 if (word_set.include? tranpose_word) && tranpose_word == end_word

          if word_set.include? tranpose_word
            queue.push(tranpose_word)
            word_set.delete(tranpose_word)
          end
        end
      end
    end
    ladder_length += 1
  end
  0
end

# Example 1:

# Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log","cog"]
# Output: 5
# Explanation: One shortest transformation sequence is "hit" -> "hot" -> "dot" -> "dog" -> cog", which is 5 words long.
# Example 2:

# Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log"]
# Output: 0
# Explanation: The endWord "cog" is not in wordList, therefore there is no valid transformation sequence.
 


begin_word = "hit"
end_word = "cog"
word_list = ["hot","dot","dog","lot","log","cog"]

p ladder_length(begin_word, end_word, word_list)