# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

# Given a string s, return true if it is a palindrome, or false otherwise.

def is_palindrome(s)
  str = s.downcase.gsub(/[^0-9A-Za-z]/, '')
  return true if str.empty?

  first_index = 0
  last_index = str.length - 1
  while first_index < last_index do
    return false if str[first_index] != str[last_index]

    first_index += 1
    last_index -= 1
  end
  true
end

# Example 1:

# Input: s = "A man, a plan, a canal: Panama"
# Output: true
# Explanation: "amanaplanacanalpanama" is a palindrome.
# Example 2:

# Input: s = "race a car"
# Output: false
# Explanation: "raceacar" is not a palindrome.
# Example 3:

# Input: s = " "
# Output: true
# Explanation: s is an empty string "" after removing non-alphanumeric characters.
# Since an empty string reads the same forward and backward, it is a palindrome.

# s = "A man, a plan, a canal: Panama"
# p is_palindrome(s)

s = "race a car"
p is_palindrome(s)