# Definition for singly-linked list.
# class ListNode
#   attr_accessor :val, :next
#
#   def initialize(val = 0, _next = nil)
#     @val = val
#     @next = _next
#   end
# end

# @param {ListNode[]} lists
# @return {ListNode}
require '../../helper/list_node'

# 顺序合并
def merge_k_lists(lists)
  ans = ListNode.new(-2**31)
  lists.size.times do |i|
    next unless lists[i]
    ans = merge_two_lists(ans, lists[i])
    puts ans.to_a.inspect
  end

  ans.next
end

def merge_two_lists(list1, list2)
  dummy = res = ListNode.new(-2**31)

  while list1 && list2
    if list1.val < list2.val
      res.next = list1
      list1 = list1.next
    else
      res.next = list2
      list2 = list2.next
    end
    res = res.next
  end

  res.next = list1 || list2
  dummy.next
end
