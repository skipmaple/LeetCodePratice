def generate_parenthesis(n)
  list = []

  queue = []

  queue << ["", n, n]

  until queue.empty?
    s, leftCount, rightCount = queue.shift

    if leftCount == 0 && rightCount == 0
      list << s
    else
      if leftCount > 0
        s2 = s + "("
        queue << [s2, leftCount - 1, rightCount]
      end

      if rightCount > leftCount && rightCount > 0
        s2 = s + ")"
        queue << [s2, leftCount, rightCount - 1]
      end
    end
  end

  return list
end
