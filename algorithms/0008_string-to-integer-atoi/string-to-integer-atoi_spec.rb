# frozen_string_literal: true

require '../0008_string-to-integer-atoi/string-to-integer-atoi'

RSpec.describe "" do

  context 'Test' do
    it 't1' do
      expect(my_atoi("42")).to eq 42
    end

    it 't2' do
      expect(my_atoi("-0")).to eq -0
    end

    it 't3' do
      expect(my_atoi("123")).to eq 123
    end
  end
end
