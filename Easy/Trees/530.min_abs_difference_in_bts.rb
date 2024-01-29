
require 'pry'

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end


def get_minimum_difference(root)
  return 0 if root.nil?

  queue = [root]
  min_diff = root.val

  until queue.empty?
    level_size = queue.size
    level_size.times do |l|
      node = queue.shift

      if node.left
        min_diff = [(node.val - node.left.val).abs, min_diff].min
        queue.push(node.left) 
      elsif node.right
        min_diff = [(node.val - node.right.val).abs, min_diff].min
        queue.push(node.right) if node.right
      end
    end
  end
  min_diff
end

# root = TreeNode.new(4)
# root.left = TreeNode.new(2)
# root.right = TreeNode.new(6)
# root.left.left = TreeNode.new(1)
# root.left.right = TreeNode.new(3)

# root = [1,null,5,3]

# root = [543,384,652,null,445,null,699]
root = TreeNode.new(543)
root.left = TreeNode.new(384)
root.right = TreeNode.new(652)
root.left.right = TreeNode.new(445)
root.right.right = TreeNode.new(699)


p get_minimum_difference(root)