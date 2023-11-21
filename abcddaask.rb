class WordFinder
  def initialize(matrix, dictionary)
    @matrix = matrix
    @dictionary = Set.new(dictionary) # Convert the dictionary into a set for faster lookup
    @found_words = Set.new
  end

  def find_words
    rows = @matrix.length
    cols = @matrix[0].length

    (0...rows).each do |i|
      (0...cols).each do |j|
        dfs(i, j, '', Set.new)
      end
    end

    @found_words.to_a
  end

  private

  def dfs(i, j, current_word, visited)
    return if i < 0 || i >= @matrix.length || j < 0 || j >= @matrix[0].length
    return if visited.include?([i, j]) # Avoid revisiting the same cell

    current_word += @matrix[i][j]
    visited << [i, j]

    if @dictionary.include?(current_word)
      @found_words << current_word
    end

    # Explore adjacent cells
    dfs(i + 1, j, current_word, visited.dup)
    dfs(i - 1, j, current_word, visited.dup)
    dfs(i, j + 1, current_word, visited.dup)
    dfs(i, j - 1, current_word, visited.dup)
  end
end

# Example usage:
matrix = [
  ['c', 'a', 't'],
  ['r', 'r', 'e'],
  ['t', 'a', 'r']
]

dictionary = ['cat', 'car', 'rat', 'art', 'rare']

word_finder = WordFinder.new(matrix, dictionary)
found_words = word_finder.find_words
puts found_words
