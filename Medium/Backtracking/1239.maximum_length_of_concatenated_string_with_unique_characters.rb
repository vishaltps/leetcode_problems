# You are given an array of strings arr. A string s is formed by the concatenation of a subsequence of arr that has unique characters.

# Return the maximum possible length of s.

# A subsequence is an array that can be derived from another array by deleting some or no elements without changing the order of the remaining elements.

def max_length(arr)
  @max_length = 0
  return @max_length if arr.empty?

  backtracking(arr, '', 0)
  @max_length
end

def backtracking(arr, current, idx)
  uniq = unique? current

  @max_length = current.size if uniq && current.size > @max_length

  return if idx == arr.size || !uniq

  (idx...arr.size).each do |i|
    backtracking(arr, current + arr[i], i + 1)
  end
end

def unique?(str)
  str.chars.uniq.size == str.length
end



# def backtracking(arr, current)
#   return 0 if current.chars.uniq.size != current.length

#   max_length = current.length
  
#   arr.each do |w|
#     updated_length = backtracking(arr, current + w)
#     max_length = [max_length, updated_length].max
#   end
#   max_length
# end

# Example 1:

# Input: arr = ["un","iq","ue"]
# Output: 4
# Explanation: All the valid concatenations are:
# - ""
# - "un"
# - "iq"
# - "ue"
# - "uniq" ("un" + "iq")
# - "ique" ("iq" + "ue")
# Maximum length is 4.
# Example 2:

# Input: arr = ["cha","r","act","ers"]
# Output: 6
# Explanation: Possible longest valid concatenations are "chaers" ("cha" + "ers") and "acters" ("act" + "ers").
# Example 3:

# Input: arr = ["abcdefghijklmnopqrstuvwxyz"]
# Output: 26
# Explanation: The only string in arr has all 26 characters.

arr = ["un","iq","ue"]
# arr = ["cha","r","act","ers"]
# arr = ["abcdefghijklmnopqrstuvwxyz"]
p max_length(arr)