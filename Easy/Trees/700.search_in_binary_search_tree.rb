# You are given the root of a binary search tree (BST) and an integer val.

# Find the node in the BST that the node's value equals val and return the subtree rooted with that node. If such a node does not exist, return null.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end 

def search_bst(root, val)
  return nil unless root
  
  while root
    return root if root.val == val

    root = root.val < val ? root.right : root.left
  end
  nil
end

# def find_val(node, val)
#   return node if node.val == val

#   find_val(node.left, val) if node.left
#   find_val(node.right, val) if node.right
# end

# def triver(node, result)
#   result << node.val
#   triver(node.left, result) if node.left
#   triver(node.right, result) if node.right
#   result
# end

# Example 1:


# Input: root = [4,2,7,1,3], val = 2
# Output: [2,1,3]
# Example 2:


# Input: root = [4,2,7,1,3], val = 5
# Output: []

root = TreeNode.new(4)
root.left = TreeNode.new(2)
root.right = TreeNode.new(7)
root.left.left = TreeNode.new(1)
root.left.right = TreeNode.new(3)

p search_bst(root, 1)