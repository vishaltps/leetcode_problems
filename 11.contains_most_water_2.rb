def max_area(height)
  left = 0
  right = height.length - 1
  max_area = 0
  while left < right
    h = [height[left], height[right]].min
    w = right - left

    max_area = [max_area, h * w].max
    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end
  max_area
end

height = [1,8,6,2,5,4,8,3,7]

p max_area(height)