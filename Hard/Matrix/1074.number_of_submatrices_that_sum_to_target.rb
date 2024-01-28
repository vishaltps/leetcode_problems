# Given a matrix and a target, return the number of non-empty submatrices that sum to target.

# A submatrix x1, y1, x2, y2 is the set of all cells matrix[x][y] with x1 <= x <= x2 and y1 <= y <= y2.

# Two submatrices (x1, y1, x2, y2) and (x1', y1', x2', y2') are different if they have some coordinate that is different: for example, if x1 != x1'.

def num_submatrix_sum_target(matrix, target)
  rows, cols = matrix.size, matrix[0].size

  prefix_sum = Array.new(rows + 1, 0) { Array.new(cols + 1, 0) }
  (1..rows).each do |i|
    (1..cols).each do |j|
      prefix_sum[i][j] = matrix[i - 1][j - 1] + prefix_sum[i - 1][j] + prefix_sum[i][j - 1] - prefix_sum[i - 1][j - 1]
    end
  end
  
  count = 0
  (1..rows).each do |row1|
    (row1..rows).each do |row2|
      col_sum = { 0 => 1 }

      (1..cols).each do |col|
        current_sum = prefix_sum[row2][col] - prefix_sum[row1 - 1][col]
        target_sum = current_sum - target

        count += col_sum[target_sum] if col_sum.key?(target_sum)

        col_sum[current_sum] = col_sum.fetch(current_sum, 0) + 1
      end
    end
  end
  count
end

# Input: matrix = [[0,1,0],[1,1,1],[0,1,0]], target = 0
# Output: 4
# Explanation: The four 1x1 submatrices that only contain 0.

# Example 2:

# Input: matrix = [[1,-1],[-1,1]], target = 0
# Output: 5
# Explanation: The two 1x2 submatrices, plus the two 2x1 submatrices, plus the 2x2 submatrix.
# Example 3:

# Input: matrix = [[904]], target = 0
# Output: 0
 

matrix = [[0,1,0],[1,1,1],[0,1,0]]
 target = 0
 p num_submatrix_sum_target(matrix, target)