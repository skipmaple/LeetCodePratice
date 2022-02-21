# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if s.size == 1 || num_rows == 1

  h = {}

  s.size.times do |i|
    current_line = map_line(i, num_rows)
    h[current_line] = h[current_line].nil? ? s[i] : h[current_line]+s[i]
  end

  h.values.join
end

def map_line(index, num_rows)
  count = num_rows*2-2
  arr = (0..(num_rows-1)).to_a + (0..(num_rows-2)).to_a.reverse
  arr[index%count]
end

# PAYPALISHIRING 3
# 0   4   8   12
# P   A   H   N
# 1 3 5 7 9 1113
# A P L S I I G
# 2   6   10
# Y   I   R
#
# 输入：s = "PAYPALISHIRING", numRows = 4
# 输出："PINALSIGYAHRPI"
# 解释：
# 0     6    12
# P     I    N
# 1   5 7  1113
# A   L S  I G
# 2 4   8 10
# Y A   H R
# 3     9
# P     I
#
# 输入：s = "PAYPALISHIRING", numRows = 5
# 输出："PSAIHYLIGPLRNAI"
# 解释：
#
# P       S
# A     I H
# Y   L   I   G
# P L     R N
# A       I

# 3 4
# 4 6
# 5 8
#
# 0 1 2 3 4 5 6 7 8
# 0 1 2 1 0 1 2 1 0
# 0 1 2 3 2 1 0
# 0 1 2 3 4 3 2 1
