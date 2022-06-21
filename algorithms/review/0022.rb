# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  res = []
  queue = []
  queue << ['', n, n]

  until queue.empty?
    s, l_count, r_count = queue.shift

    if l_count == 0 && r_count == 0
      res << s
    else
      if l_count > 0
        s2 = s + '('
        queue << [s2, l_count-1, r_count]
      end

      if r_count > l_count && r_count > 0
        s2 = s + ')'
        queue << [s2, l_count, r_count - 1]
      end
    end
  end

  res
end
