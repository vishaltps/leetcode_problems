# An integer has sequential digits if and only if each digit in the number is one more than the previous digit.

# Return a sorted list of all the integers in the range [low, high] inclusive that have sequential digits.

def sequential_digits(low, high)
  result = []

  (1..9).each do |start_digit|
    num = start_digit
    current_digit = start_digit

    while num <= high
      result << num if num >= low
      current_digit += 1

      break if current_digit > 9

      num = num * 10 + current_digit
    end
  end

  result.sort
end

def in_sequence(n)
  ans = true

  n = n.digits.reverse
  last = n[0]
  i = 1
  while i < n.size
    return false if n[i] != last + 1

    last = n[i]
    i += 1
  end
  ans
end

# p in_sequence(123)

# Example 1:

# Input: low = 100, high = 300
# Output: [123,234]
# Example 2:

# Input: low = 1000, high = 13000
# Output: [1234,2345,3456,4567,5678,6789,12345]
 

# low = 10
# high = 300
low = 178546104
high = 812704742
p sequential_digits(low, high)