# Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.


def generate_parenthesis(n)
  result = []
  backtrack("", 0 ,0 ,n, result)
  result
end

def backtrack(current, open_count, close_count, n, result)
  
  if current.length == 2 * n
    puts "#{2 * n}, current - #{current}, open_count = #{open_count}, close_count = #{close_count}"
    return result << current
  end

  if open_count < n 
    backtrack(current + '(', open_count + 1, close_count, n, result)
  end
  if close_count < open_count
    backtrack(current + ')', open_count, close_count + 1, n, result)
  end
end


# Example 1:

# Input: n = 3
# Output: ["((()))","(()())","(())()","()(())","()()()"]
# Example 2:

# Input: n = 1
# Output: ["()"]

n = 3
p generate_parenthesis(n)