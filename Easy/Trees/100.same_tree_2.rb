# Given the roots of two binary trees p and q, write a function to check if they are the same or not.

# Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
def is_same_tree(p, q)
  return true if p.nil? && q.nil?

  return false if p.nil? || q.nil?

  return false if p.val != q.val

  is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
end

p = TreeNode.new(1)
p.left = TreeNode.new(2)
p.right = TreeNode.new(3)
q = TreeNode.new(1)
q.left = TreeNode.new(2)
q.right = TreeNode.new(3)

p is_same_tree(p, q)