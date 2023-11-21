# Given two integers n and k, return all possible combinations of k numbers chosen from the range [1, n].

# You may return the answer in any order.
def combine(n, k)
  result = []
  backtracing(1, [], n, k , result)
  result
end

def backtracing(start, current, n, k, result)
  return result << current.dup if k.zero?

  start.upto(n) do |i|
    current << i
    backtracing(i + 1, current, n, k - 1, result)
    current.pop
  end
end

# Example 1:

# Input: n = 4, k = 2
# Output: [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
# Explanation: There are 4 choose 2 = 6 total combinations.
# Note that combinations are unordered, i.e., [1,2] and [2,1] are considered to be the same combination.
# Example 2:

# Input: n = 1, k = 1
# Output: [[1]]
# Explanation: There is 1 choose 1 = 1 total combination.
p combine(4, 2)