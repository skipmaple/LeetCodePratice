# frozen_string_literal: true

require '../0012_integer-to-roman/integer-to-roman'

RSpec.describe '' do

  context 'Test' do
    it 't1' do
      expect(int_to_roman(58)).to eq 'LVIII'
    end

    it 't2' do
      expect(int_to_roman(1994)).to eq 'MCMXCIV'
    end
  end
end
