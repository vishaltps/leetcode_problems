# Given an array of integers arr, find the sum of min(b), where b ranges over every (contiguous) subarray of arr. Since the answer may be large, return the answer modulo 109 + 7.

def sum_subarray_mins(a)
  mod = 10**9 + 7
  stack = []
  result = 0

  a.each_with_index do |num, i|
    while !stack.empty? && a[stack.last] > num
      cur = stack.pop
      result += a[cur] * (i - cur) * (cur - (stack.last || -1))
      result %= mod
    end
    stack.push(i)
  end

  while !stack.empty?
    cur = stack.pop
    result += a[cur] * (a.size - cur) * (cur - (stack.last || -1))
    result %= mod
  end

  result
end


def backtracking(arr, current, index, sum)
  if current.size == index
    sum += current&.min || 0
    current = []
    return
  end

  while index < arr.size
    current << arr[index]
    backtracking(arr, current, index + 1, sum)
  end
end

# Example 1:

# Input: arr = [3,1,2,4]
# Output: 17
# Explanation: 
# Subarrays are [3], [1], [2], [4], [3,1], [1,2], [2,4], [3,1,2], [1,2,4], [3,1,2,4]. 
# Minimums are 3, 1, 2, 4, 1, 1, 2, 1, 1, 1.
# Sum is 17.
# Example 2:

# Input: arr = [11,81,94,43,3]
# Output: 444


arr = [3,1,2,4]
p sum_subarray_mins(arr)