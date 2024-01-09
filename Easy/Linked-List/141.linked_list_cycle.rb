class ListNode
    attr_accessor :val, :next
    def initialize(val, _next = nil)
      @val = val
      @next = nil
    end
end

def hasCycle(head)
  return false if head.nil? || head.next.nil?

  slow = head
  fast = head.next

  while slow != fast
    return false if fast.nil? || fast.next.nil?

    slow = slow.next
    fast = fast.next.next
  end

  true
end

head = ListNode.new(3)
head.next = ListNode.new(2)
head.next.next = ListNode.new(0)
head.next.next.next = ListNode.new(-4)

head.next.next.next.next = head.next

p hasCycle(head)