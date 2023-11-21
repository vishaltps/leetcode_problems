
require 'pry'
def dfs(office, i, j, occupied_pairs, squad_count, visited)
  return if i < 0 || j < 0 || i >= office.length || j >= office[i].length || office[i][j] == '0' || visited[i][j]
  puts "list = #{i}, #{j}"

  visited[i][j] = true
  occupied_pairs[squad_count] ||= []
  occupied_pairs[squad_count] << [i, j]

  dfs(office, i + 1, j, occupied_pairs, squad_count, visited)
  dfs(office, i - 1, j, occupied_pairs, squad_count, visited)
  dfs(office, i, j + 1, occupied_pairs, squad_count, visited)
  dfs(office, i, j - 1, occupied_pairs, squad_count, visited)
end

def num_of_squads(office)
  squad_count = 0
  occupied_pairs = {}
  visited = Array.new(office.length) { Array.new(office[0].length, false) }

  office.length.times do |i|
    office[i].length.times do |j|
      if office[i][j] == '1' && !visited[i][j]
        squad_count += 1
        dfs(office, i, j, occupied_pairs, squad_count, visited)
      end
    end
  end

  occupied_pairs
end

def has_same_squad(i, j, k, l, squads)
  pair1 = [i, j]
  pair2 = [i, j]
  squads.each do |_, squad|
    return true if squad.include?(pair1) && squad.include?(pair2)
  end
  false
end


office = [
  ["1","1","1","1","0"],
  ["1","1","0","1","0"],
  ["1","1","0","0","0"], 
  ["0","0","0","0","0"]
]

squads = num_of_squads(office)
puts "number of squads -> #{squads.length}"

p has_same_squad(0, 0, 2, 1, squads) #-> true


