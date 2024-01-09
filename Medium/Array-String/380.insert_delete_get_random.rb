class RandomizedSet
  attr_accessor :values, :index_map

  def initialize()
    @values = []
    @index_map = {}
  end


=begin
  :type val: Integer
  :rtype: Boolean
=end
  def insert(val)
    return false if index_map.key?(val)

    values << val
    index_map[val] = values.length - 1
    true
  end


=begin
  :type val: Integer
  :rtype: Boolean
=end
  def remove(val)
    return false unless index_map.key?(val)

    last_val = values.last
    val_index = index_map[val]

    # Swap val with the last element in the array
    values[val_index], values[-1] = values[-1], values[val_index]

    # Update the index of the last element in the map
    index_map[last_val] = val_index

    # Remove val from the array and the map
    values.pop
    index_map.delete(val)

    true

  end


=begin
  :rtype: Integer
=end
  def get_random()
    values.sample
  end


end

# Your RandomizedSet object will be instantiated and called as such:
# obj = RandomizedSet.new()
# param_1 = obj.insert(val)
# param_2 = obj.remove(val)
# param_3 = obj.get_random()

# ["RandomizedSet", "insert", "remove", "insert", "getRandom", "remove", "insert", "getRandom"]
# [[], [1], [2], [2], [], [1], [2], []]

# You must implement the functions of the class such that each function works in average O(1) time complexity.

@values[val_index], @values[-1] = @values[-1], @values[val_index]

# Update the index of the last element in the map
@index_map[last_val] = val_index

# Remove val from the array and the map
@values.pop
@index_map.delete(val)




