
# Given a root node reference of a BST and a key, delete the node with the given key in the BST. Return the root node reference (possibly updated) of the BST.

# Basically, the deletion can be divided into two stages:

# Search for a node to remove.
# If the node is found, delete the node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end
 
def delete_node(root, key)
  return nil if root.nil?

  if key < root.val
    root.left = delete_node(root.left, key)
  elsif key > root.val
    root.right = delete_node(root.right, key)
  else
    return root.right if root.left.nil?
    return root.left if root.right.nil?

    root.val = find_min_value(root.right).val
    root.right = delete_node(root.right, root.val)
  end
  root
end

def find_min_value(node)
  current = node
  current = current.left until current.left.nil?
  current
end 



# Example 1:

# Input: root = [5,3,6,2,4,null,7], key = 3
# Output: [5,4,6,2,null,null,7]
# Explanation: Given key to delete is 3. So we find the node with value 3 and delete it.
# One valid answer is [5,4,6,2,null,null,7], shown in the above BST.
# Please notice that another valid answer is [5,2,6,null,4,null,7] and it's also accepted.

# Example 2:

# Input: root = [5,3,6,2,4,null,7], key = 0
# Output: [5,3,6,2,4,null,7]
# Explanation: The tree does not contain a node with value = 0.
# Example 3:

# Input: root = [], key = 0
# Output: []
 
# root = [5,3,6,2,4,null,7], key = 3
root = TreeNode.new(5)
root.left = TreeNode.new(3)
root.right = TreeNode.new(6)
root.left.left = TreeNode.new(2)
root.left.right = TreeNode.new(4)
root.right.right = TreeNode.new(7)

key = 3
p delete_node(root, key)