# Given an n x n array of integers matrix, return the minimum sum of any falling path through matrix.

# A falling path starts at any element in the first row and chooses the element in the next row that is either directly below or diagonally left/right. Specifically, the next element from position (row, col) will be (row + 1, col - 1), (row + 1, col), or (row + 1, col + 1).

def min_falling_path_sum(matrix)
  return 0 if matrix.empty?

  rows = cols = matrix.size
  dp = Array.new(rows) { Array.new(cols, 0) }
  dp[0] = matrix[0].dup

  (1...rows).each do |row|
    (0...cols).each do |col|
      dp[row][col] = matrix[row][col] + [
        dp[row - 1][col],
        col > 0 ? dp[row - 1][col - 1] : Float::INFINITY,
        col < cols - 1 ? dp[row - 1][col + 1] : Float::INFINITY
    ].min
    end
  end
  dp.last.min
  # rows.times do |row|
  #   cols.times do |col|
  #     puts " I am here"
  #     result = dfs(row, col, matrix, 0)
  #     puts "result - #{result}"
  #   end
  # end
  # result
end

# def dfs(row, col, matrix, current_sum)
#   return current_sum if row < 0 || col < 0 || row >= matrix.size || col >= matrix.size

#   # puts "Here we go again --------------------"
#   current_sum += matrix[row][col]

#   puts "row - #{row}, col - #{col}, value - #{matrix[row][col]}, current_sum - #{current_sum}"

#   dfs(row + 1, col - 1, matrix, current_sum)
#   dfs(row + 1, col,     matrix, current_sum)
#   dfs(row + 1, col + 1, matrix, current_sum)
# end

# Example 1:


# Input: matrix = [[2,1,3],[6,5,4],[7,8,9]]
# Output: 13
# Explanation: There are two falling paths with a minimum sum as shown.
# Example 2:


# Input: matrix = [[-19,57],[-40,-5]]
# Output: -59
# Explanation: The falling path with a minimum sum is shown.

matrix = [[2,1,3],[6,5,4],[7,8,9]]

p min_falling_path_sum(matrix)