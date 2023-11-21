# You are given an m x n integer matrix matrix with the following two properties:

# Each row is sorted in non-decreasing order.
# The first integer of each row is greater than the last integer of the previous row.
# Given an integer target, return true if target is in matrix or false otherwise.

# You must write a solution in O(log(m * n)) time complexity.

require 'pry'
def search_matrix(matrix, target)
  rows, cols = matrix.length, matrix[0].length

  # return matrix[0][0] == target if rows == 1 && cols == 1

  # rows.times do |r|
  #   cols.times do |c|
  #     if matrix[r][c] == target
  #       return true
  #     end
  #   end
  # end
  rows.times do |r|
    next unless matrix[r][0] <= target && matrix[r][cols - 1] >= target

    cols.times do |c|
      return true if matrix[r][c] == target
    end
  end
  false
end

# Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
# Output: true

# Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13
# Output: false

# matrix = [
#   [1,3,5,7],
#   [10,11,16,20],
#   [23,30,34,60]]
# target = 3

matrix = [[1]]
target = 2

# matrix = [[1],[3]]
# target = 1


p search_matrix(matrix, target)