require 'pry'
class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

def invert_tree(root)
  return nil if root.nil?

  root.left, root.right = root.right, root.left
  invert_tree(root.left)
  invert_tree(root.right)
  root
end
def print_tree(root)
  return if root.nil

  print_tree(root.left)
  puts root.value
  print_tree(root.right)
end



# Example usage:
# Create a binary tree
# root = [4,2,7,1,3,6,9]
root = TreeNode.new(4)
root.left = TreeNode.new(2)
root.right = TreeNode.new(7)
root.left.left = TreeNode.new(1)
root.left.right = TreeNode.new(3)
root.left.left.left = TreeNode.new(6)
root.left.left.right = TreeNode.new(9)
p  invert_tree(root)

# puts "Inverted Tree:"
# print_tree(inverted_root)
