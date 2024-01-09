# Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.

# A mapping of digits to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.


require 'pry'
def letter_combinations(digits)
  return [] if digits.empty?

  mapping = {
    "2" => "abc",
    "3" => "def",
    "4" => "ghi",
    "5" => "jkl",
    "6" => "mno",
    "7" => "pqrs",
    "8" => "tuv",
    "9" => "wxyz"
  }
  result = []

  backtracing(0, "", digits,mapping, result)
  result
end

def backtracing(index, current, digits, mapping, result)
  if index == digits.length
    return result << current
  end

  letters = mapping[digits[index]]
  puts "letters = #{letters}"

  letters.each_char do |d|
    backtracing(index + 1, current + d, digits, mapping, result)
  end
end


# Example 1:

# Input: digits = "23"
# Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]
# Example 2:

# Input: digits = ""
# Output: []
# Example 3:

# Input: digits = "2"
# Output: ["a","b","c"]

digits = "279"
p letter_combinations(digits)