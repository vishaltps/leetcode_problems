# Given the root of a binary tree, return the inorder traversal of its nodes' values.


class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root, result = [])
  return result unless root

  inorder_traversal(root.left, result)
  result << root.val
  inorder_traversal(root.right, result)
  result
end

# def travers(node, result)
#   return result if node.nil?
#   result << node.val
#   until node.left.nil?
#     travers(node.left, result)
#   end
#   until node.right.nil?
#     travers(node.right, result)
#   end
# end

# Input: root = [1,null,2,3]
# Output: [1,3,2]
# Example 2:

# Input: root = []
# Output: []
# Example 3:

# Input: root = [1]
# Output: [1]

root = TreeNode.new(1)
root.right = TreeNode.new(2)
root.right.left = TreeNode.new(3)
p inorder_traversal(root)