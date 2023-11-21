

def dfs(board, r, c)
  return if r < 0 || c < 0 || r >= board.length || c >= board[r].length || board[r][c] != 'O'

  board[r][c] = 'T'
  
  dfs(board, r + 1, c)
  dfs(board, r - 1, c)
  dfs(board, r, c + 1)
  dfs(board, r, c - 1)
end

def solve(board)
  rows, cols = board.length, board[0].length

  rows.times do |r|
    puts r
    dfs(board, r, 0)
    dfs(board, r, cols - 1)
  end

  cols.times do |c|
    dfs(board, 0, c)
    dfs(board, rows - 1, c)
  end
  


  rows.times do |r|
    cols[r].times do |c|
      if board[r][c] == 'O'
        board[r][c] = 'X'
      elsif board[r][c] == 'T'
        board[r][c] = 'O'
      end
    end
  end
  board
end
# Input: board = [["X","X","X","X"],["X","O","O","X"],["X","X","O","X"],["X","O","X","X"]]


# Output: [["X","X","X","X"],["X","X","X","X"],["X","X","X","X"],["X","O","X","X"]]
# Explanation: Notice that an 'O' should not be flipped if:
# - It is on the border, or
# - It is adjacent to an 'O' that should not be flipped.
# The bottom 'O' is on the border, so it is not flipped.
# The other three 'O' form a surrounded region, so they are flipped.

board = [["X","X","X","X"],["X","O","O","X"],["X","X","O","X"],["X","O","X","X"]]

p solve(board)