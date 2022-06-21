# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  x_s = x.to_s
  l = 0
  r = x_s.size - 1
  while l <= r
    return false if x_s[l] != x_s[r]
    l += 1
    r -= 1
  end

  true
end

# @return {Boolean}
def is_palindrome(x)
  return false if x.negative? || (x != 0 && (x % 10).zero?)

  reverse_num = 0
  while x > reverse_num
    reverse_num = reverse_num * 10 + x % 10
    x /= 10
  end

  x == reverse_num || x == reverse_num / 10
end

def is_palindrome(x)
  return false if x.negative? || (x != 0 && (x % 10).zero?)

  reverse_num = 0
  while x > reverse_num
    reverse_num = reverse_num * 10 + x % 10
    x /= 10
  end
  1

  x == reverse_num || x == reverse_num / 10
end
