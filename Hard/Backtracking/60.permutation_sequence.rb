# The set [1, 2, 3, ..., n] contains a total of n! unique permutations.

# By listing and labeling all of the permutations in order, we get the following sequence for n = 3:


def get_permutation(n, k)
  fact = 1
  numbers = (1..n).to_a
  ans = ''

  k -= 1

  (1...n).each { |i| fact *= i }

  n.times do
    ans += numbers[k / fact].to_s
    numbers.delete_at(k / fact)
    break if numbers.empty?

    k %= fact
    fact /= numbers.size
  end

  ans

end

# def backtracking(list, idx, k, freq, current, result)
#   if current.size == list.size
#     result << current.dup
#     return
#   end

#   (0...list.size).each do |i|
#     next if freq[list[i]]

#     freq[list[i]] = true
#     current.push(list[i])
#     backtracking(list, i + 1, k, freq,current, result)
#     freq[list[i]] = false
#     current.pop
#   end
# end
# Example 1:

# Input: n = 3, k = 3
# Output: "213"
# Example 2:

# Input: n = 4, k = 9
# Output: "2314"
# Example 3:

# Input: n = 3, k = 1
# Output: "123"

n = 4
 k = 9
 p get_permutation(n, k)