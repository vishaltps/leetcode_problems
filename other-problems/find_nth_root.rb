def nth_root(m, n)
  return 0 if m <= 0
  
  left = 1
  right = n
  while left <= right 
    mid = (left + right) / 2
    ans = mid **n 
    
    return mid if m == ans

    if ans <= m
      left = mid + 1
    else
      right = mid - 1
    end
  end
  -1
end

n = 4
m = 69
p nth_root(m, n)