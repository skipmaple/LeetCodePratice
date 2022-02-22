# @param {Integer} num
# @return {String}
def int_to_roman(num)
  h = {
    1 => 'I',
    5 => 'V',
    10 => 'X',
    50 => 'L',
    100 => 'C',
    500 => 'D',
    1000 => 'M'
  }

  single_h = { 0 => '', 1 => 'I', 2 => 'II', 3 => 'III', 4 => 'IV', 5 => 'V', 6 => 'VI', 7 => 'VII', 8 => 'VIII',
               9 => 'IX' }
  ten_h = { 0 => '', 10 => 'X', 20 => 'XX', 30 => 'XXX', 40 => 'XL', 50 => 'L', 60 => 'LX', 70 => 'LXX', 80 => 'LXXX',
            90 => 'XC' }
  hundred_h = { 0 => '', 100 => 'C', 200 => 'CC', 300 => 'CCC', 400 => 'CD', 500 => 'D', 600 => 'DC', 700 => 'DCC',
                800 => 'DCCC', 900 => 'CM' }
  thousand_h = { 0 => '', 1000 => 'M', 2000 => 'MM', 3000 => 'MMM' }

  res = ''
  res += single_h[num % 10]
  num /= 10
  res = ten_h[num % 10 * 10] + res
  num /= 10
  res = hundred_h[num % 10 * 100] + res
  num /= 10
  res = thousand_h[num % 10 * 1000] + res

  res
end
