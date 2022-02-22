# frozen_string_literal: true

require '../0013_roman-to-integer/roman-to-integer'

RSpec.describe '' do

  context 'Test' do
    it 't1' do
      expect(roman_to_int('III')).to eq 3
    end

    it 't2' do
      expect(roman_to_int('LVIII')).to eq 58
    end
  end
end
