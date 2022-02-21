# @param {String} s
# @return {String}
def longest_palindrome(s)
  len = s.size
  return s if len < 2

  p = []

  (len - 1).times do |i|
    p[i] = []
    (i..(len - 1)).each do |j|
      p[i] << (i == j)
    end
    p << p[i]
  end

  max_len = 0
  start = 0
  ending = 0

  # p[i][j] = p[i + 1][j - 1] && s[i] == s[j]
  (2..(len + 1)).each do |l|
    len.times do |i|
      # j - i + 1 = l
      j = l + i - 1
      break if j >= len

      p[i][j] = if s[i] != s[j]
                  false
                elsif j - i < 3
                  true
                else
                  p[i + 1][j - 1]
                end
      next unless p[i][j] && j - i + 1 > max_len

      max_len = j - i + 1
      start = i
      ending = j

    end
  end

  s[start, ending]

end

def longest_palindrome(s)
  return "" if s.nil? || s.length == 0
  i = 0
  begin_index = 0
  end_index = 0
  while i < s.length do
    len1 = expand_around_center(s, i, i)
    len2 = expand_around_center(s, i, i+1)
    len = [len1, len2].max
    if len > end_index - begin_index
      begin_index = i - (len - 1)/2
      end_index = i + len/2
    end
    i = i + 1
  end
  return s.slice(begin_index, end_index - begin_index + 1)
end

def expand_around_center(s, left, right)
  l = left
  r = right
  while l >= 0 && r <= s.length && s[l] == s[r] do
    l = l - 1
    r = r + 1
  end
  return r - l - 1
end
