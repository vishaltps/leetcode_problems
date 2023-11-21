
def dfs(maze, r, c, steps, dest, visited)
  return if r < 0 || c < 0 || r >= maze.length || c >= maze[r].length || visited[r][c]

  visited[r][c] = true

  if dest == [r, c]
    @min_steps = steps if @min_steps.nil? || steps < @min_steps
    visited[r][c] = false
    return
  end

  dfs(maze, r + 1, c, steps + 1, dest, visited)
  dfs(maze, r - 1, c, steps + 1, dest, visited)
  dfs(maze, r, c + 1, steps + 1, dest, visited)
  dfs(maze, r, c - 1, steps + 1, dest, visited)

  visited[r][c] = false
end


def shortest_path_dfs(maze, start, destination)
  rows, cols = maze.length, maze[0].length

  visited = Array.new(maze.length) { Array.new(maze[0].length, false) }

  rows.times do |r|
    cols[r].times do |c|
      dfs(maze, start[0], start[1], 0, destination, visited)
    end
  end
  @min_steps
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
