# frozen_string_literal: true

require './reverse-integer'

RSpec.describe "" do

  context 'Test' do
    it 't1' do
      expect(reverse(321)).to eq 123
    end

    it 't2' do
      expect(reverse(-321)).to eq -123
    end

    it 't3' do
      expect(reverse(0)).to eq 0
    end
  end
end
