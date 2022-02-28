# frozen_string_literal: true

require '../0031_next-permutation/next-permutation'

RSpec.describe do

  context '' do

    it 't1' do
      expect(next_permutation([3, 2, 1])).to eq [1, 2, 3]
    end

    it 't2' do
      expect(next_permutation([1, 2, 3])).to eq [1, 3, 2]
    end
    #
    # it 't3' do
    #   expect(divide(7, -3)).to eq -2
    # end

  end
end
