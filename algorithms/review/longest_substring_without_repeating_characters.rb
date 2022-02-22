# @param {String} s
# @return {Integer}

def length_of_longest_substring(s)
  return 0 if s.empty?
  return 1 if s.size == 1

  left = 0
  right = 0
  max_len = 0
  len = s.size
  while right + 1 < len
    if s[left..right].include?(s[right + 1])
      left += 1
    else
      right += 1
    end

    tmp = right - left + 1
    max_len = tmp > max_len ? tmp : max_len
  end
  max_len
end
