class TreeNode
    attr_accessor :value, :left, :right
    def initialize(value = 0, left = nil, right = nil)
        @value = value
        @left = left
        @right = right
    end
end
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
require 'pry'
def is_same_tree(p, q)
  return true if p.nil? && q.nil?
  
  return false if p.nil? || q.nil?

  return false if p.value != q.value

  is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
end


p = TreeNode.new(1)
p.left = TreeNode.new(2)
p.right = TreeNode.new(3)
p.left.left = TreeNode.new(7)
p.left.right = TreeNode.new(9)

q = TreeNode.new(1)
q.left = TreeNode.new(2)
q.right = TreeNode.new(3)
q.left.left = TreeNode.new(7)
# q.left.right = TreeNode.new(9)

p is_same_tree(p, q)