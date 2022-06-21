# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  h = {}
  h[2] = %w[a b c]
  h[3] = %w[d e f]
  h[4] = %w[g h i]
  h[5] = %w[j k l]
  h[6] = %w[m n o]
  h[7] = %w[p q r s]
  h[8] = %w[t u v]
  h[9] = %w[w x y z]
  res = []

  digits.size.times do |i|
    tmp_arr = h[digits[i].to_i]
    if res.empty?
      res = tmp_arr
    else
      tmp_res = []
      res.each do |s|
        tmp_arr.each do |ts|
          tmp_res << s + ts
        end
      end
      res = tmp_res
    end
  end

  res
end

# 暴力解法
