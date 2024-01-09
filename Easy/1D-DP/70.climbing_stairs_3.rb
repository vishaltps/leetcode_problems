def climb_stairs(n)
  a = [1]

  (1..n).each do |i|
    one_step_counter = i.positive? ? a[i - 1] : 0
    two_step_counter = i > 1 ? a[i - 2] : 0
    a[i] = one_step_counter + two_step_counter
  end
  a[n - 1] if n < 2

  a.last
end

n = 2

p climb_stairs(n)