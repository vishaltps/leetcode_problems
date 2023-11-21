require 'pry'
def is_valid(s)
  
  return false if s.length < 2
  mapping = {
    "(" => ")",
    "{" => "}",
    "[" => "]"
  }
  stack = []
  s.each_char do |c|
    if mapping.key? c
      stack.push(c)
    elsif mapping[stack.pop] != c
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
# s= "()[][]"
# s = "(]"
# s = "()"
s = ")(){}"
p is_valid(s)
