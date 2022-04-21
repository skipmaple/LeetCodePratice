# frozen_string_literal: true

require './0001_two-sum/two_sum'

RSpec.describe  do

  context 'When testing two_sum method' do
    it 't1' do
      expect(two_sum([2, 7, 11, 15], 9)).to eq [0,1]
    end

    it 't2' do
      expect(two_sum_new([2, 7, 11, 15], 9)).to eq [0,1]
    end

    it 't3' do
      expect(two_sum_recursion([2, 7, 11, 15], 9)).to eq [0,1]
    end

    # it 'should add new range to range_list' do
    #   rl.add([1, 5])
    #   rl.add([10, 20])
    #   expect(rl.print).to eq '[1, 5) [10, 20)'
    # end
    #
    # it 'should update the second range of range_list' do
    #   rl.add([1, 5])
    #   rl.add([10, 20])
    #   rl.add([20, 21])
    #   expect(rl.print).to eq '[1, 5) [10, 21)'
    # end

  end
end
