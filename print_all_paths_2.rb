
def dfs(node, path, destination, graph)
  path.push(node)
  if node == destination
    puts path.join(" -> ")
  else
    graph[node].each do |neighbor|
      dfs(neighbor, path, destination, graph) unless path.include?(neighbor)
    end
  end

  path.pop
end 

def print_all_paths(graph, source, destination)
  return if (!graph.key? source) || (!graph.key? destination)

  path = []
  # graph.each do |r|
    dfs(source,  path, destination, graph)
  # end
end

# Example usage:
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
