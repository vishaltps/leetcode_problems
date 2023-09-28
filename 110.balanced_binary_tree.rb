class TreeNode
  attr_accessor :value, :left, :right
  
  def initialize(value = 0, left = nil, right = 0)
    @value = value
    @left = left
    @right = right
  end
end


class BTS
  attr_accessor :root, :size

  def initialize
    @root = nil
    @size = 0
  end

  def insert(value)
    if root.nil?
      root = value
    else
      curr_node = root
      previous_node = root
      while curr_node != nil
        if value < curr_node.value
          curr_node = curr_node.left
        else
          curr_node = curr_node.right
        end
      end
      if value < previous_node.value
        previous_node.left = TreeNode.new(value)
      else
        previous_node.right = TreeNode.new(value)
      end
    end
  end
end