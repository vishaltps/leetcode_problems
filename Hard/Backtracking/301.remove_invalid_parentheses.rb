# Given a string s that contains parentheses and letters, remove the minimum number of invalid parentheses to make the input string valid.

# Return a list of unique strings that are valid with the minimum number of removals. You may return the answer in any order.

def remove_invalid_parentheses(s)
  result = []
  dfs(s, 0, 0, ['(', ')'], result)
  result
end

def dfs(s, start, last_removed, parentheses, result)
  count = 0

  (start...s.length).each do |i|
    count += 1 if s[i] == parentheses[0]
    count -= 1 if s[i] == parentheses[1]
    next unless count.negative?

    (last_removed..i).reverse_each do |j|
      next unless s[j] == parentheses[1] && (j == last_removed || s[j - 1] != parentheses[1])

      new_s = s[0...j] + s[j + 1..-1]
      dfs(new_s, i, j, parentheses, result)
    end

    return
  end

  reversed = s.reverse

  if parentheses[0] == '('
    dfs(reversed, 0, 0, [')', '('], result)
  else
    result << reversed
  end
end


# Example 1:

# Input: s = "()())()"
# Output: ["(())()","()()()"]
# Example 2:

# Input: s = "(a)())()"
# Output: ["(a())()","(a)()()"]
# Example 3:

# Input: s = ")("
# Output: [""]

s = "()())()"
p remove_invalid_parentheses(s)