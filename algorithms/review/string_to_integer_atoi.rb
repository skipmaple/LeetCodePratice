# @param {String} s
# @return {Integer}
def my_atoi(s)
  s = s.strip
  min = -2 ** 31
  max = 2 ** 31 - 1

  is_positive = s.slice(0) != '-'

  s = s.slice(1..(s.size - 1)) if %w[+ -].include?(s.slice(0))

  res_str = ''
  s.size.times do |i|
    if ('0'..'9').include?(s[i]) && (i.zero? || ('0'..'9').include?(s[i - 1]))
      res_str += s[i]
    else
      break
    end
  end

  res = is_positive ? res_str.to_i : res_str.to_i * -1
  res = max if res > max
  res = min if res < min
  res
end
