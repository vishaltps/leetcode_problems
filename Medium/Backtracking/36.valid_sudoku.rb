# Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:

# Each row must contain the digits 1-9 without repetition.
# Each column must contain the digits 1-9 without repetition.
# Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
# Note:

# A Sudoku board (partially filled) could be valid but is not necessarily solvable.
# Only the filled cells need to be validated according to the mentioned rules.
 
# def is_valid_sudoku(board)
#   solve(board)
# end

# def solve(board)
#   rows, cols = board.size, board[0].size
#   rows.times do |i|
#     cols.times do |j|
#       if board[i][j] == '.'
#         '1'.upto('9').each do |k|
#           if is_valid(board, i, j, k)
#             board[i][j] = k
#             if solve(board)
#               return true
#             else
#               board[i][j] = '.'
#             end
#           end
#         end
#         return false
#       end
#     end
#   end
#   true
# end

# def is_valid(board, row, col, k)
#   9.times do |l|
#     return false if board[row][l] == k
#     return false if board[l][col] == k
#     return false if board[3 * (row / 3) + l / 3][3 * (col / 3) + l % 3] == k
#   end
#   true
# end

def is_valid_sudoku(board)
  rows, cols = board.size, board[0].size

  rows.times do |i|
    return false unless is_valid_row(board, i)
  end

  cols.times do |j|
    return false unless is_valid_column(board, j)
  end

  (0..2).step do |i|
    (0..2).step do |j|
      return false unless is_valid_subgrid(board, i * 3, j * 3)
    end
  end

  true
end

def is_valid_row(board, row)
  seen = Set.new
  board[row].each do |cell|
    return false if cell != '.' && seen.include?(cell)

    seen.add(cell)
  end
  true
end

def is_valid_column(board, col)
  seen = Set.new
  board.size.times do |i|
    cell = board[i][col]
    return false if cell != '.' && seen.include?(cell)

    seen.add(cell)
  end
  true
end

def is_valid_subgrid(board, start_row, start_col)
  seen = Set.new
  3.times do |i|
    3.times do |j|
      cell = board[start_row + i][start_col + j]
      return false if cell != '.' && seen.include?(cell)

      seen.add(cell)
    end
  end
  true
end


# Example 1:


# Input: board = 
# [["5","3",".",".","7",".",".",".","."]
# ,["6",".",".","1","9","5",".",".","."]
# ,[".","9","8",".",".",".",".","6","."]
# ,["8",".",".",".","6",".",".",".","3"]
# ,["4",".",".","8",".","3",".",".","1"]
# ,["7",".",".",".","2",".",".",".","6"]
# ,[".","6",".",".",".",".","2","8","."]
# ,[".",".",".","4","1","9",".",".","5"]
# ,[".",".",".",".","8",".",".","7","9"]]
# Output: true
# Example 2:

# Input: board = 
# [["8","3",".",".","7",".",".",".","."]
# ,["6",".",".","1","9","5",".",".","."]
# ,[".","9","8",".",".",".",".","6","."]
# ,["8",".",".",".","6",".",".",".","3"]
# ,["4",".",".","8",".","3",".",".","1"]
# ,["7",".",".",".","2",".",".",".","6"]
# ,[".","6",".",".",".",".","2","8","."]
# ,[".",".",".","4","1","9",".",".","5"]
# ,[".",".",".",".","8",".",".","7","9"]]
# Output: false
# Explanation: Same as Example 1, except with the 5 in the top left corner being modified to 8. Since there are two 8's in the top left 3x3 sub-box, it is invalid.
# board =  [["5","3",".",".","7",".",".",".","."],
#           ["6",".",".","1","9","5",".",".","."],
#           [".","9","8",".",".",".",".","6","."],
#           ["8",".",".",".","6",".",".",".","3"],
#           ["4",".",".","8",".","3",".",".","1"],
#           ["7",".",".",".","2",".",".",".","6"],
#           [".","6",".",".",".",".","2","8","."],
#           [".",".",".","4","1","9",".",".","5"],
#           [".",".",".",".","8",".",".","7","9"]]

board = 
[["8","3",".",".","7",".",".",".","."],
["6",".",".","1","9","5",".",".","."],
[".","9","8",".",".",".",".","6","."],
["8",".",".",".","6",".",".",".","3"],
["4",".",".","8",".","3",".",".","1"],
["7",".",".",".","2",".",".",".","6"],
[".","6",".",".",".",".","2","8","."],
[".",".",".","4","1","9",".",".","5"],
[".",".",".",".","8",".",".","7","9"]]
# board = [[".","8","7","6","5","4","3","2","1"],["2",".",".",".",".",".",".",".","."],["3",".",".",".",".",".",".",".","."],["4",".",".",".",".",".",".",".","."],["5",".",".",".",".",".",".",".","."],["6",".",".",".",".",".",".",".","."],["7",".",".",".",".",".",".",".","."],["8",".",".",".",".",".",".",".","."],["9",".",".",".",".",".",".",".","."]]


p is_valid_sudoku(board)