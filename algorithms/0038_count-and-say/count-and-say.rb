# @param {Integer} n
# @return {String}
def count_and_say(n)
  arr = []
  arr[0] = '1'
  (n - 1).times do |i|
    arr[i] = counting(arr[i - 1])
  end
end

def counting(num_str)
  if num_str == '1'
    return '11'
  end

  res = ''
  last = num_str[-1]
  count_size = 1
  i = num_str.size - 2
  while i >= 0
    current = num_str[i]
    if current == last
      last = current
      count_size += 1
    else
      res = "#{count_size}#{last}" + res
      last = current
    end
    i -= 1
  end

  res
end
