def is_subsequence(s, t)
  first_index = 0
  second_index = 0

  while first_index < s.length && second_index < t.length
    first_index += 1 if s[first_index] == t[second_index]

    second_index += 1
  end

  first_index == s.length
end

# Input: 
# Output: true
s = "abcd"
t = "ahbgdc"

s = "aaaaaa"
t = "bbaaaa"

p is_subsequence(s, t)