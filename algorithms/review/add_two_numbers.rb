# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  first_node = res = ListNode.new
  carry = 0
  while l1 && l2
    carry += l1.val + l2.val
    res.next = ListNode.new(carry % 10)
    carry /= 10
    l1 = l1.next
    l2 = l2.next
    res = res.next
  end

  res.next = if carry == 0
               l1 || l2
             else
               add_two_numbers(l1 || l2, ListNode.new(carry)) # 递归！！！别忘了
             end

  first_node.next
end
