require 'pry'
def leader(arr)
  # i = 0
  # result = []
  # while i < arr.length - 1
  #   j = i
  #   flag = true
  #   while j < arr.length
  #     if arr[i] < arr[j]
  #       flag = false
  #       break
  #     end
  #     j += 1
  #   end
  #   result << arr[i] if flag
  #   i += 1
  # end
  # result.push(arr[arr.length - 1])
  i = arr.length - 1
  result = [arr[i]]
  max = arr[i]
  while i.positive?
    if arr[i] > max
      result.push(arr[i])
      max = arr[i]
    end
    i -= 1
  end
  result.reverse
end

# Example 1:
# Input:
#  arr = [4, 7, 1, 0]
# Output:
#  7 1 0
# Explanation:
#  Rightmost element is always a leader. 7 and 1 are greater than the elements in their right side.

# Example 2:
# Input:
#  arr = [10, 22, 12, 3, 0, 6]
# Output:
#  22 12 6
# Explanation:
#  6 is a leader. In addition to that, 12 is greater than all the elements in its right side (3, 0, 6), also 22 is greater than 12, 3, 0, 6.

# arr = [4, 7, 1, 0]
arr = [10, 22, 12, 3, 0, 6]
p leader(arr)