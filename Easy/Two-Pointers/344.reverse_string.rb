# Write a function that reverses a string. The input string is given as an array of characters s.

# You must do this by modifying the input array in-place with O(1) extra memory.

def reverse_string(s)
  left = 0
  right = s.length - 1

  while left < right
    temp = s[left]
    s[left] = s[right]
    s[right] = temp
    left += 1
    right -= 1
  end
  s
end

s = ["h","e","l","l","o"]
p reverse_string(s)