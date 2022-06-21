# @param {String} s
# @return {Integer}
#
# 窗口移动
def length_of_longest_substring(s)
  return 0 if s.empty?
  return 1 if s.size == 1

  longest = 0
  right = 0
  left = 0

  while right + 1 < s.size
    if s[left..right].include?(s[right+1])
      left += 1
    else
      right += 1
    end

    tmp = right - left + 1
    longest = tmp > longest ? tmp : longest
  end

  longest
end
