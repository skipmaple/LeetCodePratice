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

def reverse(x)
  a=x.abs
  res = 0
  while a!=0 do
    res = res*10+a%10
    a/=10
  end
  return 0 unless res > -2**31 && res < 2**31-1
  x.negative? ? -res : res
end
