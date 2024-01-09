require 'pry'
MAPPING = {
  '2' => 'abc',
  '3' => 'def',
  '4' => 'ghi',
  '5' => 'jkl',
  '6' => 'mno',
  '7' => 'pqrs',
  '8' => 'tuv',
  '9' => 'wxyz'
}
def letter_combinations(digits)
  result = []

  backtracing(0, '', digits, result)
  result
end

def backtracing(index, current, digits, result)
  if index == digits.length
    result << current
    return 
  end

  str = MAPPING[digits[index]]
  str.each_char do |d|
    backtracing(index + 1, current + d, digits, result)
  end
end
digits = "23"

p letter_combinations(digits)