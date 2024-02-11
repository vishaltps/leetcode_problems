# You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).

# You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.

def rotate(matrix)
  # rows, cols = matrix.size, matrix[0].size

  # new_matrix = Array.new(rows) { Array.new(cols) }
  # rows.times do |row|
  #   cols.times do |col|
  #     matrix[col][(rows - 1) - row] = matrix[row][col]
  #   end
  # end
  # new_matrix
  rows = matrix.size

  puts "matrix - #{matrix}"
  (0...rows).each do |i|
    (i...rows).each do |j|
      p "i - #{i}, j - #{j}, value #{matrix[i][j]}"
      p "i - #{j}, j - #{i}, value #{matrix[i][i]}"
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
    end
  end
  puts "matrix - #{matrix}"
  (0...rows).each do |i|
    matrix[i].reverse!
  end

  matrix
end

# Example 1:


# Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
# Output: [[7,4,1],[8,5,2],[9,6,3]]
# Example 2:


# Input: matrix = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
# Output: [[15,13,2,5],[14,3,4,1],[12,6,8,9],[16,7,10,11]]


matrix = [[1,2,3],[4,5,6],[7,8,9]]
# matrix = [[5,1,9,11],[2,4,8,10],[13,3,6,7],[15,14,12,16]]
p rotate(matrix)