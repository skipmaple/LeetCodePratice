# @param {Integer} x
# @return {Integer}
def reverse(x)
  return 0 unless x > -2**31 && x < 2**31-1
  x.negative?
  str_x = x.abs.to_s.reverse
  str_x = '-' + str_x if x.negative?
  res = str_x.to_i
  return 0 unless res > -2**31 && res < 2**31-1
  res
end
