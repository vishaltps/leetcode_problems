# We are given an array asteroids of integers representing asteroids in a row.

# For each asteroid, the absolute value represents its size, and the sign represents its direction (positive meaning right, negative meaning left). Each asteroid moves at the same speed.

# Find out the state of the asteroids after all collisions. If two asteroids meet, the smaller one will explode. If both are the same size, both will explode. Two asteroids moving in the same direction will never meet.

def asteroid_collision(asteroids)
  stack = []
  asteroids.each do |i|
    if i.positive?
      stack.push(i)
    else
      stack.pop while !stack.empty? && stack[-1].positive? && stack[-1] < i.abs

      if stack[-1] == i.abs
        stack.pop
      elsif stack.empty? || stack[-1].negative?
        stack.push(i)
      end
    end
    # if asteroids[i + 1].negative?
    #   if (asteroids[i] + asteroids[i + 1]).positive?
    #     stack.push(asteroids[i])
    #   elsif (asteroids[i] + asteroids[i + 1]).zero?
    #     i += 1
    #   end
    # else
    #   stack.push(asteroids[i])
    # end
    # i += 1
  end
  stack
end

# Example 1:

# Input: asteroids = [5,10,-5]
# Output: [5,10]
# Explanation: The 10 and -5 collide resulting in 10. The 5 and 10 never collide.
# Example 2:

# Input: asteroids = [8,-8]
# Output: []
# Explanation: The 8 and -8 collide exploding each other.
# Example 3:

# Input: asteroids = [10,2,-5]
# Output: [10]
# Explanation: The 2 and -5 collide resulting in -5. The 10 and -5 collide resulting in 10.

asteroids = [5,10,-5]
# asteroids = [8,-8]
# asteroids = [10,2,-5]
# asteroids = [-2,-1,1,2]
p asteroid_collision(asteroids)