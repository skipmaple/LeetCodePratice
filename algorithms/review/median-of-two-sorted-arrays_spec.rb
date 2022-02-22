# frozen_string_literal: true

require '../review/median_of_two_sorted_arrays'

RSpec.describe do

  context 'Test' do
    it 't1' do
      expect(find_median_sorted_arrays([1, 2], [3, 4])).to eq 2.5
    end

    it 't2' do
      expect(find_kth_element([1, 2], [3, 4], 4)).to eq 4
    end

  end
end
