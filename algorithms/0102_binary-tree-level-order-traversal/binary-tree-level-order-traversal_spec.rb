# frozen_string_literal: true

require './0102_binary-tree-level-order-traversal/binary-tree-level-order-traversal'
require '../helper/tree_node'

RSpec.describe do

  context '' do

    it 't1' do
      root = TreeNode.generate([3,9,20,nil,nil,15,7])
      expect(level_order(root)).to eq [[3],[9,20],[15,7]]
    end

  end
end
