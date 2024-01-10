# You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

# Find two lines that together with the x-axis form a container, such that the container contains the most water.

# Return the maximum amount of water a container can store.

# Notice that you may not slant the container.

def max_area(height)
  left = max_area = 0
  right = height.length - 1
  max_potential_height = height.max

  while left < right
    h = [height[right], height[left]].min
    w = right - left
    current =  h * w
    max_area = [current, max_area].max
    break if max_potential_height * w < max_area

    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end
  max_area
end
# Input: height = [1,8,6,2,5,4,8,3,7]
# Output: 49
# Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.
# Example 2:

# Input: height = [1,1]
# Output: 1

# height = [1,8,6,2,5,4,8,3,7]
# height = [1,1]
height = [2,3,4,5,18,17,6]


p max_area(height)