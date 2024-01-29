# Dilpreet wants to paint his dog's home that has n boards with different lengths. The length of ith board is given by arr[i] where arr[] is an array of n integers. He hired k painters for this work and each painter takes 1 unit time to paint 1 unit of the board. 

# The problem is to find the minimum time to get this job done if all painters start together with the constraint that any painter will only paint continuous boards, say boards numbered {2,3,4} or only board {1} or nothing but not boards {2,4,5}.

def min_time(arr,n , k)
  low = arr.max
  high = arr.sum

  while low <= high
    mid = (low + high) / 2
    if find_no_allocation(mid, arr) > k
      low = mid + 1
    else
      high = mid - 1
    end
  end
  low
end

def find_no_allocation(mid, arr)
  count = 1
  current_count = 0

  arr.each do |a|
    if current_count + a <= mid
      current_count += a
    else
      count += 1
      current_count = a
    end
  end
  count
end
# Example 1:

# Input:
# n = 5
# k = 3
# arr[] = {5,10,30,20,15}
# Output: 35
# Explanation: The most optimal way will be:
# Painter 1 allocation : {5,10}
# Painter 2 allocation : {30}
# Painter 3 allocation : {20,15}
# Job will be done when all painters finish
# i.e. at time = max(5+10, 30, 20+15) = 35
# Example 2:

# Input:
# n = 4
# k = 2
# arr[] = {10,20,30,40}
# Output: 60
# Explanation: The most optimal way to paint:
# Painter 1 allocation : {10,20,30}
# Painter 2 allocation : {40}
# Job will be complete at time = 60

# n = 5
# k = 3
# arr = [5,10,30,20,15]
# n= 3 
# k = 2
# arr = [10,20,30]
p min_time(arr,n , k)