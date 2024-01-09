# Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

# Implement the MinStack class:

# MinStack() initializes the stack object.
# void push(int val) pushes the element val onto the stack.
# void pop() removes the element on the top of the stack.
# int top() gets the top element of the stack.
# int getMin() retrieves the minimum element in the stack.
# You must implement a solution with O(1) time complexity for each function.


class MinStack
  attr_accessor :stack

  def initialize()
    @stack  = []
  end


=begin
  :type val: Integer
  :rtype: Void
=end
  def push(val)
    stack.push(val)
  end


=begin
  :rtype: Void
=end
  def pop()
    stack.pop()
  end


=begin
  :rtype: Integer
=end
  def top()
    stack.max 
  end


=begin
  :rtype: Integer
=end
  def get_min()
    stack.min
  end
end

# Your MinStack object will be instantiated and called as such:
# [[],[-2],[0],[-1],[],[],[],[]]

# 
obj = MinStack.new()
obj.push(-2)
obj.push(0)
obj.push(-1)
p obj.get_min()
p obj.top()
obj.pop()
p obj.get_min()

p obj