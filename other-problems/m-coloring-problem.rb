# Given an undirected graph and an integer M. The task is to determine if the graph can be colored with at most M colors such that no two adjacent vertices of the graph are colored with the same color. Here coloring of a graph means the assignment of colors to all vertices. Print 1 if it is possible to colour vertices and 0 otherwise.

def graph_coloring(n, m, edges)
  visited = Array.new(n, 0)
  color = Array.new(n, 0)
  return true if solve(0, edges, color, visited, n, m)
  false
end

def solve(node, edges, color, visited, n, m)
  return true if node == n

  (1..m).each do |i|
    if is_safe(node, edges, color, visited, n, i)
      color[node] = i
      visited[node] = 1
      return true if solve(node + 1, edges, color, visited, n, m)
      color[node] = 0
      visited[node] = 0
    end
  end
  false
end

def is_safe(node, edges, color, visited, n, col)
  edges[node].each do |j|
    return false if color[j] == col && visited[j] == 1
  end
  true
end


# Example 1:

# Input:
# N = 4
# M = 3
# E = 5
# Edges[] = {(0,1),(1,2),(2,3),(3,0),(0,2)}
# Output: 1
# Explanation: It is possible to colour the
# given graph using 3 colours.
# Example 2:

# Input:
# N = 3
# M = 2
# E = 3
# Edges[] = {(0,1),(1,2),(0,2)}
# Output: 0

# edges = [[0,1],[1,2],[2,3],[3,0],[0,2]]
# n = 4
# m = 3


edges = [[0,1],[1,2],[0,2]]
n = 3
m = 2

 p graph_coloring(n, m,  edges)