# frozen_string_literal: true
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
  first = res = ListNode.new(0)
  carry = 0

  while l1 && l2
    tmp = l1.val + l2.val + carry
    if tmp >= 10
      carry = tmp / 10
      tmp = tmp % 10
    else
      carry = 0
    end
    l1 = l1.next
    l2 = l2.next
    res.next = ListNode.new(tmp)
    res = res.next
  end

  res.next = if carry == 0
               l1 || l2
             else
               add_two_numbers(l1 || l2, ListNode.new(carry))
             end
  first.next
end

# 输入：l1 = [2,4,3], l2 = [5,6,4]
# 输出：[7,0,8]
# 解释：342 + 465 = 807.
