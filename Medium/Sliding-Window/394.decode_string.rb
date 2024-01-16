# Given an encoded string, return its decoded string.

# The encoding rule is: k[encoded_string], where the encoded_string inside the square brackets is being repeated exactly k times. Note that k is guaranteed to be a positive integer.

# You may assume that the input string is always valid; there are no extra white spaces, square brackets are well-formed, etc. Furthermore, you may assume that the original data does not contain any digits and that digits are only for those repeat numbers, k. For example, there will not be input like 3a or 2[4].

# The test cases are generated so that the length of the output will never exceed 105.

class String
  def digit?
    to_i.to_s == self
  end
end

def decode_string(s)
  stack = []

  s.each_char do |c|
    stack.push(c)
    next unless c == ']'

    current_word = []
    count = []
    current_word.unshift(stack.pop) until stack.last.digit?
    count.unshift(stack.pop) while stack.last.to_s.digit?
    stack.push(current_word[1..-2].join * count.join.to_i)
  end
  stack.join
  # while i < s.length
  #   if s[i] == '['
  #   elsif s[i] == ']'
  #     ch = stack.last(char_count - 1)
  #     count = stack.first
  #     result += ch.join * count.to_i
  #     char_count = 0
  #     stack = []
  #   else
  #     char_count += 1
  #     stack.push(s[i])
  #   end
  #   i += 1
  # end
  # result
  
end

# Example 1:

# Input: s = "3[a]2[bc]"
# Output: "aaabcbc"
# Example 2:

# Input: s = "3[a2[c]]"
# Output: "accaccacc"
# Example 3:

# Input: s = "2[abc]3[cd]ef"
# Output: "abcabccdcdcdef"

# s = "3[a]2[bc]"
s = "3[a2[c]]"
p decode_string(s)