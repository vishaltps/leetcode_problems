# Given a m x n binary matrix mat, find the 0-indexed position of the row that contains the maximum count of ones, and the number of ones in that row.

# In case there are multiple rows that have the maximum count of ones, the row with the smallest row number should be selected.

# Return an array containing the index of the row, and the number of ones in it.

def row_and_maximum_ones(mat)
  # brute force working
  # max_one = [0, 0]
  # rows = mat.size
  # rows.times do |i|
  #   current_count = mat[i].count(1)
    
  #   max_one = [i, current_count] if current_count > max_one[1]
  # end
  # max_one

  rows = mat.size
  max_one = [0, 0]
  rows.times do |i|
    mat[i].sort!
    low = 0
    high = mat[i].size - 1
    while low <= high
      mid = (low + high) / 2
      if mat[i][mid] == 1
        high = mid - 1
      else
        low = mid + 1
      end
    end

    max_one = [i, mat[i].size - low] if (mat[i].size - low) > max_one[1]
  end
  max_one
end

# Example 1:

# Input: mat = [[0,1],[1,0]]
# Output: [0,1]
# Explanation: Both rows have the same number of 1's. So we return the index of the smaller row, 0, and the maximum count of ones (1). So, the answer is [0,1]. 
# Example 2:

# Input: mat = [[0,0,0],[0,1,1]]
# Output: [1,2]
# Explanation: The row indexed 1 has the maximum count of ones (2). So we return its index, 1, and the count. So, the answer is [1,2].
# Example 3:

# Input: mat = [[0,0],[1,1],[0,0]]
# Output: [1,2]
# Explanation: The row indexed 1 has the maximum count of ones (2). So the answer is [1,2].
mat = [[0,1],[1,0]]
# mat = [[0,0,0],[0,1,1]]
# mat = [[0,0],[1,1],[0,0]]
# mat = [[0,0,1,1,1,1]]
p row_and_maximum_ones(mat)