# frozen_string_literal: true

require './median-of-two-sorted-arrays'

RSpec.describe do

  context 'Test' do
    it 't1' do
      expect(find_median_sorted_arrays([1, 3], [2])).to eq 2.0
    end

  end
end
