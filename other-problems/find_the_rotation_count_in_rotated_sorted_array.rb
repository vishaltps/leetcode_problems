# Given an array arr[] of size N having distinct numbers sorted in increasing order and the array has been right rotated (i.e, the last element will be cyclically shifted to the starting position of the array) k number of times, the task is to find the value of k.

def find_rotation(arr)
  index = -1
  left = 0
  right = arr.size - 1
  ans = Float::INFINITY
  while left <= right
    mid = (left + right) / 2

    if arr[left] <= arr[right]
      if arr[left] < ans
        index = left
        ans = arr[left]
      end
      break
    end


    if arr[left] <= arr[mid]
      if arr[left] < ans
        index = left
        ans = arr[left]
      end
      left = mid + 1
    else
      if arr[mid] < ans
        index = mid
        ans = arr[mid]
      end
      right = mid - 1
    end
  end
  index
end

# Input: arr[] = {15, 18, 2, 3, 6, 12}
# Output: 2
# Explanation: Initial array must be {2, 3, 6, 12, 15, 18}. 
# We get the given array after rotating the initial array twice.

# Input: arr[] = {7, 9, 11, 12, 5}
# Output: 4


arr = [15, 18, 2, 3, 6, 12]
p find_rotation(arr)