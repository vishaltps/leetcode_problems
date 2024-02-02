
# Write an efficient algorithm that searches for a value target in an m x n integer matrix matrix. This matrix has the following properties:

# Integers in each row are sorted in ascending from left to right.
# Integers in each column are sorted in ascending from top to bottom.

def search_matrix(matrix, target)
  return false if matrix.empty? || matrix[0].empty?
  
  m, n = matrix.size, matrix[0].size
  row = 0
  col = n - 1
  while row < m && col >= 0
    if matrix[row][col] == target
      return true
    elsif matrix[row][col] < target
      row += 1
    else
      col -= 1
    end
  end
  false
end

matrix = [[1,4,7,11,15],[2,5,8,12,19],[3,6,9,16,22],[10,13,14,17,24],[18,21,23,26,30]]
target = 50

p search_matrix(matrix, target)