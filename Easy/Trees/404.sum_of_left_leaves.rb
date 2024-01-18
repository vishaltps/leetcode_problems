# Given the root of a binary tree, return the sum of all left leaves.

# A leaf is a node with no children. A left leaf is a leaf that is the left child of another node.

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end 

def sum_of_left_leaves(root)
  return 0 if root.nil?
  sum = 0
  if root.left && root.left.left.nil? && root.left.right.nil?
    sum += root.left.val
  end

  sum + sum_of_left_leaves(root.left) + sum_of_left_leaves(root.right)
  # left_leaves = right_leaves = 0
  # left_leaves = find_left_leaves(root.left, true) if root.left
  # right_leaves = find_left_leaves(root.right, false) if root.right
  # left_leaves + right_leaves
end

# def find_left_leaves(node, is_left)
#   return node.val if node.left.nil? && node.right.nil? && is_left

#   left_leaves = right_leaves = 0
#   left_leaves = find_left_leaves(node.left, true) if node.left
#   right_leaves = find_left_leaves(node.right, false) if node.right
#   left_leaves + right_leaves
# end

# Example 1:


# Input: root = [3,9,20,null,null,15,7]
# Output: 24
# Explanation: There are two left leaves in the binary tree, with values 9 and 15 respectively.
# Example 2:

# Input: root = [1]
# Output: 0

# root = TreeNode.new(3)
# root.left = TreeNode.new(9)
# root.right = TreeNode.new(20)
# root.left.left = TreeNode.new(20)
# root.right.left = TreeNode.new(15)
# root.right.right = TreeNode.new(7)
root = TreeNode.new(1)
root.right = TreeNode.new(2)

p sum_of_left_leaves(root)