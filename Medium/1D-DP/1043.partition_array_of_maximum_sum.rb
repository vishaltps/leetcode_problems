# Given an integer array arr, partition the array into (contiguous) subarrays of length at most k. After partitioning, each subarray has their values changed to become the maximum value of that subarray.

# Return the largest sum of the given array after partitioning. Test cases are generated so that the answer fits in a 32-bit integer.

def max_sum_after_partitioning(arr, k)
  n = arr.size
  dp = Array.new(n)
  (0...n).each do |i|
    max_val = arr[i]
    j = 1

    while j <= k && (i - j + 1) >= 0
      max_val = [max_val, arr[i - j + 1]].max
      dp[i] = [dp[i].to_i, (i >= j ? dp[i - j] : 0) + max_val * j].max
      j += 1
    end
  end

  dp[n - 1]
end


# Example 1:

# Input: arr = [1,15,7,9,2,5,10], k = 3
# Output: 84
# Explanation: arr becomes [15,15,15,9,10,10,10]
# Example 2:

# Input: arr = [1,4,1,5,7,3,6,1,9,9,3], k = 4
# Output: 83
# Example 3:

# Input: arr = [1], k = 1
# Output: 1

arr = [1,15,7,9,2,5,10]
 k = 3
 p max_sum_after_partitioning(arr, k)