# @param {String} s
# @return {String}
def longest_palindrome(s)
  return '' if s.nil? || s.empty?
  begin_index = 0
  end_index = 0
  i = 0

  while i < s.length do
    len1 = expand_around_center(s, i, i)
    len2 = expand_around_center(s, i, i + 1)
    len = [len1, len2].max
    if len > end_index - begin_index
      begin_index = i - (len - 1) / 2
      end_index = i + len / 2
    end

    i += 1
  end

  s.slice(begin_index, end_index - begin_index + 1)

end

def expand_around_center(s, l, r)
  while l >= 0 && r < s.length && s[l] == s[r]
    l -= 1
    r += 1
  end

  r - l - 1
end

def longest_palindrome(s)
  return '' if s.nil? || s.empty?

  start = 0
  ending = 0

  i = 0
  while i < s.size - 1
    len1 = expand_around_center(s, i, i)
    len2 = expand_around_center(s, i, i + 1)
    len = [len1, len2].max
    if len > ending - start - 1
      start = i - (start - 1) / 2
      ending = i + (ending) / 2
    end

    i += 1
  end

  s.slice(start, ending - start + 1)

end
