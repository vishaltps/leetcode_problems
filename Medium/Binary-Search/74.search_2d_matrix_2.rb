# 74. Search a 2D Matrix
# Solved
# Medium
# Topics
# Companies
# You are given an m x n integer matrix matrix with the following two properties:

# Each row is sorted in non-decreasing order.
# The first integer of each row is greater than the last integer of the previous row.
# Given an integer target, return true if target is in matrix or false otherwise.

# You must write a solution in O(log(m * n)) time complexity.
require 'pry'
def search_matrix(matrix, target)
  left, right = 0, matrix.length - 1

  first, last = matrix[0][0], matrix[right][matrix[0].length - 1]

  return false if target < first || target > last

  while left <= right
    
    mid = (left + right) / 2
    if matrix[mid][0] <= target && matrix[mid][matrix[0].length - 1] >= target
      j = 0
      while j < matrix[mid].length
        return true if matrix[mid][j] == target

        j += 1
      end
      return false
    elsif matrix[mid][0] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
  false
end

# Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
# Output: true

# Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13
# Output: false

matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]]
 target = 3
# matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]]
# target = 88
# matrix = [[1]]
# target = 1

 p search_matrix(matrix, target)