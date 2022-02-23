# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p)
  s = s.split('')
  p = p.split('')

  m = s.size
  n = p.size

  f = Array.new(m + 1) { Array.new(n + 1) { false } }
  f[0][0] = true
  (m + 1).times do |i|
    (1..(n + 1)).each do |j|
      if p[j - 1] == '*'
        f[i][j] = f[i][j] || f[i][j - 2]
        f[i][j] = f[i][j] || f[i - 1][j] if match_helper(s, p, i, j - 1)
      elsif match_helper(s, p, i, j)
        f[i][j] = f[i][j] || f[i - 1][j - 1]
      end
    end
  end

  f[m][n]
end

def match_helper(s, p, i, j)
  return false if i.zero?
  return true if p[j - 1] == '.'

  s[i - 1] == p[j - 1]
end
