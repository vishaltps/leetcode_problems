# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.
require 'pry'
def is_valid(s)
  return false if s.empty?

  bracket_mappings = {
    "(" => ")", "{" => "}", "[" => "]"
  }
  stack = []
  splitted_s = s.split('')
  splitted_s.each_with_index do |c, i|
   if bracket_mappings.key? c
      stack.push(c)
   elsif bracket_mappings[stack.pop()] != c 
    return false
   end
  end

  stack.empty?
end

# Example 1:

# Input: s = "()"
# Output: true
# Example 2:

# Input: s = "()[]{}"
# Output: true
# Example 3:

# Input: s = "(]"
# Output: false
 
# s = "()"
s= "()[][]"
p is_valid(s)