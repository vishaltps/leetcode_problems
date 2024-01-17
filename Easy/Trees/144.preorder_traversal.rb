
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
  end
end

def preorder_traversal(root, result = [])
  return result if root.nil?

  result << root.val
  preorder_traversal(root.left, result)
  preorder_traversal(root.right, result)
end


# root = TreeNode.new(1)
# root.right = TreeNode.new(2)
# root.right.left = TreeNode.new(3)
root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.right = TreeNode.new(3)
root.left.left = TreeNode.new(4)
root.left.right = TreeNode.new(5)
root.right.left = TreeNode.new(6)
root.right.right = TreeNode.new(7)

p preorder_traversal(root)
