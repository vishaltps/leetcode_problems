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
}.freeze

def letter_combinations(digits)
  return [] if digits.empty?

  result = []
  backtracing(0, '', result, digits)
  result
end

def backtracing(index, current, result, digits)
  return result << current if index == digits.length

  str = MAPPING[digits[index]]
  str.each_char do |d|
    p d
    backtracing(index + 1, current + d, result, digits)
  end
end

digits = "23"

p letter_combinations(digits)