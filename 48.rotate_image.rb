# You are given an n x n 2D matrix representing an image, rotate the image by 90 degrees (clockwise).

# You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.

require 'pry'
def rotate(matrix)
  rows, cols = matrix.length, matrix[0].length

  rows.times do |r|
    cols.times do |c|
      binding.pry
      temp = matrix[r][c]
      matrix[r][c] = matrix[matrix.length - c][c]
      matrix[matrix.length - 1][c] = temp
    end
  end
  matrix
end

matrix = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]

p rotate(matrix)
