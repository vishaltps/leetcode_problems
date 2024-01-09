require 'pry'

def dfs(node, path, dest, graph)
  puts "node - #{node}"
  path.push(node)
  if node == dest
    puts path.join(" -> ")
  else
    # puts "path - #{path}"
    # puts "graph of node - #{graph[node]}"
    graph[node].each do |neighbor|
      # puts "Neighbour - #{neighbor}"
      dfs(neighbor, path, dest, graph) unless path.include?(neighbor)
    end
  end
  # puts "IN path pop - #{path}"
  path.pop  # Backtrack
  # puts "after path pop - #{path}"
end


def print_all_paths(graph, src, dest)
  if !graph.key?(src) || !graph.key?(dest)
    puts "Source or destination not found in the graph."
    return
  end

  dfs(src, [], dest, graph)
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
destination = 'D'
puts "All paths from #{source} to #{destination}:"
print_all_paths(graph, source, destination)
