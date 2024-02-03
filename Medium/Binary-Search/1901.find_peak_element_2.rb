# A peak element in a 2D grid is an element that is strictly greater than all of its adjacent neighbors to the left, right, top, and bottom.

# Given a 0-indexed m x n matrix mat where no two adjacent cells are equal, find any peak element mat[i][j] and return the length 2 array [i,j].

# You may assume that the entire matrix is surrounded by an outer perimeter with the value -1 in each cell.

# You must write an algorithm that runs in O(m log(n)) or O(n log(m)) time.

def find_peak_grid(mat)
  n, m = mat.size, mat[0].size

  low = 0
  high = m - 1
  while low <= high
    mid = (low + high) / 2
    max_idx = max_row_idx(mat, n, mid)
    left = mid - 1 >= 0 ? mat[max_idx][mid - 1] : -1
    right = mid + 1 < m ? mat[max_idx][mid + 1] : -1
    
    if mat[max_idx][mid] > left && mat[max_idx][mid] > right
      return [max_idx, mid]
    elsif mat[max_idx][mid] < left
      high = mid - 1
    else
      low = mid + 1
    end
  end
  [-1, -1]
end

def max_row_idx(mat, n, col)
  max_val = idx = -1
  (n).times do |i|
    # binding.irb if col == 7
    if mat[i][col] > max_val
      max_val = mat[i][col]
      idx = i
    end
  end
  idx
end

# Example 1:

# Input: mat = [[1,4],[3,2]]
# Output: [0,1]
# Explanation: Both 3 and 4 are peak elements so [1,0] and [0,1] are both acceptable answers.
# Example 2:

# Input: mat = [[10,20,15],[21,30,14],[7,16,32]]
# Output: [1,1]
# Explanation: Both 30 and 32 are peak elements so [1,1] and [2,2] are both acceptable answers.
 


# mat = [[1,4],[3,2]]
# mat = [[10,20,15],[21,30,14],[7,16,32]]
# mat = [[78,96,64],[37,100,30],[78,46,29],[82,25,80],[33,87,97],[93,99,85],[88,18,81],[13,81,83],[6,40,57],[5,75,47],[94,17,12],[38,42,96],[54,23,26],[17,70,47],[68,65,35],[22,33,62],[38,96,44],[15,60,10],[19,97,29],[87,93,87],[51,72,47],[12,51,2],[34,69,16],[59,48,87],[96,87,34]]
mat = [
  [1,2,3,4,5,6,7,8],
  [2,3,4,5,6,7,8,9],
  [3,4,5,6,7,8,9,10],
  [4,5,6,7,8,9,10,11]
]



p find_peak_grid(mat)