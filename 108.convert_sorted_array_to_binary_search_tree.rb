# Given an integer array nums where the elements are sorted in ascending order, convert it to a 
# height-balanced
#  binary search tree.
require 'pry'
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end
# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  @nums = nums
  binary_search_bst(0, nums.length - 1)
end

def binary_search_bst(left, right)
  return nil if left > right

  mid = (left + right) / 2

  binding.pry
  root = TreeNode.new(@nums[mid])
  root.left = binary_search_bst(left, mid - 1)
  root.right = binary_search_bst(mid + 1, right)

  root
end

nums = [-10,-3,0,5,9]
p sorted_array_to_bst(nums)