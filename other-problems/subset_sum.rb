# Problem Statement: Given an array print all the sum of the subset generated from it, in the increasing order.

# def subsetSums(n, array)
#   result = []
#   backtrack(array.sort, n, 0, [], result)
#   result.sort
# end

# def backtrack(array, n, idx, current, result)
#   if idx == n
#     result << current.sum
#     return
#   end

#   current.push(array[idx])
#   backtrack(array, n, idx + 1, current, result)
#   current.pop
#   backtrack(array, n, idx + 1, current, result)
# end
def subsetSums(n, array)
  result = []
  backtrack(array.sort, n, 0, 0, result)
  result.sort
end

def backtrack(array, n, idx, sum, result)
  if idx == n
    result << sum
    return
  end

  # current.push(array[idx])
  backtrack(array, n, idx + 1, sum + array[idx], result)
  # current.pop
  backtrack(array, n, idx + 1, sum, result)
end

# Example 1:

# Input: N = 3, arr[] = {5,2,1}

# Output: 0,1,2,3,5,6,7,8

# Explanation: We have to find all the subset’s sum and print them.in this case the generated subsets are [ [], [1], [2], [2,1], [5], [5,1], [5,2]. [5,2,1],so the sums we get will be  0,1,2,3,5,6,7,8


# Input: N=3,arr[]= {3,1,2}

# Output: 0,1,2,3,3,4,5,6

# Explanation: We have to find all the subset’s sum and print them.in this case the generated subsets are [ [], [1], [2], [2,1], [3], [3,1], [3,2]. [3,2,1],so the sums we get will be  0,1,2,3,3,4,5,6

N = 3
arr = [5,2,1]
# arr = [3,1,2]
p subsetSums(N, arr)