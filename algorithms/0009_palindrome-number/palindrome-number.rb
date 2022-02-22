# frozen_string_literal: true

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  str_x = x.to_s
  arr_x = str_x.split("")
  len = arr_x.size / 2
  i = 0
  while i <= len
    return false if arr_x[i] != arr_x[arr_x.size - 1 - i]

    i += 1
  end
  true
end

def is_palindrome(x)
  return false if x.negative? || (x != 0 && (x % 10).zero?)

  reverse_num = 0
  while x > reverse_num
    reverse_num = reverse_num * 10 + x % 10
    x /= 10
  end

  x == reverse_num || x == reverse_num / 10
end
