def generate_parenthesis(n)
  result = []
  puts "in main method 1"
  backtrack("", 0, 0, n, result)
  puts "in main method"
  result
end

def backtrack(current, open_count, close_count, n, result)
  if current.length == n * 2
    puts "#{2 * n}, current - #{current}, open_count = #{open_count}, close_count = #{close_count}"
    return result << current
  end
  puts "After current "

  if open_count < n
    backtrack(current + '(', open_count + 1, close_count, n, result)
  end
  if close_count < open_count
    backtrack(current + ')', open_count, close_count + 1, n, result)
  end
end

n = 2

p generate_parenthesis(2)