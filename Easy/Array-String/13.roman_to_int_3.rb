def roman_to_int(s)
  mapping = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }
  i = 0
  output = 0
  while i < s.length
    if s[i + 1] && mapping[s[i + 1]] > mapping[s[i]]
      output += mapping[s[i + 1]] - mapping[s[i]]
      i += 2
    else
      output += mapping[s[i]]
      i += 1
    end
  end
  output
end


s = 'MCMXCIV'
p roman_to_int(s)

# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000