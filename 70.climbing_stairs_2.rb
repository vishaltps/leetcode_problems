# @param {Integer} n
# @return {Integer}
require 'pry'
def climb_stairs(n)
  a = [1]

  (1..n).each do |i|
    one_step_counter = 0
    two_step_counter = 0
    one_step_counter = a[i - 1] if i > 0
    two_step_counter = a[i - 2] if i > 1
    a[i] = one_step_counter + two_step_counter
  end
  a[n - 1] if n < 2

  a.last
end

n = 5
p climb_stairs(n)