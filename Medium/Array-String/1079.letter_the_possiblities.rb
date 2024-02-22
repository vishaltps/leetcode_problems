# You have n  tiles, where each tile has one letter tiles[i] printed on it.

# Return the number of possible non-empty sequences of letters you can make using the letters printed on those tiles.
def num_tile_possibilities(tiles)
  tiles_arr = tiles.chars.sort
  count = { value: 0 }

  backtrack(tiles_arr, count)

  count[:value]
end

def backtrack(remaining, count)
  return if remaining.empty?

  remaining.length.times do |i|
    next if i > 0 && remaining[i] == remaining[i - 1]

    count[:value] += 1
    new_remaining = remaining[0...i] + remaining[i + 1..-1]
    backtrack(new_remaining, count)
  end
end



# Example 1:

# Input: tiles = "AAB"
# Output: 8
# Explanation: The possible sequences are "A", "B", "AA", "AB", "BA", "AAB", "ABA", "BAA".
# Example 2:

# Input: tiles = "AAABBC"
# Output: 188
# Example 3:

# Input: tiles = "V"
# Output: 1

tiles = "AAB"
p num_tile_possibilities(tiles)