# Given an array of integers temperatures represents the daily temperatures, return an array answer such that answer[i] is the number of days you have to wait after the ith day to get a warmer temperature. If there is no future day for which this is possible, keep answer[i] == 0 instead.

def daily_temperatures(temperatures)
  result = Array.new(temperatures.size, 0)
  stack = []
  temperatures.each_with_index do |temp, idx|
      while !stack.empty? && temperatures[stack[-1]] < temp
          ans = stack.pop
          result[ans] = idx - ans
      end
      stack.push(idx)
  end
#     i = 0
#   while i < temperatures.size
#     while !stack.empty? && temperatures[stack[-1]] < temperatures[i]
#       index = stack.pop
#       result[index] = i - index
#     end
#     stack.push(i)
#     i += 1
#   end 
result
end


def find_next_greater(temperatures, index, temp)
  while index < temperatures.size
    return index if temperatures[index] > temp

    index += 1
  end
  0
end

# Example 1:

# Input: temperatures = [73,74,75,71,69,72,76,73]
# Output: [1,1,4,2,1,1,0,0]
# Example 2:

# Input: temperatures = [30,40,50,60]
# Output: [1,1,1,0]
# Example 3:

# Input: temperatures = [30,60,90]
# Output: [1,1,0]

# temperatures = [73,74,75,71,69,72,76,73]
temperatures = [30,40,50,60]
# temperatures = [30,60,90]
p daily_temperatures(temperatures)