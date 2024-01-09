
class TreeNode
  attr_accessor :value, :left, :right
  def initialize(value = 0, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end
end

def count_nodes(root)
  return if root.nil?

  count = 0
  queue = [root]

  until queue.empty?
    level_size = queue.size
    level_size.times do 
      node = queue.shift

      if node.left
        count += 1
        queue.push(node.left) 
      end
      if node.right
        count += 1
        queue.push(node.right)
      end
    end
  end
  count
end



root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.right = TreeNode.new(3)
root.left.left = TreeNode.new(4)
root.left.right = TreeNode.new(5)
root.right.left = TreeNode.new(6)
