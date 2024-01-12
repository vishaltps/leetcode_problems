# You are given a string s of even length. Split this string into two halves of equal lengths, and let a be the first half and b be the second half.

# Two strings are alike if they have the same number of vowels ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'). Notice that s contains uppercase and lowercase letters.

# Return true if a and b are alike. Otherwise, return false.



VOWELS = ['a', 'e', 'i', 'o', 'u']
def halves_are_alike(s)
  steps = s.length / 2
  last_count = nil
  (0..s.length - 1).step(steps) do |c|
    current_count = s[c...c + steps].downcase.count('aeiou')

    return false if last_count && last_count != current_count

    last_count = current_count
  end
  true
  # s.chars.each_slice(s.length / 2).with_index do |c, i|
  #   current_count = c.join.count('aeiou')
  #   return false if last_count && last_count != current_count

  #   last_count = current_count
  # end
  
  # count.uniq.length == 1
end

# Example 1:

# Input: s = "book"
# Output: true
# Explanation: a = "bo" and b = "ok". a has 1 vowel and b has 1 vowel. Therefore, they are alike.
# Example 2:

# Input: s = "textbook"
# Output: false
# Explanation: a = "text" and b = "book". a has 1 vowel whereas b has 2. Therefore, they are not alike.
# Notice that the vowel o is counted twice.

# s = "book"
s = "textbook"
# s ="Uo"

p halves_are_alike(s)