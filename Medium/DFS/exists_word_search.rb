def exist_word_search(board, word)
  rows, cols = board.length, board[0].length
  word_chars = word.chars

  def dfs(x, y, k, word_chars, rows, cols, board)
    
    if k == word_chars.length
      puts "Final condition"
      return true 
    end
    return false if x < 0 || x >= rows || y < 0 || y >= cols || board[x][y] != word_chars[k]
    

    original_char = board[x][y]
    puts "original char - #{original_char}"
    board[x][y] = '/'


    result = dfs(x + 1, y, k + 1, word_chars, rows, cols, board) || dfs(x - 1, y, k + 1, word_chars, rows, cols, board) || dfs(x, y + 1, k + 1, word_chars, rows, cols, board) || dfs(x, y - 1, k + 1, word_chars, rows, cols, board)

    board[x][y] = original_char

    result
  end

  rows.times do |x|
    cols.times do |y|
      return true if board[x][y] == word_chars[0] && dfs(x, y, 0, word_chars, rows, cols, board)
    end
  end

  false
end

# Example usage:
board = [
  ['A', 'B', 'C', 'E'],
  ['S', 'F', 'C', 'S'],
  ['A', 'D', 'E', 'E']
]
word = 'ABCCED'
puts exist_word_search(board, word)  # Output: true
