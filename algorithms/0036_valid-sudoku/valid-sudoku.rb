# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  # check lines
  board.each do |line|
    line_arr = line.reject { |i| !('1'..'9').include?(i) }.map(&:to_i)
    return false unless is_uniq_arr(line_arr)
  end

  # check columns
  9.times do |column|
    column_arr = board.map{|line| line[column]}.reject { |i| !('1'..'9').include?(i) }.map(&:to_i)
    return false unless is_uniq_arr(column_arr)
  end

  grid_arr = []
  (0..2).each do |i|
    (0..2).each do |j|
      grid_arr  << board[i][j]
    end
  end

  true
end

def is_uniq_arr(arr)
  arr.uniq == arr
end

arr = [%w[5 3 . . 7 . . . .], %w[6 . . 1 9 5 . . .], %w[. 9 8 . . . . 6 .], %w[8 . . . 6 . . . 3], %w[4 . . 8 . 3 . . 1], %w[7 . . . 2 . . . 6], %w[. 6 . . . . 2 8 .], %w[. . . 4 1 9 . . 5], %w[. . . . 8 . . 7 9]]


def is_valid_sudoku(board)
  rows = Array.new(9,Array.new(9,0))    # 二维数组
  columns = Array.new(9,Array.new(9,0)) # 二维数组
  subboxes = Array.new(3,Array.new(3,Array.new(9,0))) # 三维数组

  board.each_with_index do |row, i|
    row.each_with_index do |ch, j|
      next if ch == '.'
      index = ch.to_i - 1
      puts [i,index].inspect

      rows[i][index] += 1
      columns[j][index] += 1
      subboxes[i/3][j/3][index] += 1

      # 这行有问题！！
      if rows[i][index] > 1
        # puts [i,index].inspect
        #
        # puts row.inspect
        puts rows[i-1].inspect
        #
        puts [i,index].inspect
        return false
      end
      # return false if rows[i][index] > 1 || columns[j][index] > 1 || subboxes[i/3][j/3][index] > 1
    end
  end

  true
end
