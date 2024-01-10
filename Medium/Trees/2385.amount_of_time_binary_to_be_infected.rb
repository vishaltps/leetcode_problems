# You are given the root of a binary tree with unique values, and an integer start. At minute 0, an infection starts from the node with value start.

# Each minute, a node becomes infected if:

# The node is currently uninfected.
# The node is adjacent to an infected node.
# Return the number of minutes needed for the entire tree to be infected.



class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
  end
end

# @param {TreeNode} root
# @param {Integer} start
# @return {Integer}
def amount_of_time(root, start)
  @count = 0 
  @adjacent_list = Hash.new{|h, k| h[k] = [] }
  create_adjacent_list(root)   
  @visited = Array.new
  @level = Array.new
  bfs(start)   
 
 @level.compact.max  
end

def bfs(n)
  queue = Queue.new
  queue << n     
  @visited[n] = true     
  @level[n] = 0 

  while(!queue.empty?) do
      queue.size.times do 
          node = queue.pop
          @visited[node] = true 
          for nei in @adjacent_list[node] do 
              if !@visited[nei]
                  queue << nei 
                  @level[nei] = @level[node]+1
              end 
          end 
      end         
  end 
end 

def create_adjacent_list(node)
  return if node.nil? 

  if node.left
      @adjacent_list[node.val] << node.left.val 
      @adjacent_list[node.left.val] << node.val 
      create_adjacent_list(node.left)
  end 

  if node.right
      @adjacent_list[node.val] << node.right.val 
      @adjacent_list[node.right.val] << node.val 
      create_adjacent_list(node.right)
  end 
end 

# Input: root = [1,5,3,null,4,10,6,9,2], start = 3
# Output: 4
# Explanation: The following nodes are infected during:
# - Minute 0: Node 3
# - Minute 1: Nodes 1, 10 and 6
# - Minute 2: Node 5
# - Minute 3: Node 4
# - Minute 4: Nodes 9 and 2
# It takes 4 minutes for the whole tree to be infected so we return 4.
# Example 2:

# Input: root = [1], start = 1
# Output: 0
# Explanation: At minute 0, the only node in the tree is infected so we return 0.

def build_tree_from_array(arr)
  return nil if arr.empty?

  root = TreeNode.new(arr.shift)
  queue = [root]

  until queue.empty?
    current = queue.shift

    left_val = arr.shift
    current.left = TreeNode.new(left_val) if left_val
    queue.push(current.left) if current.left

    right_val = arr.shift
    current.right = TreeNode.new(right_val) if right_val
    queue.push(current.right) if current.right
  end

  root
end
root = [1,5,3,nil,4,10,6,9,2]
start = 3
root = build_tree_from_array(root)
p amount_of_time(root, start)