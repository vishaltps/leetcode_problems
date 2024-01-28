
def solve(stalls, k)
  stalls.sort!
  low = 0
  n = stalls.size
  high = stalls[n - 1] - stalls[0]
  while low <= high
    mid = (low + high ) / 2
    if possible_to_place(mid, stalls, k)
      low = mid + 1
    else
      high = mid - 1
    end
  end
  high
end

def possible_to_place(distance, stalls, k)
  count_of_cows = 1
  last = stalls[0]
  i = 1
  while i < stalls.size
    if stalls[i] - last >= distance
      count_of_cows += 1
      last = stalls[i]
    end
    return true if count_of_cows >= k

    i += 1
  end
  false
end

# stalls = [1, 2, 4, 8, 9]
# k = 3

stalls = [10, 1, 2, 7, 5]
k = 3

p solve(stalls, k)