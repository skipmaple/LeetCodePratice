# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  return 0 if needle == ''

  needle_size = needle.size
  haystack.size.times do |i|
    return i if haystack.slice(i..(i+needle_size-1)) == needle
  end
  -1
end
