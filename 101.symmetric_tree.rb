class TreeNode
  attr_accessor :value, :left, :right
  def initialize(value = 0, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end
end

def is_symmetric(root)
  return true if root.nil?

  mirror?(root.left, root.right)
end

def mirror?(left, right)
  return true if left.nil? && right.nil?
  return false if left.nil? || right.nil? || left.value != right.value

  mirror?(left.left, right.right) && mirror?(left.right, right.left)
end

root = [1,2,2,3,4,4,3]

root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.right = TreeNode.new(2)
root.left.left = TreeNode.new(3)
root.left.right = TreeNode.new(4)
root.right.left = TreeNode.new(4)
root.right.right = TreeNode.new(3)

p is_symmetric(root)