# Below lists detail all eight possible movements from a cell
# (top, right, bottom, left, and four diagonal moves)


# Function to check if it is safe to go to cell (x, y) from the current cell.
# The function returns false if (x, y) is not valid matrix coordinates
# or cell (x, y) is already processed.
def is_safe(x, y, processed)
  return (0 <= x && x < processed.length) && (0 <= y && y < processed[0].length) && !processed[x][y]
end

# A recursive function to generate all possible words in a boggle
def search_boggle(board, words, result, processed, i, j, path = '', row, col)
  # Mark the current node as processed
  processed[i][j] = true

  # Update the path with the current character and insert it into the set
  path += board[i][j]

  # Check whether the path is present in the input set
  result.add(path) if words.include?(path)

  # Check for all eight possible movements from the current cell
  row.length.times do |k|
    x, y = i + row[k], j + col[k]

    # Skip if a cell is invalid, or it is already processed
    search_boggle(board, words, result, processed, x, y, path, row, col) if is_safe(x, y, processed)
  end

  # Backtrack: mark the current node as unprocessed
  processed[i][j] = false
end

def search_in_boggle(board, words)
  # Construct a set to store valid words constructed from the boggle
  result = Set.new

  # Base case
  return if board.empty? || board[0].empty?

  # `M × N` board
  m, n = board.length, board[0].length
  row = [-1, -1, -1, 0, 1, 0, 1, 1]
  col = [-1, 1, 0, -1, -1, 1, 0, 1]

  # Construct a boolean matrix to store whether a cell is processed or not
  processed = Array.new(m) { Array.new(n, false) }

  # Generate all possible words in a boggle
  m.times do |i|
    n.times do |j|
      # Consider each character as a starting point and run DFS
      search_boggle(board, words, result, processed, i, j, row, col)
    end
  end

  result.to_a
end

# Example usage:
board = [
  ['M', 'S', 'E'],
  ['R', 'A', 'T'],
  ['L', 'O', 'N']
]

words = ['STAR', 'NOTE', 'SAND', 'STONE']

valid_words = search_in_boggle(board, words)
puts valid_words
