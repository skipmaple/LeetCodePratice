# @param {Integer} x
# @return {Integer}
def reverse(x)
  a = x.abs
  res = 0
  while a != 0 do
    res = res * 10 + a % 10
    a /= 10
  end

  return 0 if res > 2 ** 31 - 1 || res < -2 ** 31
  x.negative? ? -res : res
end
