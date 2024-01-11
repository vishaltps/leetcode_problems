# Given the root of a binary tree, find the maximum value v for which there exist different nodes a and b where v = |a.val - b.val| and a is an ancestor of b.

# A node a is an ancestor of b if either: any child of a is equal to b or any child of a is an ancestor of b.

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def dfs(node, min, max)
  val = node.val
  @max_diff = [@max_diff, (val - min), (max - val)].max
  min = [val, min].min
  max = [val, max].max

  dfs(node.left, min, max) if node.left
  dfs(node.right, min, max) if node.right
end

def max_ancestor_diff(root)
  return 0 unless root

  @max_diff = 0
  rval = root.val
  dfs(root, rval, rval)
  @max_diff
end

def build_tree_from_array(arr)
  return nil if arr.empty?

  root = TreeNode.new(arr.shift)
  queue = [root]

  until queue.empty?
    current = queue.shift

    left_val = arr.shift
    current.left = TreeNode.new(left_val) if left_val
    queue.push(current.left) if current.left

    right_val = arr.shift
    current.right = TreeNode.new(right_val) if right_val
    queue.push(current.right) if current.right
  end

  root
end

root = [8,3,10,1,6,nil,14,nil,nil,4,7,13]
# 8:10
root = build_tree_from_array(root)
p max_ancestor_diff(root)