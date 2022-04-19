# frozen_string_literal: true

require '../0038_count-and-say/count-and-say'

RSpec.describe do

  context '' do
    it 't1' do
      expect(count_and_say(1)).to eq "1"
    end

    it 't2' do
      expect(count_and_say(2)).to eq "11"
    end

    it 't3' do
      expect(count_and_say(3)).to eq "21"
    end

    it 't4' do
      expect(count_and_say(4)).to eq "1211"
    end

  end
end
