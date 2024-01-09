require 'pry'
class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

def search(curr, needle)
  return false if curr.nil?

  return true if curr.value == needle

  search(curr.right, needle) if curr.value < needle
  search(curr.left, needle)
end

def dfs(root, needle)
  search(root, needle)
end

# Example usage:
# Create a binary tree
root = TreeNode.new(50)
root.left = TreeNode.new(25)
root.right = TreeNode.new(100)
root.left.left = TreeNode.new(20)
root.left.right = TreeNode.new(35)
root.left.left.left = TreeNode.new(95)
root.left.left.right = TreeNode.new(105)

# Calculate the maximum depth
p dfs(root, 21)
# puts "Maximum depth of the binary tree: #{depth}"
