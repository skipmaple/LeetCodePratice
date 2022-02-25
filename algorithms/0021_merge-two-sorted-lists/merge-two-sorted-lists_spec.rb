# frozen_string_literal: true

require '../0021_merge-two-sorted-lists/merge-two-sorted-lists'
require '../../helper/list_node'

RSpec.describe do

  context '' do
    it 't1' do
      expect(merge_two_lists(ListNode.generate([]), ListNode.generate([-1])).to_a).to eq ListNode.generate([-1]).to_a
    end
    # it 't2' do
    #   expect(is_valid("()")).to eq true
    # end
    # it 't3' do
    #   expect(remove_nth_from_end([1, 2], 1)).to eq [1]
    # end
  end
end
