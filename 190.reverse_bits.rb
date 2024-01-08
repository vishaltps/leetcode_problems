
def reverse_bits(n)
  # result = 0
  # (0..32).each do |i|
  #   bit = (n >> i ) & 1
  #   result += (bit << (31- i))
  # end
  # result
  # n = n.to_s(2)
  # (("0" * (32-n.length)) + n).reverse.to_i(2)
  result = 0
    32.times do
      result = (result << 1) | (n & 1)
      n >>= 1
    end
  result
end

n = 00000010100101000001111010011100
p reverse_bits(n)
