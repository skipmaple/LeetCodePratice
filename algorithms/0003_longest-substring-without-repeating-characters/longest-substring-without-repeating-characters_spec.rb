# frozen_string_literal: true

require './longest-substring-without-repeating-characters'

RSpec.describe do

  context 'Test' do
    it 't1' do
      expect(length_of_longest_substring("pwwkew")).to eq 3
    end

    it 't2' do
      expect(length_of_longest_substring(" ")).to eq 1
    end

    it 't3' do
      expect(length_of_longest_substring("aab")).to eq 2
    end

    it 't4' do
      expect(length_of_longest_substring("dvdf")).to eq 3
    end

    it 't5' do
      expect(length_of_longest_substring("abcabcbb")).to eq 3
    end

  end
end
