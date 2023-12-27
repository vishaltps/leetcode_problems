class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
require 'pry'
def merge_two_lists(list1, list2)
    
end

list1 = ListNode.new(1)
list1.next = 2
list1.next = 4
list2 = ListNode.new()
list2.next = 2
list2.next = 4
binding.pry