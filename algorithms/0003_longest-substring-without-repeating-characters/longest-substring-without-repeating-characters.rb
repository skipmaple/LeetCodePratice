# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  max_len = 0
  max_len_arr = []
  ch_arr = []

  # r = s.bytes.each_with_object({}) { |i, r| r[i] = s.bytes.index(i) }

  s.bytes.each do |ch|
    if ch_arr.include?(ch)
      max_len_arr << max_len
      ch_arr.shift(ch_arr.index(ch) + 1)
      max_len = ch_arr.size
    end
    ch_arr << ch
    max_len += 1
  end

  max_len_arr << max_len

  max_len_arr.max || 0
end

# 输入: s = "pwwkew"
# 输出: 3
# 解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
# 请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。

def length_of_longest_substring(s)
  return 0 if s.empty?
  size = s.length
  return 1 if size == 1
  left = 0 # 滑动窗口的起始值
  right = 0 # 滑动窗口的结束值
  longest = 0 # 预设子串最大值
  # 当结束值小于字符串的长度
  # 判断字符串的下一个值是否包含在滑动窗口内
  # 是,则将滑动窗口左边指针left右移一位
  # 否,则将滑动窗口右边右移一位
  # 初始化最大子串为 0,子串的长度为右边指针-左边指针+1
  while right + 1 < size
    if s[left..right].include?(s[right + 1])
      left += 1
    else
      right += 1
    end
    tmp = right - left + 1
    longest = tmp > longest ? tmp : longest
  end
  longest
end

def length_of_longest_substring(s)
  return 0 if s.empty?
  return 1 if s.size == 1

  longest = 0
  left = 0
  right = 0

  while right + 1 < s.size
    if s[left..right].include?(s[right + 1])
      left += 1
    else
      right += 1
    end

    tmp = right - left + 1
    longest = tmp > longest ? tmp : longest
  end
  longest
end
