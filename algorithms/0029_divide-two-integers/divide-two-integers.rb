# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}

# # my resolution
# def divide(dividend, divisor)
#   return 0 if dividend.zero?
#
#   count = 0
#   tmp_sum = 0
#   is_positive = (dividend.positive? && divisor.positive?) || (dividend.negative? && divisor.negative?)
#
#   dividend = dividend.abs
#   divisor = divisor.abs
#   while tmp_sum <= dividend
#     count += 1
#     tmp_sum += divisor
#   end
#
#   count -= 1
#   min = -2 ** 31
#   max = 2 ** 31 - 1
#
#   count = is_positive ? count : -count
#   return max if count > max || count < min
#   count
# end

# 快速乘
# x 和 y 是负数, z 是 正数
# 判断 z * y >= x 是否成立
#
# def quick_add(y, z, x)
#   res = 0
#   add = y
#   while z > 0
#     if z & 1 > 0
#       # 需要保证 res + add >= x
#       return false if res < x - add
#
#       res += add
#     end
#     if z != 1
#       # 需要保证 add + add >= x
#       return false if add < x - add
#
#       add += add
#     end
#     z >>= 1 # 不能使用除法
#   end
#   true
# end
#
# # 除数 ÷ 被除数 = 商
#
# def divide(dividend, divisor)
#   min_num = -2 ** 31
#   max_num = 2 ** 31 - 1
#
#   # 被除数为最小值
#   if dividend == min_num
#     return min_num if divisor == 1
#     return max_num if divisor == -1
#   end
#   # 除数为最小值
#   if divisor == min_num
#     return 1 if dividend == min_num
#     return 0
#   end
#
#   # 被除数为 0
#   return 0 if dividend == 0
#
#   # 一般情况, 使用二分查找
#   # 将所有的正数取相反数，这样就只需要考虑一种情况
#   rev = false
#   if dividend > 0
#     dividend = -dividend
#     rev = !rev
#   end
#
#   if divisor > 0
#     divisor = -dividend
#     rev = !rev
#   end
#
#   ans = 0
#   left = 1
#   right = max_num
#   while left <= right
#     mid = left + (right - left) >> 1 # 注意溢出, 并且不能使用除法
#     if quick_add(divisor, mid, dividend)
#       ans = mid
#       break if mid == max_num
#
#       left = mid + 1
#     else
#       right = mid - 1
#     end
#   end
#   return -ans if rev
#   ans
# end

def divide(dividend, divisor)
  res = go_divide(~dividend + 1, ~divisor + 1) if dividend < 0 && divisor < 0
  res = (~go_divide(dividend, ~divisor + 1)) + 1 if dividend >= 0 && divisor < 0
  res = (~go_divide(~dividend + 1, divisor)) + 1 if dividend < 0 && divisor > 0
  res = go_divide(dividend, divisor) if dividend >= 0 && divisor > 0
  (-2_147_483_648..2_147_483_647).include?(res) ? res : 2_147_483_647
end

def go_divide(dividend, divisor)
  return 0 if dividend < divisor
  return dividend if divisor == 1

  res = 1
  cur = divisor
  while cur + cur < dividend
    res = res << 1
    cur = cur << 1
  end
  res + divide(dividend - cur, divisor)
end
