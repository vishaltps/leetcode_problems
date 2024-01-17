class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def binary_tree_paths(root)
  return [] unless root

  result = []
  dfs(root, '', result)
  result
end

def dfs(node, path, result)
  path += node.val.to_s

  if node.left.nil? && node.right.nil?
    result << path
    return
  end
  path += '->'

  dfs(node.left, path, result) if node.left
  dfs(node.right, path, result) if node.right
end
# def find_path(node, current_path)
#   return current_path if node.nil?

#   current_path << node.val
#   find_path(node.left, current_path) if node.left
#   find_path(node.right, current_path) if node.right
# end

# Input: root = [1,2,3,null,5]
# Output: ["1->2->5","1->3"]

root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.right = TreeNode.new(3)
root.left.right = TreeNode.new(5)

p binary_tree_paths(root)