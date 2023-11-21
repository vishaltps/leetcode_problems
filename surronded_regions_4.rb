
def dfs(board, r, c)
  board[r][c] = "T" if board[r][c] == 'O'
end

def solve(board)
  rows, cols = board.length, board[0].length

  rows.times do |r|
    dfs(board, r, 0)
    dfs(board, r, cols - 1)
  end

  cols.times do |c|
    dfs(board, 0, c)
    dfs(board, rows - 1, c)
  end

  rows.times do |r|
    cols.times do |c|
      if board[r][c] == "T"
        board[r][c] = "O"
      elsif board[r][c] == "O"
        board[r][c] = "X"
      end
    end
  end
  board
end

board = [
  ["X","X","X","X"],
  ["X","O","O","X"],
  ["X","X","O","X"],
  ["X","O","X","X"]
]

p solve(board)
