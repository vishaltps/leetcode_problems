require 'pry'

def is_palindrome(x)
  chars = x.to_s.split('')
  first_index = 0
  second_index = chars.length - 1
  while first_index <= second_index
    return false if chars[first_index] != chars[second_index]

    first_index += 1
    second_index -= 1
  end
  true
end
x = 121
p is_palindrome(x)