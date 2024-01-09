def gcd_of_strings(str1, str2)
  return '' unless str1 + str2 == str2 + str1
  
  gcd_length = gcd(str1.length, str2.length)
  str1[0, gcd_length]
end

def gcd(a, b)
  b.zero? ? a : gcd(b, a % b)
end


# str1 = "ABCABC"
# str2 = "ABC"
str1 = "ABABAB"
str2 = "ABAB"
# str1 = "LEET"
# str2 = "CODE"



p gcd_of_strings(str1, str2)