# Given an array nums of distinct integers, return all the possible permutations. You can return the answer in any order.

def permute(nums)
  result = []
  backtrack(nums, 0, [], {}, result)
  result
end

def backtrack(nums, idx, current, freq, result)
  if current.size == nums.size
    result << current.clone
    return
  end

  (0...nums.size).each do |i|
    next if freq[nums[i]]

    current.push(nums[i])
    freq[nums[i]] = true
    backtrack(nums, i + 1, current, freq, result)
    freq[nums[i]] = false
    current.pop
  end
end

# Example 1:

# Input: nums = [1,2,3]
# Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
# Example 2:

# Input: nums = [0,1]
# Output: [[0,1],[1,0]]
# Example 3:

# Input: nums = [1]
# Output: [[1]]


# nums = [1,2,3]
nums = [0,1]
p permute(nums)