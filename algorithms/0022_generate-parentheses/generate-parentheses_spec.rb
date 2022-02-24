# frozen_string_literal: true

require '../0022_generate-parentheses/generate-parentheses'

RSpec.describe do

  context '' do
    # it 't1 test valid_parenthesis method' do
    #   expect(valid_parenthesis("()")).to eq true
    # end
    #
    # it 't2 test valid_parenthesis method' do
    #   expect(valid_parenthesis(")")).to eq false
    # end

    it 't1' do
      expect(generate_parenthesis(1)).to eq ['()']
    end

    it 't2' do
      expect(generate_parenthesis(3)).to eq ["((()))","(()())","(())()","()(())","()()()"]
    end
    # it 't3' do
    #   expect(remove_nth_from_end([1, 2], 1)).to eq [1]
    # end
  end
end
