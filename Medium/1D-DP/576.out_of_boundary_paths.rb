# There is an m x n grid with a ball. The ball is initially at the position [startRow, startColumn]. You are allowed to move the ball to one of the four adjacent cells in the grid (possibly out of the grid crossing the grid boundary). You can apply at most maxMove moves to the ball.

# Given the five integers m, n, maxMove, startRow, startColumn, return the number of paths to move the ball out of the grid boundary. Since the answer can be very large, return it modulo 109 + 7.

def find_paths(m, n, max_move, start_row, start_column)
  mod = 10**9 + 7
  dp = Array.new(max_move + 1) { Array.new(m) { Array.new(n, 0) } }

  directions = [[0, 1], [0, -1], [1, 0], [-1, 0]]

  (1..max_move).each do |move|
    (0...m).each do |row|
      (0...n).each do |col|
        directions.each do |dr, dc|
          new_row, new_col = row + dr, col + dc

          if new_row >= 0 && new_row < m && new_col >= 0 && new_col < n
            dp[move][row][col] += dp[move - 1][new_row][new_col]
            dp[move][row][col] %= mod
          else
            dp[move][row][col] += 1
            dp[move][row][col] %= mod
          end
        end
      end
    end
  end

  dp[max_move][start_row][start_column]

end


# Example 1:
# Input: m = 2, n = 2, maxMove = 2, startRow = 0, startColumn = 0
# Output: 6
# Example 2:
# Input: m = 1, n = 3, maxMove = 3, startRow = 0, startColumn = 1
# Output: 12

m = 2
n = 2
max_move = 2
start_row = 0
start_column = 0
p find_paths(m, n, max_move, start_row, start_column)