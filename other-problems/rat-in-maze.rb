# Consider a rat placed at (0, 0) in a square matrix of order N * N. It has to reach the destination at (N - 1, N - 1). Find all possible paths that the rat can take to reach from source to destination. The directions in which the rat can move are 'U'(up), 'D'(down), 'L' (left), 'R' (right). Value 0 at a cell in the matrix represents that it is blocked and rat cannot move to it while value 1 at a cell in the matrix represents that rat can be travel through it.
# Note: In a path, no cell can be visited more than one time. If the source cell is 0, the rat cannot move to any other cell.

def find_path(m)
  result = []
  visited = Array.new(m.size) { Array.new(m[0].size, false) }

  rows, cols = m.size, m[0].size
  backtracking(m, 0, 0, '', visited, result)

  result
end

def backtracking(m, i, j, current, visited, result)
  rows, cols = m.size, m[0].size

  return if i < 0 || i >= rows || j < 0 || j >= cols || m[i][j] == 0 || visited[i][j]

  visited[i][j] = true

  if i == rows - 1 && j == cols - 1
    result << current.dup
  else
    backtracking(m, i + 1, j, current + 'D', visited, result)
    backtracking(m, i, j + 1, current + 'R', visited, result)
    backtracking(m, i - 1, j, current + 'U', visited, result)
    backtracking(m, i, j - 1, current + 'L', visited, result)
  end

  visited[i][j] = false
end

n = 4
m = [[1, 0, 0, 0],
    [1, 1, 0, 1], 
    [1, 1, 0, 0],
    [0, 1, 1, 1]]
p find_path(m)
        #  Input:
        #  N = 4
        #  m[][] = {{1, 0, 0, 0},
        #           {1, 1, 0, 1}, 
        #           {1, 1, 0, 0},
        #           {0, 1, 1, 1}}
        #  Output:
        #  DDRDRR DRDDRR
        #  Explanation:
        #  The rat can reach the destination at 
        #  (3, 3) from (0, 0) by two paths - DRDDRR 
        #  and DDRDRR, when printed in sorted order 
        #  we get DDRDRR DRDDRR.
        # Input:
        # N = 2
        # m[][] = {{1, 0},
        #          {1, 0}}
        # Output:
        # -1
        # Explanation:
        # No path exists and destination cell is 
        # blocked.
        