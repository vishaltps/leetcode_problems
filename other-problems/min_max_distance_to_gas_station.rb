# We have an horizontal number line. On that number line, we have gas stations at positions stations[0], stations[1], ..., stations[N-1], where N = size of the stations array. Now, we add K more gas stations so that D, the maximum distance between adjacent gas stations, is minimized. We have to find the smallest possible value of D. Find the answer exactly to 2 decimal places.

def findSmallestMaxDist(stations, k)
  low, high = 0.0, stations[-1] - stations[0]

  while low + 1e-6 < high
    mid = (low + high) / 2
    if possible?(mid, stations, k)
      high = mid
    else
      low = mid
    end
  end

  return low.round(2)


end
def possible?(distance, stations, k)
  count = 0

  (1...stations.length).each do |i|
    count += ((stations[i] - stations[i - 1]) / distance).ceil - 1
  end

  count <= k
end


# Example 1:

# Input:
# N = 10
# stations = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# K = 9
# Output: 0.50
# Explanation: Each of the 9 stations can be added mid way between all the existing adjacent stations.
# Example 2:

# Input:
# N = 10
# stations = [3,6,12,19,33,44,67,72,89,95] 
# K = 2 
# Output: 14.00 
# Explanation: Construction of gas stations at 8th(between 72 and 89) and 6th(between 44 and 67) locations.

stations = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 9

p findSmallestMaxDist(stations, k)