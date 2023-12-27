
require 'pry'
def is_valid(s)
  mapping = {
    '(' => ')',
    '{' => '}',
    '[' => ']'
  }.freeze
  stack = []
  s.each_char do |c|
    if mapping.key? c
      stack.push(c)
    elsif stack.pop != mapping.key(c)
      return false
    end
  end

  stack.empty?
end


s = "()[]{}"
p is_valid(s)