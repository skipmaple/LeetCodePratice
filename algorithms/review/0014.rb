# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  res = ''
  strs.map(&:size).min.times do |i|
    arr = []
    strs.each do |str|
      arr << str[i]
    end

    if arr.uniq.size == 1
      res += arr.uniq.join
    else
      break
    end
  end

  res
end
