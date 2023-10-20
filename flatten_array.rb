require 'pry'

def flat_array(ary, result = [])
  ary.each do |a|
    if a.is_a? Array
      flat_array(a, result)
    else
      result.push(a)
    end
  end
  result
end



a = [1,2,3,[4,5,6],[7,8,9],10]
p flat_array(a)
