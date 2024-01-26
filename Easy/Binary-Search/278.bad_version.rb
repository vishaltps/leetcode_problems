# You are a product manager and currently leading a team to develop a new product. Unfortunately, the latest version of your product fails the quality check. Since each version is developed based on the previous version, all the versions after a bad version are also bad.

# Suppose you have n versions [1, 2, ..., n] and you want to find out the first bad one, which causes all the following ones to be bad.

# You are given an API bool isBadVersion(version) which returns whether version is bad. Implement a function to find the first bad version. You should minimize the number of calls to the API.

def is_bad_version(v)
  v >= 1
end
def first_bad_version(n)
   left = 1
   right = n
    bad_version = Float::INFINITY
   while left <= right
    mid = (left + right) / 2

    if is_bad_version(mid)
      bad_version = [bad_version, mid].min
      right = mid -  1
    else
      left = mid + 1
    end
   end
   bad_version
end

# Example 1:

# Input: n = 5, bad = 4
# Output: 4
# Explanation:
# call isBadVersion(3) -> false
# call isBadVersion(5) -> true
# call isBadVersion(4) -> true
# Then 4 is the first bad version.
# Example 2:

# Input: n = 1, bad = 1
# Output: 1
 

# n = 5
# bad = 4
# n = 10
# bad = 10
n = 1
bad = 1
p first_bad_version(n)
# 1, 2, 3,4,5
