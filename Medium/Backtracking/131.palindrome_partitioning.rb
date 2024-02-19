# Given a string s, partition s such that every 
# substring
#  of the partition is a 
# palindrome
# . Return all possible palindrome partitioning of s.

def partition(s)
  result = []
  backtracking(s, 0, [], result)
  result
end

def backtracking(s, idx, current, result)
  if idx == s.length
    result << current.dup
    return
  end

  (idx...s.length).each do |i|
    next unless palindrome?(s, idx, i)

    current.push(s[idx..i])
    backtracking(s, i + 1, current, result)
    current.pop
  end
end

def palindrome?(s, start, n)
  while start <= n
    return false if s[start] != s[n]

    start += 1
    n -= 1
  end
  true
end
# Example 1:

# Input: s = "aab"
# Output: [["a","a","b"],["aa","b"]]
# Example 2:

# Input: s = "a"
# Output: [["a"]]


s = "aab"
p partition(s)