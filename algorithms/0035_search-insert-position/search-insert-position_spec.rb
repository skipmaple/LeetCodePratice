# frozen_string_literal: true

require '../0032_longest-valid-parentheses/longest-valid-parentheses'

RSpec.describe do

  context '' do

    it 't1' do
      expect(longest_valid_parentheses("(()")).to eq 2
    end

    it 't2' do
      expect(longest_valid_parentheses(")()())")).to eq 4
    end

    it 't3' do
      expect(longest_valid_parentheses("()")).to eq 2
    end
  end
end
