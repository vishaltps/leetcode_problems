# Given two strings s1 and s2, return true if s2 contains a permutation of s1, or false otherwise.

# In other words, return true if one of s1's permutations is the substring of s2.

def check_inclusion(s1, s2)
  return false if s1.length > s2.length

  freq1 = Array.new(26, 0)
  freq2 = Array.new(26, 0)

  i = 0
  while i < s1.length
    freq1[s1[i].ord - 'a'.ord] += 1
    freq2[s2[i].ord - 'a'.ord] += 1
    i += 1
  end

  i = 0
  while i <= s2.length - s1.length
    return true if is_match?(freq1, freq2)

    if i + s1.length < s2.length
      freq2[s2[i].ord - 'a'.ord] -= 1
      freq2[s2[i + s1.length].ord - 'a'.ord] += 1
    end

    i += 1
  end

  false
end

def is_match?(f1, f2)
  i = 0
  while i < 26
    return false if f1[i] != f2[i]
    i += 1
  end
  true
end



# def find_permutations(s1, idx, current, freq, result)
#   if s1.length == current.size
#     result << current.clone.join
#     return
#   end

#   i = 0
#   (0...s1.length).each do |i|
#     next if freq[s1[i]]

#     current.push(s1[i])
#     freq[s1[i]] = true
#     find_permutations(s1, idx + 1, current,freq, result)
#     freq[s1[i]] = false
#     current.pop
#   end
# end

# Example 1:

# Input: s1 = "ab", s2 = "eidbaooo"
# Output: true
# Explanation: s2 contains one permutation of s1 ("ba").
# Example 2:

# Input: s1 = "ab", s2 = "eidboaoo"
# Output: false

# s1 = "ab"
#  s2 = "eidbaooo"
# s1 = "ab"
#  s2 = "eidboaoo"
s1 = "adc"
s2 = "dcda"
# s1 = "a"
# s2 = "a"

 p check_inclusion(s1, s2)