# frozen_string_literal: true

require '../helper/tree_node'

RSpec.describe do

  context '' do
    it 't1 test list_node to_a method.' do
      # expect(TreeNode.generate([1, 2, 3]).to_a).to eq [1, 2, 3]
      TreeNode.generate([3,9,20,'#','#',15,7]).level_order
    end

  end
end
