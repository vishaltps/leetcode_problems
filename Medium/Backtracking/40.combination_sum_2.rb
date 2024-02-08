# Given a collection of candidate numbers (candidates) and a target number (target), find all unique combinations in candidates where the candidate numbers sum to target.

# Each number in candidates may only be used once in the combination.

# Note: The solution set must not contain duplicate combinations.

def combination_sum2(candidates, target)
  result = []
  candidates.sort!
  backtrack(candidates, target, 0, [], result)
  result
end

def backtrack(candidates, target, idx, current, result)
  if target == 0
    result << current.dup
    return
  end
  
  (idx...candidates.size).each do |i|
    next if i > idx && candidates[i] == candidates[i - 1]
 
    break if candidates[i] > target

    current.push(candidates[i])
    backtrack(candidates, target - candidates[i], i + 1, current, result)
    current.pop
  end
end


# Example 1:

# Input: candidates = [10,1,2,7,6,1,5], target = 8
# Output: 
# [
# [1,1,6],
# [1,2,5],
# [1,7],
# [2,6]
# ]
# Example 2:

# Input: candidates = [2,5,2,1,2], target = 5
# Output: 
# [
# [1,2,2],
# [5]
# ]

candidates = [10,1,2,7,6,1,5]
 target = 8
#  candidates = [1]
#  target = 2
 p combination_sum2(candidates, target)