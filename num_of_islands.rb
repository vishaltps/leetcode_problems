def dfs(office, i, j)
  return if i < 0 || j < 0 || i >= office.length || j >= office[i].length || office[i][j] == '0'

  office[i][j] = '0'  # Mark the cell as visited by changing it to '0'

  # Recursively explore neighboring cells
  dfs(office, i + 1, j)
  dfs(office, i - 1, j)
  dfs(office, i, j + 1)
  dfs(office, i, j - 1)
end

def num_of_squads(office)
  squad_count = 0

  office.length.times do |i|
    office[i].length.times do |j|
      if office[i][j] == '1'
        squad_count += 1
        dfs(office, i, j)
      end
    end
  end

  squad_count
end

office = [
  ["1", "1", "1", "1", "0"],
  ["1", "1", "0", "1", "0"],
  ["1", "1", "0", "0", "0"],
  ["0", "0", "0", "0", "0"]
]

p num_of_squads(office)  # -> 1
