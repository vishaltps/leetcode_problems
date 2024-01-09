# Given an m x n matrix, return all elements of the matrix in spiral order.
require 'pry'
def spiral_order(matrix)
  left = 0
  right = matrix[0].length - 1
  top = 0
  down = matrix.length - 1
  dir = 'right'
  result = []

  while top <= down && left <= right
    if dir == 'right'
      left.upto(right) do |i|
        result.push(matrix[left][i])
      end
      top += 1
      dir = 'down'
    elsif dir == 'down'
      top.upto(down) do |i|
        result.push(matrix[i][right])
      end
      right -= 1
      dir = 'left'
    elsif dir == 'left'
      right.downto(left) do |i|
        result.push(matrix[down][i])
      end
      down -= 1
      dir = 'top'
    elsif dir == 'top'
      down.downto(top) do |i|
        result.push(matrix[i][left])
      end
      left += 1
      dir = 'right'
    end
  end
  result
end

matrix = [[1,2,3],[4,5,6],[7,8,9]]

p spiral_order(matrix)
