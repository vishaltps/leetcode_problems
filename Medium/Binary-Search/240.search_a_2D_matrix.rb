# Write an efficient algorithm that searches for a value target in an m x n integer matrix matrix. This matrix has the following properties:

# Integers in each row are sorted in ascending from left to right.
# Integers in each column are sorted in ascending from top to bottom.

def search_matrix(matrix, target)
  return false if matrix.empty? || matrix[0].empty?

  rows, cols = matrix.size, matrix[0].size
  row, col = 0, cols - 1

  while row < rows && col >= 0
    current = matrix[row][col]
    return true if current == target

    if current < target
      row += 1
    else
      col -= 1
    end
  end
  false
end

# Example 1:
# Input: matrix = [[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], target = 5
# Output: true
# Example 2:

# Input: matrix = [[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]], target = 20
# Output: false

matrix = [[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]]
target = 3
# matrix = [[-5]]
# target = -5


p search_matrix(matrix, target)