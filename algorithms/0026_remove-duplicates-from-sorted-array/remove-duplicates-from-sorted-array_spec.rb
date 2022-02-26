# frozen_string_literal: true

require '../0026_remove-duplicates-from-sorted-array/remove-duplicates-from-sorted-array'

RSpec.describe do

  context '' do

    it 't1' do
      expect(remove_duplicates([1, 1, 2, 2])).to eq 2
    end

    it 't2' do
      expect(remove_duplicates([1, 2])).to eq 2
    end

    it 't3' do
      expect(remove_duplicates([1, 1, 2])).to eq 2
    end

  end
end
