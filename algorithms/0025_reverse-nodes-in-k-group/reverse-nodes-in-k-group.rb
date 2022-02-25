# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}

require '../../helper/list_node'

# 迭代
def reverse_k_group(head, k)
  dummy = ListNode.new
  dummy.next = head
  pre = dummy

  while head
    tail = pre
    #  查看剩余部分长度是否大于等于 k
    k.times do
      tail = tail.next
      return dummy.next unless tail
    end
    nex = tail.next
    reverse = reverse_list_nodes(head, tail)
    head = reverse[0]
    tail = reverse[1]
    #  把子链表重新接回原链表
    pre.next = head
    tail.next = nex
    pre = tail
    head = tail.next
  end

  dummy.next
end

def reverse_list_nodes(head, tail)
  prev = tail.next
  p = head
  while prev != tail
    nex = p.next
    p.next = prev
    prev = p
    p = nex
  end
  return [tail, head]
end

# [a b c d]
#
# [a b c] to reverse
#
# tail = c
# prev = d
# p = a
#
# while d != c
#  nex = b
#  p.next = d
#  prev = a
#  p = b
# end
#
# while a != c
#  nex = c
#  p.next = b
#  prev = b
#  p = c
# end
#
# while b != c
#  nex = d
#  p.next = d
#  prev = c
#  p = d
# end
#
# while c != c => exit
