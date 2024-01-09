require 'pry'
def int_to_roman(num)
  mapping = [
    ['M', 1000],
    ['CM', 900],
    ['D', 500],
    ['CD', 400],
    ['C', 100],
    ['XC', 90],
    ['L', 50],
    ['XL', 40],
    ['X', 10],
    ['IX', 9],
    ['V', 5],
    ['IV', 4],
    ['I', 1]
  ]
  output = ''
  i = 0
  while num.positive?
    if mapping[i][1] <= num
      output += mapping[i][0]
      num -= mapping[i][1]
    else
      i += 1
    end
  end
  output
end

num = 1994
p int_to_roman(num)

# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000