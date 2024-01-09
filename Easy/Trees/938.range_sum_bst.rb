def range_sum_bst(root, low, high)
  output = 0
  sum += root.val if root.val.between?(low, high)
  sum += range_sum_bst(root.left, low, high) if root.val > low
  sum += range_sum_bst(root.right, low, high) if root.val < high

  sum

  # until queue.empty?
  #  level_size = queue.size
  #  level_size.times do
  #      node = queue.shift
  #      binding.irb
  #      if low <= node.val && high >= node.val
          
  #          output += node.val
  #      end
   
  #      queue.push(node.left) if node.left
  #      queue.push(node.right) if node.right
  #  end
  # end
  # output
end


root = [10,5,15,3,7,nil,18]
 low = 7
  high = 15
p range_sum_bst(root, low, high)

