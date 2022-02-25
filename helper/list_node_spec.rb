# frozen_string_literal: true

require '../helper/list_node'

RSpec.describe do

  context '' do
    it 't1 test list_node to_a method.' do
      expect(ListNode.generate([1, 2, 3]).to_a).to eq [1, 2, 3]
    end

  end
end
