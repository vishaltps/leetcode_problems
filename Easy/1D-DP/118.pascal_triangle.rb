# Given an integer numRows, return the first numRows of Pascal's triangle.

# In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:

def generate(num_rows)
  return [] if num_rows.zero?

  triangle = [[1]]
  (1...num_rows).each do |i|
    row = [1]
    (1...i).each do |j|
      row << triangle[i - 1][j - 1] + triangle[i - 1][j]
    end
    row << 1
    triangle << row
  end
  triangle
end


# Example 1:

# Input: numRows = 5
# Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
# Example 2:

# Input: numRows = 1
# Output: [[1]]

num_rows = 1
p generate(num_rows)