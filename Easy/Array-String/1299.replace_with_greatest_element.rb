require 'pry'
def replace_elements(arr)
  # i = 0
  # max_length = arr.length
  # while i < max_length
    
  #   max_val = arr[(i + 1)..max_length].max || -1
  #   arr[i] = max_val
  #   i += 1
  # end
  # arr
  max_from_right = -1

  (arr.length - 1).downto(0) do |i|
    current_element = arr[i]
    arr[i] = max_from_right
    max_from_right = [max_from_right, current_element].max
  end

  arr
end


arr = [17,18,5,4,6,1]

p replace_elements(arr)