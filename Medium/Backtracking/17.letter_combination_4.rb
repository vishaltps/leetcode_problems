MAPPING = {
  "2" => "abc",
  "3" => "def",
  "4" => "ghi",
  "5" => "jkl",
  "6" => "mno",
  "7" => "qprs",
  "8" => "tuv",
  "9" => "wxyz",
}
def letter_combinations(digits)
  result = []
  backtracing(0, '', result, digits)
  result
end

def backtracing(current_index, current, result, digits)
  if current_index == digits.length
    result.push(current)
    return
  end

  str = MAPPING[digits[current_index]]
  str.each_char do |d|
    backtracing(current_index + 1, current + d, result, digits)
  end
end

digits = "23"
p letter_combinations(digits)