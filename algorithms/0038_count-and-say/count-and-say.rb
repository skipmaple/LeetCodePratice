# @param {Integer} n
# @return {String}
def count_and_say(n)
  return "1" if n == 1
  say(count_and_say(n - 1))
end

def say(str)
  # 这行没看懂
  prev = str.split(/(1+)|(2+)|(3+)/).delete_if { |item| item.empty? }
  prev.map { |item| item.length.to_s + item[0] }.join
end


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
