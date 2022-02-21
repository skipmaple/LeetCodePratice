# frozen_string_literal: true

require '../0006_zigzag-conversion/zigzag-conversion.rb'

RSpec.describe "" do

  context 'Test' do
    it 't1' do
      expect(convert("PAYPALISHIRING", 3)).to eq "PAHNAPLSIIGYIR"
    end

    it 't2' do
      expect(convert("PAYPALISHIRING", 4)).to eq "PINALSIGYAHRPI"
    end

    it 't3' do
      expect(convert("AB", 1)).to eq "AB"
    end
  end
end
