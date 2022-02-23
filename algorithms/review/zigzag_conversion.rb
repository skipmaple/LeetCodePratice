# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if num_rows == 1 || s.size <= num_rows

  len = num_rows * 2 - 2
  map_arr = (0..(num_rows - 1)).to_a + (0..(num_rows - 2)).to_a.reverse
  h = {}
  s.size.times do |i|
    index = map_arr[i % len]
    if h[index]
      h[index] += s[i]
    else
      h[index] = s[i]
    end
  end

  res = ''
  num_rows.times do |i|
    res += h[i]
  end
  res
end
