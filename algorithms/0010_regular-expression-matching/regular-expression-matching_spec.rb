# frozen_string_literal: true

require '../0010_regular-expression-matching/regular-expression-matching'

RSpec.describe "" do

  context 'Test' do
    it 't1' do
      expect(is_match("aa","a*")).to eq true
    end

    it 't2' do
      expect(is_match("aa","a*")).to eq true
    end

    it 't3' do
      expect(is_match("aa","a*")).to eq true
    end
  end
end
