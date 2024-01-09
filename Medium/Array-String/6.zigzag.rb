# The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

def convert(s, num_rows)
  return s if num_rows == 1 || num_rows >= s.length

  result = Array.new([num_rows, s.length].min) { "" }
  current_row = 0
  gd  =false
  s.each_char do |c|
    result[current_row] += c
    gd = !gd if current_row == 0 || current_row == num_rows - 1
    current_row += gd ? 1 : -1
  end
  p result
  result.join('')
end

s = "PAYPALISHIRING"
num_rows = 3

p convert(s, num_rows)