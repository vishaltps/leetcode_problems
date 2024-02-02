
def search_matrix(matrix, target)
  m = matrix.size
  n = matrix[0].size
  low = 0
  binding.irb
  high = (m * n) - 1

  while low <= high
    mid = (low + high) / 2
    row = mid / n
    col = mid % n
    
    if matrix[row][col] == target
      return true
    elsif matrix[row][col] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end
  false
end
matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]]
 target = 39

# matrix = [[1,1]]
# target = 2

 p search_matrix(matrix, target)