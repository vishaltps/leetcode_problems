
def h_index(citations)
  citations.sort.reverse!
  n = citations.max
  i = 0
  while i < n
    break if citations[i] <= i

    i += 1
  end
  i
end

citations = [3,0,6,1,5]

p h_index(citations)