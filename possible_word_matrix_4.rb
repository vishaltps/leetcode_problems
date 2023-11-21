
def is_safe(x,y, visited)
   0 <= x && x < visited.length && 0 <= y && y < visited[0].length && !visited[x][y]
end


def search_boggle(board, i , j, result, path, words, visited, row, col)
  visited[i][j] = true
  path += board[i][j]
  result.add(path) if (words.include? path)

  row.length.times do |k|
    x, y = i + row[k], j + col[k]
    search_boggle(board, x, y, result, path, words, visited, row, col) if is_safe(x,y,visited)
  end

  visited[i][j] = false
end


def search_in_boggle(board, words)
  row = [-1, -1, -1, 1, 0, 1, 1, 0]
  col = [-1, 0, 1, -1, 1, 1, 0, -1]

  result = Set.new
  m, n = board.length, board[0].length

  visited = Array.new(board.length) { Array.new(board[0].length, false)} 

  m.times do |i|
    n.times do |j|
      search_boggle(board, i , j, result, '', words, visited, row, col)
    end
  end
  result
end

board = [
  ['M', 'S', 'E'],
  ['R', 'A', 'T'],
  ['L', 'O', 'N']
]

words = ['STAR', 'NOTE', 'RAT', 'SAND', 'STONE']

valid_words = search_in_boggle(board, words)
puts valid_words
