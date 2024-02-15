# The n-queens puzzle is the problem of placing n queens on an n x n chessboard such that no two queens attack each other.

# Given an integer n, return all distinct solutions to the n-queens puzzle. You may return the answer in any order.

# Each solution contains a distinct board configuration of the n-queens' placement, where 'Q' and '.' both indicate a queen and an empty space, respectively.
def solve_n_queens(n)
  ans = []
  board = Array.new(n) { Array.new(n, '.') }
  left_row = Array.new(n, 0)
  upper_diagonal = Array.new(2 * n - 1, 0)
  lower_diagonal = Array.new(2 * n - 1, 0)
  solve(0, board, ans, left_row, upper_diagonal, lower_diagonal, n)
  ans
end

def solve(col, board, ans, left_row, upper_diagonal, lower_diagonal, n)
  if col == n
    ans.push(board.map(&:join))
    return
  end

  row = 0
  while row < n
    if left_row[row].zero? && lower_diagonal[row + col].zero? && upper_diagonal[n - 1 + col - row].zero?
      board[row][col] = 'Q'
      left_row[row] = 1
      lower_diagonal[row + col] = 1
      upper_diagonal[n - 1 + col - row] = 1
      solve(col + 1, board, ans, left_row, upper_diagonal, lower_diagonal, n)
      board[row][col] = '.'
      left_row[row] = 0
      lower_diagonal[row + col] = 0
      upper_diagonal[n - 1 + col - row] = 0
    end
    row += 1
  end
end


# Input: n = 4
# Output: [[".Q..","...Q","Q...","..Q."],["..Q.","Q...","...Q",".Q.."]]
# Explanation: There exist two distinct solutions to the 4-queens puzzle as shown above
# Example 2:

# Input: n = 1
# Output: [["Q"]]

n = 4
p solve_n_queens(n)