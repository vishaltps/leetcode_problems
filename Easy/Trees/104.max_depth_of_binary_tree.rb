require 'pry'
class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

def max_depth(root, needle)
  return 0 if root.nil?

  queue = [root]
  depth = 0

  until queue.empty?
    level_size = queue.size

    level_size.times do
      node = queue.shift
      # return true if node.value == needle

      queue.push(node.left) if node.left
      queue.push(node.right) if node.right
    end

    depth += 1
  end

  depth
  
end

# Example usage:
# Create a binary tree
root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.right = TreeNode.new(3)
root.left.left = TreeNode.new(4)
root.left.right = TreeNode.new(5)
root.left.left.left = TreeNode.new(6)
root.left.left.right = TreeNode.new(7)

# Calculate the maximum depth
p max_depth(root, 5)
# puts "Maximum depth of the binary tree: #{depth}"
