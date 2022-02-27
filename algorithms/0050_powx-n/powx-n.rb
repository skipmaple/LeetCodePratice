# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
  return quick_mul(x, n) if n >= 0
  return 1.0 / quick_mul(x, -n)
end

def quick_mul(x, n)
  return 1 if n == 0
  y = quick_mul(x, n / 2)
  return y * y if n % 2 == 0
  return y * y * x
end
