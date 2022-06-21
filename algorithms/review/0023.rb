# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  ans = ListNode.new(-2**31)
  lists.size.times do |i|
    next unless lists[i]
    ans = merge_list(ans, lists[i])
  end

  ans.next
end

def merge_list(l1, l2)
  res = dummy = ListNode.new(0)

  while l1 && l2
    if l1.val < l2.val
      res.next = l1
      l1 = l1.next
    else
      res.next= l2
      l2 = l2.next
    end
    res = res.next
  end

  res.next = l1 || l2

  dummy.next
end
