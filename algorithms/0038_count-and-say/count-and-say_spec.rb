# frozen_string_literal: true

require '../0038_count-and-say/count-and-say'

RSpec.describe do

  context '' do

    it 't1' do
      expect(counting("1")).to eq "11"
    end

    it 't2' do
      expect(counting("11")).to eq "21"
    end

    it 't3' do
      expect(counting("21")).to eq "1211"
    end

  end
end
