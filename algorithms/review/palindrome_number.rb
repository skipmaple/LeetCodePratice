# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x.negative? || ((x % 10).zero? && x != 0)

  reverse_num = 0
  while x > reverse_num
    reverse_num = reverse_num * 10 + x % 10
    x /= 10
  end

  reverse_num == x || reverse_num / 10 == x # 反转一半数字 (reverse_num/10 是 针对 121 这种：reverse_num = 12 , x= 1)
end
