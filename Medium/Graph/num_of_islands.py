# def numIslands(grid):
#   if not grid:
#       return 0
  
#   def dfs(i, j):
#       if i < 0 or i >= len(grid) or j < 0 or j >= len(grid[0]) or grid[i][j] == '0':
#           return
#       grid[i][j] = '0'  # Mark as visited
#       dfs(i + 1, j)
#       dfs(i - 1, j)
#       dfs(i, j + 1)
#       dfs(i, j - 1)
  
#   num_islands = 0
#   for i in range(len(grid)):
#       for j in range(len(grid[0]):
#           if grid[i][j] == '1':
#               num_islands += 1
#               dfs(i, j)
#   return num_islands

# # Example usage:
# grid = [
#   ['1', '1', '0', '0', '0'],
#   ['1', '1', '0', '0', '0'],
#   ['0', '0', '1', '0', '0'],
#   ['0', '0', '0', '1', '1']
# ]
# print(numIslands(grid))  # Output: 3

def generate_parenthesis(n)
  def backtrack(s, left, right)
    if s.length == 2 * n
      result << s
      return
    end
    backtrack(s + '(', left + 1, right) if left < n
    backtrack(s + ')', left, right + 1) if right < left
  end

  result = []
  backtrack('', 0, 0)
  puts result
end

# Example usage:
n = 3
p generate_parenthesis(n).inspect  # Output: ["((()))", "(()())", "(())()", "()(())", "()()()"]
