# frozen_string_literal: true

require '../0017_letter-combinations-of-a-phone-number/letter-combinations-of-a-phone-number'

RSpec.describe do

  context '' do
    it 't1' do
      expect(letter_combinations('23')).to eq %w[ad ae af bd be bf cd ce cf]
    end

    it 't2' do
      expect(letter_combinations('')).to eq %w[]
    end

    it 't3' do
      expect(letter_combinations('2')).to eq %w[a b c]
    end
  end
end
