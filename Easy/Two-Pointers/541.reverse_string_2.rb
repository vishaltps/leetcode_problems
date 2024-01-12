# Given a string s and an integer k, reverse the first k characters for every 2k characters counting from the start of the string.

# If there are fewer than k characters left, reverse all of them. If there are less than 2k but greater than or equal to k characters, then reverse the first k characters and leave the other as original.


def reverse_str(s, k)
  output = ''
  0.step(s.length, 2 * k) do |i|
    s[i..(i + k) - 1] = s[i..(i + k) - 1].reverse
  end
  s
end


s = "abcdefg"
# s = "abcd"
k = 2
# s = "abcdefg"
# k = 3
p reverse_str(s,k)
