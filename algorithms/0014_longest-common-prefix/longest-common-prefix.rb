# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  res = ''
  min_size = strs.map { |str| str.size }.min
  min_size.times do |i|
    arr = strs.each_with_object([]) { |str, r| r << str[i] }
    is_same, e = is_same_element(arr)
    break unless is_same

    res += e
  end
  res
end

def is_same_element(arr)
  first = arr[0]
  (1..(arr.size - 1)).each do |i|
    return [false, nil] unless arr[i] == first
  end
  [true, first]
end

