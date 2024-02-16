# Given an array of integers arr and an integer k. Find the least number of unique integers after removing exactly k elements.

def find_least_num_of_unique_ints(arr, k)
  # arr.sort_by! { |n| arr.count(n) }
  # while k > 0
  #   arr.shift
  #   k -= 1
  # end
  # arr.uniq.size
  result = 0
  h = arr.tally
  h = h.values.sort
  h.each do |value|
      if k > 0
          temp = value
          value -= k
          k -= temp
      end
      result += 1 if value > 0
  end
  result
end

# Example 1:

# Input: arr = [5,5,4], k = 1
# Output: 1
# Explanation: Remove the single 4, only 5 is left.
# Example 2:
# Input: arr = [4,3,1,1,3,3,2], k = 3
# Output: 2
# Explanation: Remove 4, 2 and either one of the two 1s or three 3s. 1 and 3 will be left.


# arr = [5,5,4]
# k = 1
# arr = [4,3,1,1,3,3,2]
#  k = 3
# arr = [24,119,157,446,251,117,22,168,374,373,323,311,441,213,120,412,200,236,328,24,164,104,331,32,19,223,89,114,152,82,456,381,355,343,157,245,443,368,229,49,82,16,373,142,240,125,8]
# k = 41

arr = [24,119,157,446,251,117,22,168,374,373,323,311,441,213,120,412,200,236,328,24,164,104,331,32,19,223,89,114,152,82,456,381,355,343,157,245,443,368,229,49,82,16,373,142,240,125,8]
k = 41
p find_least_num_of_unique_ints(arr, k)