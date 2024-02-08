# Given an array of integers nums, sort the array in ascending order and return it.

# You must solve the problem without using any built-in functions in O(nlog(n)) time complexity and with the smallest space complexity possible.


def merge(nums, low, mid, high)
  temp = []
  left = low 
  right = mid + 1
  while left <= mid && right <= high
    if nums[left] <= nums[right]
      temp.push(nums[left])
      left += 1
    else
      temp.push(nums[right])
      right += 1
    end
  end

  while left <= mid
    temp.push(nums[left])
    left += 1
  end

  while right <= high
    temp.push(nums[right])
    right += 1
  end

  i = low
  while i <= high
    nums[i] = temp[i - low]
    i += 1
  end
  nums
end
def merge_sort(nums, low, high)
  return if low == high

  mid = (low + high) / 2
  merge_sort(nums, low, mid)
  merge_sort(nums, mid + 1, high)
  merge(nums, low, mid, high)
end

def sort_array(nums)
  merge_sort(nums, 0, nums.size - 1)
end

# Example 1:

# Input: nums = [5,2,3,1]
# Output: [1,2,3,5]
# Explanation: After sorting the array, the positions of some numbers are not changed (for example, 2 and 3), while the positions of other numbers are changed (for example, 1 and 5).
# Example 2:

# Input: nums = [5,1,1,2,0,0]
# Output: [0,0,1,1,2,5]
# Explanation: Note that the values of nums are not necessairly unique.

nums = [5,2,3,1]
p sort_array(nums)