require 'pry'
def str_str(haystack, needle)
 haystack_size = haystack.size
 needle_size = needle.size
 i = 0
 while i <= haystack_size
  return i if haystack[i, needle_size] == needle

  i += 1
 end
 -1
end

# Input: haystack = "sadbutsad", needle = "sad"
# Output: 0
# Explanation: "sad" occurs at index 0 and 6.
# The first occurrence is at index 0, so we return 0.

# haystack = "sadbutsad"
# needle = "sad"
# haystack = "hello"
# needle = "ll"
# haystack = "leetcode"
# needle = "leeto"
haystack = "mississippi"
needle = "issip"
p str_str(haystack, needle)
# Input: haystack = "leetcode", needle = "leeto"
# Output: -1
# Explanation: "leeto" did not occur in "leetcode", so we return -1.
 