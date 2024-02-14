# A transformation sequence from word beginWord to word endWord using a dictionary wordList is a sequence of words beginWord -> s1 -> s2 -> ... -> sk such that:

# Every adjacent pair of words differs by a single letter.
# Every si for 1 <= i <= k is in wordList. Note that beginWord does not need to be in wordList.
# sk == endWord
# Given two words, beginWord and endWord, and a dictionary wordList, return the number of words in the shortest transformation sequence from beginWord to endWord, or 0 if no such sequence exists.

from collections import deque

def ladderLength(beginWord, endWord, wordList):
  if not endWord in wordList:
    return 0 
  
  queue = deque([beginWord])
  word_set = set(wordList)
  ladderLength = 1
  while queue:
    size = len(queue)

    for _ in range(size):
      current_word = queue.popleft()

      for i in range(len(current_word)):
        for new_char in range(ord('a'), ord('z') + 1):
          if chr(new_char) == current_word[i]:
            continue

          transpose_word = list(current_word)
          transpose_word[i] = chr(new_char)
          transpose_word = ''.join(transpose_word)

          if transpose_word == endWord:
            return ladderLength + 1

          if transpose_word in word_set:
            queue.append(transpose_word)
            word_set.remove(transpose_word)

    ladderLength += 1

  0
    



beginWord = "hit"
endWord = "cog"
wordList = ["hot","dot","dog","lot","log","cog"]
result = ladderLength(beginWord, endWord, wordList)
print(result)