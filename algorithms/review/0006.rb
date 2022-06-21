# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if s.size == 1 || num_rows == 1

  h = {}

  s.size.times do |i|
    current_line = map_line(i, num_rows)
    h[current_line] = h[current_line].nil? ? s[i] : h[current_line] + s[i]
  end

  h.values.join
end

def map_line(index, num_rows)
  count = num_rows * 2 - 2
  arr = (0..(num_rows - 1)).to_a + (0..(num_rows - 2)).to_a.reverse
  arr[index % count]
end
