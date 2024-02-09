# Problem Statement: Given an array of integers that may contain duplicates the task is to return all possible subsets. Return only unique subsets and they can be in any order.

# def subsetSums(n, array)
#   result = Set.new
#   backtrack(array.sort, n, 0, [], result)
#   result.sort
# end

# def backtrack(array, n, idx, current, result)
#   if idx == n
#     result << current.dup
#     return
#   end

#   current.push(array[idx])
#   backtrack(array, n, idx + 1, current, result)
#   current.pop
#   backtrack(array, n, idx + 1, current, result)
# end

def subsetSums(n, array)
  result = []
  backtrack(array.sort, n, 0, [], result)
  result
end

def backtrack(array, n, idx, current, result)
  result << current.dup

  (idx...array.size).each do |i|
    next if i != idx && array[i] == array[i - 1]

    current.push(array[i])
    backtrack(array, n, i + 1, current, result)
    current.pop
  end
end

# Example 1:

# Input: array[] = [1,2,2]

# Output: [ [ ],[1],[1,2],[1,2,2],[2],[2,2] ]

# Explanation: We can have subsets ranging from  length 0 to 3. which are listed above. Also the subset [1,2] appears twice but is printed only once as we require only unique subsets.

# Input: array[] = [1]

# Output: [ [ ], [1] ]

# Explanation: Only two unique subsets are available

array = [1,2,2]
n = 3
p subsetSums(n, array)