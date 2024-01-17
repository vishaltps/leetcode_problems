# Given a string s and an integer k, return the length of the longest substring of s such that the frequency of each character in this substring is greater than or equal to k.

# if no such substring exists, return 0.

def longest_substring(s, k)
  return 0 if s.empty? || k > s.length

  h = Hash.new(0)
  s.each_char { |c| h[c] += 1 }

  split_char = nil
  h.each do |key, val|
    if val < k
      split_char = key
      break
    end
  end
  return s.length if split_char.nil?

  substrings = s.split(split_char)
  max_length = 0

  substrings.each do |substring|
    max_length = [max_length, longest_substring(substring, k)].max
  end

  max_length

  # left = 0 
  # right = 0
  # current_substr = []
  # max_length = 0
  # n = k
  # while right < s.length
  #   binding.irb
  #   if current_substr.empty? || (current_substr.include? s[right]) || n >= 0
  #     current_substr << s[right]
  #     right += 1
  #     n -= 1
  #     max_length = [max_length, current_substr.length].max
  #   else
      
  #     current_substr << s[right]
  #     left += 1
  #     right = left
  #     n = k
  #   end
  # end
  # max_length
end

# Example 1:

# Input: s = "aaabb", k = 3
# Output: 3
# Explanation: The longest substring is "aaa", as 'a' is repeated 3 times.
# Example 2:

# Input: s = "ababbc", k = 2
# Output: 5
# Explanation: The longest substring is "ababb", as 'a' is repeated 2 times and 'b' is repeated 3 times.

s = "aaabb"
 k = 3
# s = "ababacb"
# k = 3
# s = "aaabbb"
# k = 3

p longest_substring(s, k)