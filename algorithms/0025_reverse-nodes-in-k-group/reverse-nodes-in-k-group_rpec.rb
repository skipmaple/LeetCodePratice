# frozen_string_literal: true

require '../0024_swap-nodes-in-pairs/swap-nodes-in-pairs'
require '../../helper/list_node'

RSpec.describe do

  context '' do

    it 't1' do
      list = [1, 2, 3, 4]
      ans = [2, 1, 4, 3]
      list = ListNode.generate(list)
      ans = ListNode.generate(ans)
      expect(swap_pairs(list).to_a).to eq ans.to_a
    end

  end
end
