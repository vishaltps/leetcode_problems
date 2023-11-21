
def dfs(graph, node, path, destination)
  path.push(node)
  if node == destination
    puts path.join("->")
  end

  graph[node].each do |neighbor|
    dfs(graph, neighbor, path, destination) unless path.include? neighbor
  end

  path.pop
end
def print_all_paths(graph, source, destination)
  return false if !(graph.key? source) || !(graph.key? destination)


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
destination = 'D'
puts "All paths from #{source} to #{destination}:"
print_all_paths(graph, source, destination)
