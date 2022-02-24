# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

# 快慢指针

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  dummy = ListNode.new(0, head)
  first = head
  second = dummy

  n.times do
    first = first.next
  end

  until first.nil?
    second = second.next
    first = first.next
  end

  second.next = second.next.next
  return dummy.next
end

# 计算列表长度

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  dummy = ListNode.new(0, head)
  len = 0
  until head.nil?
    len += 1
    head = head.next
  end
  cur = dummy
  (len - n).times { cur = cur.next }
  cur.next = cur.next.next
  return dummy.next
end
