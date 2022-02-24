# frozen_string_literal: true

require '../0016_3sum-closest/3sum-closest'

RSpec.describe do

  context 'When testing 3_sum method' do
    it 't1' do
      expect(three_sum_closest([-1, 2, 1, -4], 1)).to eq 2
    end

    it 't2' do
      expect(three_sum_closest([0, 0, 0], 1)).to eq 0
    end

  end
end
