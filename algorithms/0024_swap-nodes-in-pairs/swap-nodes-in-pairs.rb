# frozen_string_literal: true

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
require '../../helper/list_node'

# 递归
def swap_pairs(head)
  return head if head.nil? || head.next.nil?

  new_head = head.next
  head.next = swap_pairs(new_head.next)
  new_head.next = head
  new_head
end

# 迭代
def swap_pairs(head)
  return head if head.nil? || head.next.nil?

  dummy = ListNode.new
  dummy.next = head
  tmp = dummy

  while tmp.next && tmp.next.next
    node1 = tmp.next
    node2 = tmp.next.next
    tmp.next = node2
    node1.next = node2.next
    node2.next = node1
    tmp = node1
  end

  dummy.next
end
