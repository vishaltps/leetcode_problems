
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
def leaf_similar(root1, root2)
  arr1 = arr2 = []
  find_leafes(root1, arr1)
  find_leafes(root2, arr1)
  # if !root1.nil? && !root2.nil? && (root1.left.nil? || root1.right.nil?) && (root2.left.nil? || root2.right.nil?)
  #   if root1.val != root2.val
  #     return false
  #   end
  # end
  # # if root1.nil? || root2.nil?
  # #   binding.irb
  # #   return true
  # # end

  # leaf_similar(root1.left, root2.left) if root1.left && root2.left
  # leaf_similar(root1.right, root2.right) if root1.right && root2.right
end

def find_leafes(node, result)
  if node.left.nil? && node.right.nil?
    result << node.val
    return
  end

  find_leafes(node.left, result) if ndoe.left
  find_leafes(node.right, result) if ndoe.right
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


# root1 = TreeNode.new(1)
# root2 = TreeNode.new(1)
# root1.left = 2
# root1.right = 3
# root2.left = 3
# root2.right = 2
# root1 = build_tree_from_array([3,5,1,6,2,9,8,nil,nil,7,4])
# root2 = build_tree_from_array([3,5,1,6,7,4,2,nil,nil,nil,nil,nil,nil,9,8])
root1 = build_tree_from_array([3,5,1,6,2,9,8,nil,nil,7,4])
root2 = build_tree_from_array([3,5,1,6,7,4,2,nil,nil,nil,nil,nil,nil,9,8])
# root1 = build_tree_from_array([1,2,3])
# root2 = build_tree_from_array([1,3,2])

p leaf_similar(root1, root2)