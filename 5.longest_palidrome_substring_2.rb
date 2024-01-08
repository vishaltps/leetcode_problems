def longest_palindrome(s)
  i = 0
  result = ''
  while i < s.length
    substr = check_palindrome(s, s[i], i)
    result = substr if substr.length > result.length
    i += 1
  end
  result
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

s = "babad"
p longest_palindrome(s)