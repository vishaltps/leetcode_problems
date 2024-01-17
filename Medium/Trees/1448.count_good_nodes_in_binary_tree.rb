# Given a binary tree root, a node X in the tree is named good if in the path from root to X there are no nodes with a value greater than X.

# Return the number of good nodes in the binary tree.

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
  end
end

def good_nodes(root)
  return 0 unless root

  dfs(root, root.val)
end

def dfs(node,  max_value)
  return 0 if node.nil?

  current_value = node.val
  good_node_count = current_value >= max_value ? 1 : 0
  max_value = [max_value, current_value].max

  left_count = dfs(node.left, max_value)
  right_count = dfs(node.right, max_value)

  good_node_count + left_count + right_count

  # if node.left.nil? && node.right.nil?
  #   puts "in if condition"
  #   (node.val >= path.min ? count + 1 : count)
  #   return 
  # end

  # if path.empty?
  #   count += 1
  #   path << node.val
  # elsif node.val >= path.min
  #   count += 1
  #   p "in els cond - #{count}"
  #   path << node.val
  # end

  # dfs(node.left, path, count) if node.left
  # dfs(node.right, path, count) if node.right
end

# Example 1:
# Input: root = [3,1,4,3,null,1,5]
# Output: 4
# Explanation: Nodes in blue are good.
# Root Node (3) is always a good node.
# Node 4 -> (3,4) is the maximum value in the path starting from the root.
# Node 5 -> (3,4,5) is the maximum value in the path
# Node 3 -> (3,1,3) is the maximum value in the path.
# Example 2:



# Input: root = [3,3,null,4,2]
# Output: 3
# Explanation: Node 2 -> (3, 3, 2) is not good, because "3" is higher than it.
# Example 3:

# Input: root = [1]
# Output: 1
# Explanation: Root is considered as good.
 
# root = [3,1,4,3,null,1,5]
root = TreeNode.new(3)
root.left = TreeNode.new(1)
root.left.left = TreeNode.new(3)
root.right = TreeNode.new(4)
root.right.left = TreeNode.new(1)
root.right.right = TreeNode.new(5)

p good_nodes(root)