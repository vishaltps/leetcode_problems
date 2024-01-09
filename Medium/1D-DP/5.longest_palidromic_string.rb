# Given a string s, return the longest 
require 'pry'
# def longest_palindrome(s)
#   str = ''
#   ar = s.split('')
#   rev = s.reverse
#   count = 0
#   (0..ar.length - 1).each do |i|
#     elem = ar[i]
#     subs = check_palindrome(s, elem, i)
#     if subs.length > str.length
#       str = subs
#     end
#   end
#   str
# end

# def check_palindrome(s, elem, i)
#   str = ''
#   count = 0
#   rinx = s.rindex(elem)
#   while str.length ==  0
    
#     substr = s.slice(i, rinx-i+1)
#     puts "i - #{i}, rind - #{rinx}, rinx-i+1 - #{rinx-i+1} substr - #{substr}"
#     if substr == substr.reverse && substr.length > count
#       count = substr.length
#       str = substr
#     end
#     break if rinx == 0

#     s = s.slice(0, rinx)
#   binding.pry if s == 'aa'
#     rinx = s.rindex(elem)
#   end
#   str
# end


def longest_palindrome(s)
  output = ''
  i = 0

  while i < s.length
    result = check_palindrome(s, s[i], i)
    output = result if result.length > output.length
    i += 1
  end
  output
end

def check_palindrome(s, c, i)
  rinx = s.rindex(c)
  str = ''

  while str.empty?
    substr = s[i..rinx]
    str = substr if substr == substr.reverse
    break if rinx.zero?

    s = s.slice(0, rinx)
    rinx = s.rindex(c)
  end
  str
end
# Example 1:

# Input: s = "babad"
# Output: "bab"
# Explanation: "aba" is also a valid answer.
# Example 2:

# Input: s = "cbbd"
# Output: "bb"
 
# s = "babad"
# s = "cbbd"
s = "aacabdkacaa"
p longest_palindrome(s)