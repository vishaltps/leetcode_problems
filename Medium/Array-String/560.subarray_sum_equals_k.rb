# Given an array of integers nums and an integer k, return the total number of subarrays whose sum equals to k.

# A subarray is a contiguous non-empty sequence of elements within an array.

def subarray_sum(nums, k)
  # psa = []
  # psa.push(nums.first)
  # nums[1..].each do |el|
  #   psa.push(el + psa.last)
  # end
  # count = 0
  # h = Hash.new(0)
  # psa.each do |sum|
  #   count += 1 if sum == k
  #   if h[sum - k]
  #     count += h[sum - k]
  #   end
  #   h[sum] += 1
  # end
  # count

  count = 0
  cumulative_sum = 0
  sum_frequency = { 0 => 1 }

  nums.each_with_index do |num, index|
    puts "cumulative_sum - #{cumulative_sum}, sum_frequenct - #{sum_frequency}, diff #{cumulative_sum - k}"
    cumulative_sum += num
    if sum_frequency[cumulative_sum - k]
      binding.irb
      puts "diff - #{cumulative_sum}, time -@"
      count += sum_frequency[cumulative_sum - k] 
    end
    sum_frequency[cumulative_sum] = sum_frequency.fetch(cumulative_sum, 0) + 1
  end

  count
  # count = 0
  # i = 0
  # h = {}
  # while i < nums.size
  #   result = [nums[i]]
  #   j = i + i
  #   while j < nums.size
  #     result << nums[j]
  #     sum = result.sum
  #     puts "result - #{result}, sum - #{sum}"
  #     if h.key? sum - k
  #       count += 1
  #       break
  #     else
  #       h[nums[j]] = true
  #     end
  #     j += 1
  #   end
  #   i += 1
  # end
  # count
end


# Example 1:

# Input: nums = [1,1,1], k = 2
# Output: 2
# Example 2:

# Input: nums = [1,2,3], k = 3
# Output: 2
 

nums = [1,1,1]
 k = 2
# nums = [1,2,3]
#  k = 3
# nums = [1,-1,0]
# k = 0
# nums = [1,2,3]
# k =3
# nums = [1]
# k = 1


 p subarray_sum(nums, k)