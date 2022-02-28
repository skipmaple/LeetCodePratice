# frozen_string_literal: true

require '../0036_valid-sudoku/valid-sudoku'

RSpec.describe do

  context '' do

    it 't1' do
      arr = [%w[5 3 . . 7 . . . .], %w[6 . . 1 9 5 . . .], %w[. 9 8 . . . . 6 .], %w[8 . . . 6 . . . 3], %w[4 . . 8 . 3 . . 1], %w[7 . . . 2 . . . 6], %w[. 6 . . . . 2 8 .], %w[. . . 4 1 9 . . 5], %w[. . . . 8 . . 7 9]]
      expect(is_valid_sudoku(arr)).to eq true
    end

  end
end
