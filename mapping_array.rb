
require 'pry'
def solution(ary)
  sorted_array = ary.sort
  count = 0
  abcd = sorted_array.each_with_object({}) { |str, hsh| hsh[str] = count+=1  }
  abcd.each do |k, v|
    
    ary.insert(ary.find_index(k), v)
    ary.delete_at(ary.find_index(k))
  end
  ary
end


ary = [40,10,20,30]

p solution(ary)