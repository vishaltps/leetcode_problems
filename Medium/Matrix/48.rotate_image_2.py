
from typing import List
import pdb
class Solution:
  def rotate(self, matrix: List[List[int]]) -> None:
    rows = len(matrix)

    for i in range(0, rows - 1):
      for j in range(i, rows):
        matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
    
    for i in range(0, rows):
      matrix[i] = matrix[i][::-1]

    return matrix

matrix = [[1,2,3],[4,5,6],[7,8,9]]
solution = Solution()
result = solution.rotate(matrix)
print(result)
