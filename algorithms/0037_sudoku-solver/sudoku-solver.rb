# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def solve_sudoku(board)
  rows = Array.new(9) { Array.new(9, 0) }
  columns = Array.new(9) { Array.new(9, 0) }
  subboxes = Array.new(3) { Array.new(3) { Array.new(9, 0) } } # 三维数组

  rest_board = Array.new(9) { Array.new(9) { [] } }

  board.each_with_index do |row, i|
    row.each_with_index do |ch, j|
      next if ch == '.'

      index = ch.to_i - 1

      rows[i][index] += 1
      columns[j][index] += 1
      subboxes[i / 3][j / 3][index] += 1
    end
  end

  board.each_with_index do |row, i|
    row.each_with_index do |ch, j|
      next unless ch == '.'
      rest_row = []
      rows[i].each_with_index { |n, index| rest_row << index + 1 if n == 0 }

      rest_column = []
      columns[j].each_with_index { |n, index| rest_column << index + 1 if n == 0 }

      rest_subbox = []
      subboxes[i / 3][j / 3].each_with_index { |n, index| rest_subbox << index + 1 if n == 0 }
      # puts '*' * 100
      # puts "i: #{i}, j: #{j}"
      # puts "rest_row"
      # puts rest_row.inspect
      # puts "rest_column"
      # puts rest_column.inspect
      # puts 'rest_subbox'
      # puts rest_subbox.inspect
      # puts '*' * 100
      rest_board[i][j] = (rest_row & rest_column & rest_subbox)
      if rest_board[i][j].size == 1
        board[i][j] = rest_board[i][j].first.to_s
      end
      board[i][j] = (rest_row & rest_column & rest_subbox).first.to_s
    end
  end

  board
end
