# @param {String} s
# @return {Integer}
def my_atoi(s)
  is_negative = false
  start_index = 0
  end_index = 0

  min = -2**31
  max = 2**31 - 1

  s_arr = s.split('')

  s_arr.each_with_index do |ch, i|
    case ch
    when ' '
      next
    when '+', '-'
      break unless ('0'..'9').include?(s_arr[i + 1])
      break if i >= 1 && ('0'..'9').include?(s_arr[i - 1])

      start_index = i + 1
      is_negative = true if ch == '-'
    when '0'..'9'
      end_index = i
    else
      break
    end
  end

  # puts [start_index, end_index]

  res_str = s.slice(start_index, end_index + 1)
  res = res_str.to_i
  res = -res if is_negative
  return min if res <= min
  return max if res >= max

  res
end
