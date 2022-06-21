# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  res = dummy = ListNode.new(0, nil)
  while list1 && list2
    if list1.val < list2.val
      res.next = ListNode.new(list1.val, nil)
      list1 = list1.next
    else
      res.next = ListNode.new(list2.val, nil)
      list2 = list2.next
    end
    res = res.next
  end

  res.next = list1 || list2
  dummy.next
end
