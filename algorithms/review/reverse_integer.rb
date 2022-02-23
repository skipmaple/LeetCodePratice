# @param {Integer} x
# @return {Integer}
def reverse(x)
  max = 2 ** 31 - 1
  min = -2 ** 31
  is_positive = x.positive? ? true : false
  x = x.abs
  res = 0
  while x != 0
    res = res * 10 + x % 10
    x /= 10
  end
  res = -res unless is_positive
  return 0 if res > max || res < min

  res
end
