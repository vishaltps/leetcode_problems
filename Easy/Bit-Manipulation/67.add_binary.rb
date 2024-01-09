# Given two binary strings a and b, return their sum as a binary string.


require 'pry'
def add_binary(a, b)
  max_length = [a.length, b.length].max
  a = a.rjust(max_length, '0')
  b = b.rjust(max_length, '0')

  carry = 0
  result = ''

  (max_length - 1).downto(0) do |i|

    bit_a = a[i].to_i
    bit_b = b[i].to_i

    sum = bit_a + bit_b + carry
    current_bit = sum % 2
    carry = sum / 2

    result = current_bit.to_s + result
  end

  result = carry.to_s + result if carry.positive?

  result
end

# Example 1:

# Input: a = "11", b = "1"
# Output: "100"
# Example 2:

# Input: a = "1010", b = "1011"
# Output: "10101"
 

a = "11"
b = "1"

p add_binary(a, b)