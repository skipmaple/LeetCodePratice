# frozen_string_literal: true

require '../0009_palindrome-number/palindrome-number'

RSpec.describe "" do

  context 'Test' do
    it 't1' do
      expect(is_palindrome(121)).to eq true
    end

    it 't2' do
      expect(is_palindrome(123)).to eq false
    end

    it 't3' do
      expect(is_palindrome(123_454_321)).to eq true
    end
  end
end
