
require 'pry'
def dfs(maze, r, c, steps, start, destination, visited, rows, cols)
  return if r < 0 || c < 0 || r >= maze.length || c >= maze[r].length || visited[r][c]

  visited[r][c] = true
  if [r, c] == destination
    @min_steps = steps if @min_steps.nil? || steps < @min_steps
    visited[r][c] = false
    return
  end


  dfs(maze, r + 1, c, steps + 1, start, destination, visited, rows, cols)
  dfs(maze, r - 1 , c, steps + 1, start, destination, visited, rows, cols)
  dfs(maze, r, c + 1, steps + 1, start, destination, visited, rows, cols)
  dfs(maze, r, c - 1, steps + 1, start, destination, visited, rows, cols)

  visited[r][c] = false
end

def shortest_path_dfs(maze, start, destination)
  rows, cols = maze.length, maze[0].length
  visited = Array.new(maze.length) { Array.new(maze[0].length, false) }
  min_steps = 0

  # rows.times do |r|
  #   cols[r].times do |c|
  #     if !visited[r, c]
        dfs(maze, start[1], 0 , 0, start, destination, visited, rows, cols)
  #     end
  #   end
  # end
  @min_steps || -1
end

# Example usage:
maze = [
  [0, 0, 0, 0, 0],
  [0, 1, 0, 1, 0],
  [0, 0, 0, 0, 1],
  [0, 1, 1, 1, 1],
  [0, 0, 0, 0, 0]
]
start = [0, 0]
destination = [4, 4]
puts shortest_path_dfs(maze, start, destination)  # Output: 8
