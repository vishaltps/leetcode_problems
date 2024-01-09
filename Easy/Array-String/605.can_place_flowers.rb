require 'pry'
def can_place_flowers(flowerbed, n)
  return true if n.zero?

  0.upto(flowerbed.length - 1) do |i|
    i += 1 && next if flowerbed[i] == 1

    if flowerbed[i - 1]&.zero? && flowerbed[i + 1]&.zero?
      flowerbed[i] = 1
      n -= 1
    elsif i&.zero? && flowerbed[i + 1]&.zero?
      flowerbed[i] = 1
      n -= 1
    elsif i == flowerbed.length - 1 && flowerbed[i - 1]&.zero?
      flowerbed[i] = 1
      n -= 1
    end
  end
  n <= 0

  # return true if n.zero?

  # i = 0
  # while i < flowerbed.length
    
    
  #   if flowerbed[i] == 1
  #     i += 2
  #   elsif flowerbed[i + 1] == 0 || i == flowerbed.size - 1
  #     n -= 1
  #     i += 2
  #   elsif flowerbed[i+1] == 1
  #     i += 3
  #   end

  #   return true if n == 0
  # end

  # false
end

flowerbed = [1,0,0,0,1]
n = 1
# flowerbed = [1,0,0,0,1]
#  n = 2
# flowerbed = [1,0,0,0,0,1]
# n = 2
# flowerbed = [1,0,1,0,1,0,1]
# n = 0
# flowerbed = [0,0,1,0,1]
# n = 1
# flowerbed = [0,0,1,0,0]
# n = 1

p can_place_flowers(flowerbed, n)

