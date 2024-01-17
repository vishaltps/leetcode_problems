class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
  end
end

def sorted_array_to_bst(nums)
  d_a_c(nums, 0, nums.size - 1)
end

def d_a_c(nums, left, right)
  return nil if left > right

  mid = (left + right) / 2
  root = TreeNode.new(nums[mid])
  root.left = d_a_c(nums, left, mid - 1)
  root.right = d_a_c(nums, mid + 1, right)
  root
end

# Example 1:
# Input: nums = [-10,-3,0,5,9]
# Output: [0,-3,9,-10,null,5]
# Explanation: [0,-10,5,null,-3,null,9] is also accepted:

# Example 2:
# Input: nums = [1,3]
# Output: [3,1]
# Explanation: [1,null,3] and [3,1] are both height-balanced BSTs.

nums = [-10,-3,0,5,9]
p sorted_array_to_bst(nums)
