# We are playing the Guess Game. The game is as follows:

# I pick a number from 1 to n. You have to guess which number I picked.

# Every time you guess wrong, I will tell you whether the number I picked is higher or lower than your guess.

# You call a pre-defined API int guess(int num), which returns three possible results:

# -1: Your guess is higher than the number I picked (i.e. num > pick).
# 1: Your guess is lower than the number I picked (i.e. num < pick).
# 0: your guess is equal to the number I picked (i.e. num == pick).
# Return the number that I picked.

 
def guess(n)
  @random ||= rand(1..n)
  puts "random - #{@random}"
  if n == @random
    0
  elsif n > @random
    -1
  else
    1
  end
end
def guessNumber(n)
  output = guess(n)
  left = 1
  right = n 
  while left <= right
    
    mid = (left + right) / 2
    puts "left - #{left}, right - #{right}, mid - #{mid}"
    output = guess(mid)
    # binding.irb
    if output == 0
      # binding.irb
      return mid
    elsif output > 0
      left = mid + 1
      # right = mid
    else
      # left = mid
      right = mid - 1
    end

    # return i if output == 0
    
    # if output == -1

    # else
    # end
  end


end

# Example 1:

# Input: n = 10, pick = 6
# Output: 6
# Example 2:

# Input: n = 1, pick = 1
# Output: 1
# Example 3:

# Input: n = 2, pick = 1
# Output: 1
n = 10

p guessNumber(10)