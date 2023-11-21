

def dfs(grid, i, j)
  return if i < 0 || j < 0 || (i >= grid.length) || (j >= grid[0].length) || grid[i][j] == '0' 

  grid[i][j] = '0'

  dfs(grid, i + 1, j)
  dfs(grid, i - 1, j)
  dfs(grid, i, j + 1)
  dfs(grid, i, j - 1)
end

def num_islands(grid)
  count = 0
  grid.length.times do |i|
    grid[i].length.times do |j|
      if grid[i][j] == '1'
        count += 1
        dfs(grid, i , j)
      end
    end
  end
  count
end


grid = [
  ['1', '1', '0', '0', '0'],
  ['1', '1', '0', '0', '0'],
  ['0', '0', '1', '0', '0'],
  ['0', '0', '0', '1', '1']
]

p num_islands(grid)