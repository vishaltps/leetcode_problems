
require 'pry'
def dfs(maze, r, c, steps, destination, visited)
  return if r < 0 || c < 0 || r >= maze.length || c >= maze.length || visited[r][c]

  visited[r][c] = true
  if [r, c] == destination
    @min_steps = steps if @min_steps.nil? || steps < @min_steps
    visited[r][c] = false
    return
  end

  dfs(maze, r + 1, c, steps + 1, destination, visited)
  dfs(maze, r - 1, c, steps + 1, destination, visited)
  dfs(maze, r, c + 1, steps + 1, destination, visited)
  dfs(maze, r, c - 1, steps + 1, destination, visited)

  visited[r][c] = false
end

def shortest_path_dfs(maze, start, destination)
  rows, cols = maze.length, maze[0].length
  visited = Array.new(maze.length) { Array.new(maze[0].length, false)}

  dfs(maze, start[0], start[1], 0, destination, visited)

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
