require 'pry'

def dfs(office, r, c, visited, occupied_pairs, squad_count)
  return if r < 0 || c < 0 || r >= office.length || c >= office[r].length || visited[r][c]

  visited[r][c] = true
  occupied_pairs[squad_count] ||= []
  occupied_pairs[squad_count] << [r, c]

  dfs(office, r + 1, c, visited,occupied_pairs, squad_count)
  dfs(office, r - 1, c, visited,occupied_pairs, squad_count)
  dfs(office, r, c + 1, visited,occupied_pairs, squad_count)
  dfs(office, r, c - 1, visited,occupied_pairs, squad_count)
end

def num_of_squads(office)
  return if office.empty?

  visited = Array.new(office.length) { Array.new(office[0].length, false) }
  occupied_pairs = {}
  squad_count = 0

  office.length.times do |r|
    office[r].length.times do |c|
      if office[r][c] == '1' && !visited[r][c]
        squad_count += 1
        dfs(office, r, c, visited, occupied_pairs, squad_count)
      end
    end
  end
  occupied_pairs
end

def has_same_squad(i, j, k, l, squads)
  pair1 = [i, j]
  pair2 = [k, l]

  squads.each do |_k, v|
    return true if (v.include? pair1) && (v.include? pair2)
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


