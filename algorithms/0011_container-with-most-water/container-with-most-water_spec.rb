# frozen_string_literal: true

require '../0011_container-with-most-water/container-with-most-water'

RSpec.describe "" do

  context 'Test' do
    it 't1' do
      expect(max_area([1, 8, 6, 2, 5, 4, 8, 3, 7])).to eq 49
    end

    it 't2' do
      expect(max_area([1, 1])).to eq 1

    end
  end
end
