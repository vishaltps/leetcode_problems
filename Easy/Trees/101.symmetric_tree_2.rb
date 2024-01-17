
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
  end
end

def is_symmetric(root, left = nil, right = nil)
  return true unless root
  # return true if left.nil? && right.nil?
  # return false if left.nil? || right.nil?
  # return false if left&.val != right&.val
  mirror?(root.left, root.right)

  # is_symmetric(root, root.left, root.right) && is_symmetric(root, root.right, root.left)
end

def mirror?(left, right)
  return true if left.nil? && right.nil?
  return false if left.nil? || right.nil? || left.val != right.val

  mirror?(left.left, right.right) && mirror?(left.right, right.left)
end

root = [1,2,2,3,4,4,3]
# root = TreeNode.new(1)
# root.left = TreeNode.new(2)
# root.right = TreeNode.new(2)
# root.left.left = TreeNode.new(3)
# root.left.right = TreeNode.new(4)
# root.right.left = TreeNode.new(4)
# root.right.right = TreeNode.new(3)

root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.right = TreeNode.new(2)
# root.left.left = TreeNode.new(3)
root.left.right = TreeNode.new(4)
# root.right.left = TreeNode.new(4)
root.right.right = TreeNode.new(3)

p is_symmetric(root)