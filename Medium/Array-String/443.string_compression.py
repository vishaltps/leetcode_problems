from typing import List


class Solution:
  def compress(self, chars: List[str]) -> int:
    compressed_string = ''
    count = 0
    i = 0
    for i in range(len(chars) - 1):
      count += 1
      if chars[i] == chars[i + 1]:
        continue 

      compressed_string += chars[i]
      if count > 1:
        compressed_string += str(count)

    return list(compressed_string)
    # chars.replace(list(compressed_string)).size

        
chars = ["a","a","b","b","c","c","c"]
solution = Solution()
print(solution.compress(chars))