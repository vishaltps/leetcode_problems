class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
  end
end

def max_depth(root)
  return 0 unless root

  queue = [root]
  count = 0
  until queue.empty?
    level_size = queue.size
    level_size.times do
      node = queue.shift

      queue.push(node.left) if node.left
      queue.push(node.right) if node.right
    end
    count += 1
  end
  count
end


def build_tree_from_arr(arr)
  root = TreeNode.new(arr.shift)
  queue = [root]
  until queue.empty?
    current = queue.shift
    left_val = arr.shift
    current.left = TreeNode.new(left_val) if left_val

    right_val = arr.shift
    current.right = TreeNode.new(right_val) if right_val
    queue.push(current.right) if current.right
  end
  root
end
# arr = [3,9,20,nil,nil,15,7]
# tree = build_tree_from_arr(arr)
root = TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20)
root.right.left = TreeNode.new(15)
root.right.right = TreeNode.new(7)


p max_depth(root)