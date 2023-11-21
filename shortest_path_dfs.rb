def shortest_path_dfs(maze, start, destination)
  rows, cols = maze.length, maze[0].length
  visited = Array.new(rows) { Array.new(cols, false)}

  def dfs(x, y, steps, rows, cols, visited, maze, destination)
    return false if x < 0 || x >= rows || y < 0 || y >= cols || visited[x][y] || maze[x][y] == 1

    visited[x][y] = true

    if [x, y] == destination
      @min_steps = steps if @min_steps.nil? || steps < @min_steps
      visited[x][y] = false  # Backtrack
      return
    end

    dfs(x + 1, y, steps + 1, rows, cols, visited, maze, destination)
    dfs(x - 1, y, steps + 1, rows, cols, visited, maze, destination)
    dfs(x, y + 1, steps + 1, rows, cols, visited, maze, destination)
    dfs(x, y - 1, steps + 1, rows, cols, visited, maze, destination)

    visited[x][y] = false  # Backtrack
  end

  @min_steps = nil
  dfs(start[0], start[1], 0, rows, cols, visited, maze, destination)
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
