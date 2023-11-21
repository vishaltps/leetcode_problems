

require 'pry'
def dfs(office, r, c, squads, squad_count, visited)
  return if r < 0 || c < 0 || r >= office.length || c >= office[0].length || visited[r][c]

  visited[r][c] = true
  squads[squad_count] ||= []
  squads[squad_count] << [r, c]

  dfs(office, r + 1, c, squads, squad_count, visited)
  dfs(office, r - 1 , c, squads, squad_count, visited)
  dfs(office, r, c + 1, squads, squad_count, visited)
  dfs(office, r, c - 1, squads, squad_count, visited)
end


def num_of_squads(office)
  rows, cols = office.length, office[0].length
  squad_count = 0
  visited = Array.new(office.length) { Array.new(office[0].length, false) } 
  squads = {}

  rows.times do |r|
    cols[r].times do |c|
      if office[r][c] == "1"
        squad_count += 1
        dfs(office, r, c, squads, squad_count, visited)
      end
    end
  end
  squads
end



office = [
  ["1","1","1","1","0"],
  ["1","1","0","1","0"],
  ["1","1","0","0","0"], 
  ["0","0","0","0","0"]
]

squads = num_of_squads(office)
puts "number of squads -> #{squads.length}"

# p has_same_squad(0, 0, 2, 1, squads) #-> true


