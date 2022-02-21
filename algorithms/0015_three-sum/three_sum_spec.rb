# frozen_string_literal: true

require './three_sum'

RSpec.describe do

  context 'When testing 3_sum method' do
    it 't1' do
      expect(three_sum([-1, 0, 1, 2, -1, -4])).to eq [[-1, -1, 2], [-1, 0, 1]]
    end

  end
end
