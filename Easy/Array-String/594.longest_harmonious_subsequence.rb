def find_lhs(nums)
  h = Hash.new(0)
  nums.each do |n|
    h[n] += 1
  end
  max = 0

  h.each do |num, value|
    next unless n = h[num + 1]
    max = [n + value, max].max
  end

  max
end

# nums = [1,3,2,2,5,2,3,7]
nums = [1,3,2,2,5,2,3,7]
# nums = [1,1,1,1]

p find_lhs(nums)