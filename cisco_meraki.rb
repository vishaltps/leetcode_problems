# input = [5, ON], [7, OFF], [8, ON], [12, OFF], [13, ON]
# [5,7][8,12]
ON = 1
OFF = 0

input = [[4, OFF],[5, ON], [7, OFF], [8, ON], [12, OFF], [13, ON]]

def first(input)
  result = []
  i = 0
  while i < input.length - 1
    if i.zero? && input[i][1] == OFF
      result << [0, input[i][0]]
      i += 1
    else
      result << [input[i][0], input[i + 1][0]]
      i += 2
    end
  end
  result
end

p first(input)

# [
#   [5,7], [8,12],
#   [6,8], [9,10]
#   [6,9], [10,30], [31,34]
# ]

# [[5,8],[8,30]]


