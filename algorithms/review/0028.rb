# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  return 0 if needle == ''
  (haystack.size - needle.size).times do |i|
    return i if haystack.slice(i,i+needle.size) == needle
  end

  -1
end
