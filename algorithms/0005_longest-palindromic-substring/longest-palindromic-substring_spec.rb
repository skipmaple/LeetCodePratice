# frozen_string_literal: true

require '../0005_longest-palindromic-substring/longest-palindromic-substring'

RSpec.describe "" do

  context 'Test' do
    it 't1' do
      expect(longest_palindrome("cbbd")).to eq "bb"
    end

    it 't2' do
      expect(longest_palindrome("babad")).to eq "bab"
    end
  end
end
