# Given that there are N books and M students. Also given are the number of pages in each book in ascending order. The task is to assign books in such a way that the maximum number of pages assigned to a student is minimum, with the condition that every student is assigned to read some consecutive books. Print that minimum number of pages.

def find_pages(arr, m)
  return -1 if arr.size < m
  low = arr.max
  high = arr.sum
  while low <= high
    mid = (low + high) / 2

    if possible_to_allocate(mid, arr, m) > m
      low = mid + 1
    else
      high = mid - 1
    end
  end
  low
end

def possible_to_allocate(mid, arr)
  count = 1
  current_count = 0

  arr.each do |a|
    if current_count + a <= mid
      current_count += a
    else
      count += 1
      current_count = a
    end
  end
  count
end
# Input: N = 4, pages[] = {12, 34, 67, 90}, M = 2
# Output: 113


arr = [12,34,67,90]
m = 2
p find_pages(arr, m)