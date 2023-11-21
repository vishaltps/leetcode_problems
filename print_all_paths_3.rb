
require 'pry'
def dfs(graph, node, path, dest)
  path.push(node)

  if node == dest
    puts path.join('->')
  else
    graph[node].each do |neighbor|
      dfs(graph, neighbor, path, dest) unless path.include? neighbor
    end
  end

  path.pop # backtracing
end

def print_all_paths(graph, source, destination)
  return if (!graph.key? source) || (!graph.key? destination)

  dfs(graph, source, [], destination)
end

graph = {
  'A' => ['B', 'C'],
  'B' => ['C', 'D'],
  'C' => ['D'],
  'D' => ['C', 'E'],
  'E' => ['A'],
}

source = 'A'
destination = 'E'
puts "All paths from #{source} to #{destination}:"
print_all_paths(graph, source, destination)
