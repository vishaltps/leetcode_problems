# In a town, there are n people labeled from 1 to n. There is a rumor that one of these people is secretly the town judge.

# If the town judge exists, then:

# The town judge trusts nobody.
# Everybody (except for the town judge) trusts the town judge.
# There is exactly one person that satisfies properties 1 and 2.
# You are given an array trust where trust[i] = [ai, bi] representing that the person labeled ai trusts the person labeled bi. If a trust relationship does not exist in trust array, then such a trust relationship does not exist.

# Return the label of the town judge if the town judge exists and can be identified, or return -1 otherwise.

def find_judge(n, trust) 
  return (n > 1 ? -1 : 1)  if trust.empty?

  h = Hash.new(0)
  trust.each {|a,b| h[b] += 1}

  judge = h.key(h.values.max)

  person = Set.new
  trust.each do |a, b|
    return -1 if judge == a

    if !person.include? a
      person.add(a)
      n -= 1
    end
  end

  n == 1 ? judge : -1
end

# Example 1:

# Input: n = 2, trust = [[1,2]]
# Output: 2
# Example 2:

# Input: n = 3, trust = [[1,3],[2,3]]
# Output: 3
# Example 3:

# Input: n = 3, trust = [[1,3],[2,3],[3,1]]
# Output: -1
# n = 2
# trust = [[1,2]]
# n = 3
#  trust = [[1,3],[2,3],[3,1]]
# n = 3
#  trust = [[1,3],[2,3]]
# n = 3
# trust = [[1,2],[2,3]]
# n = 4
# trust = [[1,3],[1,4],[2,3],[2,4],[4,3]]
# n = 1
# trust = []
# n = 4
# trust = [[1,3],[1,4],[2,3]]
# n = 4
# trust = [[1,3],[1,4],[2,3],[2,4],[4,3]]
n = 4
trust = [[1,2],[1,3],[2,1],[2,3],[1,4],[4,3],[4,1]]




p find_judge(n, trust)