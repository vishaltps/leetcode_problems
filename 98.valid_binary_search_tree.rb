# A valid BST is defined as follows:

# The left 
# subtree
#  of a node contains only nodes with keys less than the node's key.
# The right subtree of a node contains only nodes with keys greater than the node's key.
# Both the left and right subtrees must also be binary search trees.
require 'pry'
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def is_valid_bst(node, min: nil, max: nil)
  # queue = [root]

  # until queue.empty?
  #   level_size = queue.size

  #   level_size.times do |_l|
  #     node = queue.shift

  #     if node.left&.val
  #       return false if node.left.val >= node.val || root.val <= node.left.val

  #       queue.push(node.left)
  #     end
  #     if node.right&.val
  #       return false if node.right.val <= node.val || root.val >= node.right.val

  #       queue.push(node.right)
  #     end
  #   end
  # end
  # true
  return true if node.nil?

  return false if min && node.val <= min
  return false if max && node.val >= max

  is_valid_bst(node.left, min: min, max: node.val) && 
  is_valid_bst(node.right, min: node.val, max: max)

end

# root = [2,1,3]
# [2,2,2]
# [5,4,6,null,null,3,7]



root = TreeNode.new(2)
root.left = TreeNode.new(1)
root.right = TreeNode.new(3)
# root.left.left = TreeNode.new(nil)
# root.left.right = TreeNode.new(nil)
# root.right.left = TreeNode.new(3)
# root.right.right = TreeNode.new(7)
# # root.left.left = TreeNode.new(1)
# # root.left.right = TreeNode.new(3)
# # Input: root = [2,1,3]
# # Output: true

p is_valid_bst(root)
