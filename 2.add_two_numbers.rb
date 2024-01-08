# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

# You may assume the two numbers do not contain any leading zero, except the number 0 itself.

require 'pry'

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end


def add_two_numbers(l1, l2)
  result = ListNode.new
  carry = 0
  current = result

  while l1 || l2 || carry.positive?
    val1 = l1 ? l1.val : 0
    val2 = l2 ? l2.val : 0

    sum = val1 + val2 + carry
    carry = sum / 10

    current.next = ListNode.new(sum % 10)
    current = current.next

    l1 = l1.next if l1
    l2 = l2.next if l2
  end
  result.next
end

# Input: l1 = [2,4,3], l2 = [5,6,4]
# Output: [7,0,8]
# Explanation: 342 + 465 = 807.
# Example 2:

# Input: l1 = [0], l2 = [0]
# Output: [0]

# Example 3:

# Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
# Output: [8,9,9,9,0,0,0,1]




l1 = ListNode.new(2, ListNode.new(4, ListNode.new(3)))
l2 = ListNode.new(5, ListNode.new(6, ListNode.new(4)))

p add_two_numbers(l1, l2)