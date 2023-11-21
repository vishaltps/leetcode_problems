# 1356. Sort Integers by The Number of 1 Bits
# You are given an integer array arr. Sort the integers in the array in ascending order by the number of 1's in their binary representation and in case of two or more integers have the same number of 1's you have to sort them in ascending order.

# Return the array after sorting it.

require 'pry'
def sort_by_bits(arr)
  result = {}
  arr.sort.each do |a|
    result[a] = 0 if a.zero?
    one_length = a.to_s(2).count('1')
    result[a] = one_length
  end

  result.keys.sort_by { |key| result[key] }.flatten
end

# arr = [0,1,2,3,4,5,6,7,8]

# [0,1,2,4,8,3,5,6,7]
arr = [1024,512,256,128,64,32,16,8,4,2,1]


p sort_by_bits(arr)