require 'pry'
def dfs(grid, i , j, visited)
  return if i < 0 || j < 0 || i >= grid.length || j >= grid[i].length || visited[i][j]

  visited[i][j] = true

  # grid[i][j] = '0'
  
  dfs(grid, i + 1, j, visited)
  dfs(grid, i - 1, j, visited)
  dfs(grid, i, j + 1, visited)
  dfs(grid, i, j - 1, visited)
end

def num_of_island(grid)
  count = 0  
  visited = Array.new(grid.length) { Array.new(grid[0].length, false) }

  grid.length.times do |i|
    grid[i].length.times do |j|
      if grid[i][j] == '1' && !visited[i][j]
        count += 1
        dfs(grid, i, j, visited)
      end
    end
  end
  count
end

grid = [
  ["1","1","1","1","0"],
  ["1","1","0","1","0"],
  ["1","1","0","0","0"],
  ["0","0","0","0","0"]
]

# grid = [
#   ["1","1","0","0","0"],
#   ["1","1","0","0","0"],
#   ["0","0","1","0","0"],
#   ["0","0","0","1","1"]
# ]
p num_of_island(grid)