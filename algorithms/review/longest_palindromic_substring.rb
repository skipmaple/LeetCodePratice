# @param {String} s
# @return {String}
#
# 寻找最长回文串
def longest_palindrome(s)
  return s if s.size <= 1

  len = s.size
  max_l = ''
  len.times do |i|
    tmp1 = max_long(s, i, i)
    tmp2 = max_long(s, i, i + 1)
    max_l = tmp1 if tmp1.size > max_l.size
    max_l = tmp2 if tmp2.size > max_l.size
  end
  max_l
end

def max_long(s, left, right)
  len = s.size
  max_l = ''
  while left >= 0 && right <= len - 1
    break if s[left] != s[right]

    tmp = s.slice(left..right) # !! 这个地方有犯错
    max_l = tmp if tmp.size > max_l.size
    left -= 1
    right += 1
  end
  max_l
end
