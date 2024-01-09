def merge_alternately(word1, word2)
  mw_length = [word1.length, word2.length].min
  i = 0
  result = ''
  while i < mw_length
    result += word1[i]
    result += word2[i]
    i += 1
  end
  if word1.length != word2.length
    if word1.length < word2.length
      result += word2[mw_length..word2.length]
    else
      result += word1[mw_length..word1.length]
    end
  end
  result
end


word1 = "abc"
word2 = "pqr"
# word1 = "ab"
# word2 = "pqrs"
# word1 = "abcd"
# word2 = "pq"

p merge_alternately(word1, word2)
 