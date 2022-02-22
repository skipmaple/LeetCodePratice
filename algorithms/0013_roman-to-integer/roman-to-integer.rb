# @param {String} s
# @return {Integer}
def roman_to_int(s)
  h = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }
  s = s.split('')
  res = 0
  s.size.times do |i|
    v = h[s[i]]
    if i < s.size - 1 && v < h[s[i + 1]]
      res -= v
    else
      res += v
    end
  end

  res
end
