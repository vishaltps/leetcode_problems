require 'pry'
def str_reverse(str)
  l = 0
  r = str.length - 1
  while (l < r) do
    if str[l] =~ /[A-Za-z0-9]/
      temp = str[l]
      str[l] = str[r]
      str[r] = temp
    end
    l += 1
    r -= 1
  end
  str
end

str= "ab-cd"
# output = "dc-ba"

p str_reverse(str)