# Given a binary tree where node values are digits from 1 to 9. A path in the binary tree is said to be pseudo-palindromic if at least one permutation of the node values in the path is a palindrome.

# Return the number of pseudo-palindromic paths going from the root node to leaf nodes.

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def pseudo_palindromic_paths(root)
  @res = 0
  @mp = Array.new(10, 0)
  solve(root)
  @res
end

def solve(root)
  return if root.nil?

  @mp[root.val] = @mp[root.val] + 1
  @res += 1 if root.left.nil? && root.right.nil? && palindrome?

  solve(root.left)
  solve(root.right)
  @mp[root.val] -= 1
end

def palindrome?
  miss = 0
  (0..9).each do |i|
    miss += 1 if @mp[i].odd?

    return false if miss > 1
  end

  true
end

# Example 1:

# Input: root = [2,3,1,3,1,null,1]
# Output: 2 
# Explanation: The figure above represents the given binary tree. There are three paths going from the root node to leaf nodes: the red path [2,3,3], the green path [2,1,1], and the path [2,3,1]. Among these paths only red path and green path are pseudo-palindromic paths since the red path [2,3,3] can be rearranged in [3,2,3] (palindrome) and the green path [2,1,1] can be rearranged in [1,2,1] (palindrome).
# Example 2:

# Input: root = [2,1,1,1,3,null,null,null,null,null,1]
# Output: 1 
# Explanation: The figure above represents the given binary tree. There are three paths going from the root node to leaf nodes: the green path [2,1,1], the path [2,1,3,1], and the path [2,1]. Among these paths only the green path is pseudo-palindromic since [2,1,1] can be rearranged in [1,2,1] (palindrome).
# Example 3:

# Input: root = [9]
# Output: 1
# root = [2,3,1,3,1,null,1]
root = TreeNode.new(2)
root.left = TreeNode.new(3)
root.right = TreeNode.new(1)
root.left.left = TreeNode.new(3)
root.left.right = TreeNode.new(1)
root.right.left = TreeNode.new(1)

# root = TreeNode.new(9)
p pseudo_palindromic_paths (root)