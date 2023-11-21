# Given an m x n matrix board containing 'X' and 'O', capture all regions that are 4-directionally surrounded by 'X'.

# A region is captured by flipping all 'O's into 'X's in that surrounded region.

require 'pry'
def dfs(r,c,board)
  return if r < 0 || c < 0 || r >= board.length || c >= board[r].length || board[r][c] != 'O'
  
  board[r][c] = 'T'

  dfs(r + 1, c, board)
  dfs(r - 1, c, board)
  dfs(r , c + 1, board)
  dfs(r , c - 1, board)
end

def solve(board)
  rows, cols = board.length, board[0].length
  rows.times do |i|
    dfs(i, 0, board)
    dfs(i, cols - 1, board)
  end

  cols.times do |j|
    dfs(0, j, board)
    dfs(rows - 1, j, board)
  end

  board.length.times do |r|
    board[r].length.times do |c|
      if board[r][c] == 'O'
        board[r][c] = 'X'
      elsif board[r][c] == 'T'
        board[r][c] = 'O'
      end
    end
  end
  board
end

# # Input: board = [["X","X","X","X"],["X","O","O","X"],["X","X","O","X"],["X","O","X","X"]]
# # Output: [["X","X","X","X"],["X","X","X","X"],["X","X","X","X"],["X","O","X","X"]]
# # Explanation: Notice that an 'O' should not be flipped if:
# # - It is on the border, or
# # - It is adjacent to an 'O' that should not be flipped.
# # The bottom 'O' is on the border, so it is not flipped.
# # The other three 'O' form a surrounded region, so they are flipped.
# Define a helper function for DFS to mark 'O' connected to boundaries as safe.

# def dfs(i, j, rows, cols, board)
#   return if i < 0 || i >= rows || j < 0 || j >= cols || board[i][j] != 'O'

#   board[i][j] = 'T'  # Mark 'O' as temporary safe

#   # Check adjacent cells
#   dfs(i - 1, j, rows, cols, board)
#   dfs(i + 1, j, rows, cols, board)
#   dfs(i, j - 1, rows, cols, board)
#   dfs(i, j + 1, rows, cols, board)
# end

# def solve(board)
#   return if board.empty?

#   rows, cols = board.length, board[0].length

  

#   # Traverse the boundary and mark 'O's as temporary safe.
#   (0...rows).each do |i|
#     dfs(i, 0, rows, cols, board)
#     dfs(i, cols - 1, rows, cols, board)
#   end

#   (0...cols).each do |j|
#     dfs(0, j, rows, cols, board)
#     dfs(rows - 1, j, rows, cols, board)
#   end

#   # Flip 'O's to 'X' and revert 'T's to 'O' within the grid.
#   (0...rows).each do |i|
#     (0...cols).each do |j|
#       if board[i][j] == 'O'
#         board[i][j] = 'X'
#       elsif board[i][j] == 'T'
#         board[i][j] = 'O'
#       end
#     end
#   end
#   board
# end



board = [
  ["X","X","X","X"],
  ["X","O","O","X"],
  ["X","X","O","X"],
  ["X","O","X","X"]
]
# board =
# [["O","O","O"],["O","O","O"],["O","O","O"]]

p solve(board)
# p result
# result.each { |row| puts row.join(' ') }

