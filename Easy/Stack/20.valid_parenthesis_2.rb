# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Every close bracket has a corresponding open bracket of the same type.

MAPPING = {
  '(' => ')',
  '{' => '}',
  '[' => ']'
}

require 'pry'
def is_valid(s)
  i = 0
  stack = []
  while i < s.length
    if MAPPING.key? s[i]
      stack.push(s[i])
    elsif MAPPING[stack.pop] != s[i]
      return false
    end
    i += 1
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
# s = "(]"
s = "([)]"

p is_valid(s)