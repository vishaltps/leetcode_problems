
def dfs(board, r, c, k, word_chars)
  if k == word_chars.length
    return true
  end
  
  return false if r < 0 || c < 0 || r >= board.length || c >= board[r].length || board[r][c] != word_chars[k]

  result = dfs(board, r + 1 , c, k + 1, word_chars) || dfs(board, r - 1 , c, k + 1, word_chars) || dfs(board, r , c + 1, k + 1, word_chars) || dfs(board, r , c -1 , k + 1, word_chars)

  result
end
def exist_word_search(board, word)
  word_chars = word.chars
  rows, cols = board.length, board[0].length

  rows.times do |r|
    cols.times do |c|
      return true if board[r][c] == word_chars[0] && dfs(board, r, c, 0, word_chars)
    end
  end

  false
end


board = [
  ['A', 'B', 'C', 'E'],
  ['S', 'F', 'C', 'S'],
  ['A', 'D', 'E', 'E']
]
word = 'ABFDE'
puts exist_word_search(board, word)  # Output: true
