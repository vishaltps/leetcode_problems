# Given an array of integers citations where citations[i] is the number of citations a researcher received for their ith paper and citations is sorted in ascending order, return the researcher's h-index.

# According to the definition of h-index on Wikipedia: The h-index is defined as the maximum value of h such that the given researcher has published at least h papers that have each been cited at least h times.

# You must write an algorithm that runs in logarithmic time.

def h_index(citations)
  left = 0
  n = citations.size
  right = n - 1
  while left <= right
    mid = left + (right - left) / 2

    if citations[mid] == n - mid
      return n - mid
    elsif citations[left] < n - mid
      left = mid + 1
    else
      right = mid - 1
    end
  end
  n - left
end

# Example 1:

# Input: citations = [0,1,3,5,6]
# Output: 3
# Explanation: [0,1,3,5,6] means the researcher has 5 papers in total and each of them had received 0, 1, 3, 5, 6 citations respectively.
# Since the researcher has 3 papers with at least 3 citations each and the remaining two with no more than 3 citations each, their h-index is 3.
# Example 2:

# Input: citations = [1,2,100]
# Output: 2
 

# citations = [0,1,3,5,6]
# citations = [1,2,100]
# citations = [0]
# citations = [100]
citations = [1,4,7,9]




p h_index(citations)