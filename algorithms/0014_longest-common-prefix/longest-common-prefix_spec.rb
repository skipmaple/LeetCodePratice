# frozen_string_literal: true

require './longest-common-prefix'

RSpec.describe '' do

  context 'Test' do
    it 't1' do
      expect(longest_common_prefix(%w[flower flow flight])).to eq 'fl'
    end

    it 't2' do
      expect(longest_common_prefix(%w[dog racecar car])).to eq ''
    end
  end
end
