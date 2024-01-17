
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
  end
end

def max_depth(root)
  return 0 if root.nil?

  # depth += 1 if root.left || root.right
  left_depth = max_depth(root.left)
  right_depth = max_depth(root.right)
  # max_depth(root.left, depth) if root.left
  # max_depth(root.right, depth) if root.right
  [left_depth , right_depth].max + 1

  # return 0 if root.nil?

  # max_depth = 0
  # queue = [root]
  # until queue.empty?
  #   level_size = queue.size

  #   level_size.times do
  #     node = queue.shift

  #     queue.push(node.left) if node.left
  #     queue.push(node.right) if node.right
  #   end
  #   max_depth += 1
  # end
  # max_depth
end

root = TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20)
root.right.left = TreeNode.new(15)
root.right.right = TreeNode.new(7)
p max_depth(root)