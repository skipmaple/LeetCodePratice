# frozen_string_literal: true

require '../0023_merge-k-sorted-lists/merge-k-sorted-lists'
require '../../helper/list_node'

RSpec.describe do

  context '' do

    it 't1' do
      lists = [[2], [], [-1]]
      ans = [-1, 2]
      lists.map! { |list| ListNode.generate(list) }
      ans = ListNode.generate(ans)
      expect(merge_k_lists(lists).to_a).to eq ans.to_a
    end

  end
end
