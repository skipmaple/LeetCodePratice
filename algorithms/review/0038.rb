
# @param {Integer} n
# @return {String}
def count_and_say(n)
  prev = '1'
  (2..n).each do |i|
    cur = ''
    j, start = 0, 0
    while j < prev.size
      j += 1 while j < prev.size && prev[j] == prev[start]
      cur += (j - start).to_s + prev[start].to_s
      start = j
    end
    prev = cur
  end

  prev
end

# puts count_and_say(4)


def count_and_say(n)
  prev = '1'

  (2..n).each do |i|
    cur = ''
    j, start = 0, 0
    while j < prev.size
      j += 1 while j< prev.size && prev[start] == prev[j]
      cur += ( j-start).to_s + prev[start].to_s
      start = j
    end
    prev = cur
  end

  prev
end
