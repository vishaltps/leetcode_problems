require 'pry'

def bfs(r, c, board, curr_step, min_steps)
  return if curr_step >= board.length * board.length
  
  dice = [1,2,3,4,5,6]
  curr = board[r][c]
  curr_step += dice.sample
  puts "In side bfs - curr_step = #{curr_step}"
  if curr_step != -1
    min_steps += 1
  else
    bfs(r, c, board, curr_step, min_steps) 
  end
end
def snakes_and_ladders(board)
  min_steps = 0
  r = board.length - 1
  curr_step = 0

  while r >= 0 || curr_step >= board.length * board.length
    if r.even?
      c = board[r].length - 1
      while c >= 0
        if board[r][c] != -1 && 
          min_steps += 1
        end
        bfs(r, c, board, curr_step, min_steps)
        c -= 1
      end
    else
      c = 0
      while c < board[r].length
        bfs(r, c, board, curr_step, min_steps)
        c += 1
      end
    end
    r -= 1
  end
  min_steps
end

# Input: board = [[-1,-1,-1,-1,-1,-1],[-1,-1,-1,-1,-1,-1],[-1,-1,-1,-1,-1,-1],[-1,35,-1,-1,13,-1],[-1,-1,-1,-1,-1,-1],[-1,15,-1,-1,-1,-1]]
# Output: 4
# Explanation: 
# In the beginning, you start at square 1 (at row 5, column 0).
# You decide to move to square 2 and must take the ladder to square 15.
# You then decide to move to square 17 and must take the snake to square 13.
# You then decide to move to square 14 and must take the ladder to square 35.
# You then decide to move to square 36, ending the game.
# This is the lowest possible number of moves to reach the last square, so return 4.


board = [
  [-1,-1,-1,-1,-1,-1],
  [-1,-1,-1,-1,-1,-1],
  [-1,-1,-1,-1,-1,-1],
  [-1,35,-1,-1,13,-1],
  [-1,-1,-1,-1,-1,-1],
  [-1,15,-1,-1,-1,-1]
]

p snakes_and_ladders(board)