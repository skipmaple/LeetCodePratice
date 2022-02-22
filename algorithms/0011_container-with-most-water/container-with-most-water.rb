# @param {Integer[]} height
# @return {Integer}
#
# 暴力 (超时警告!)
def max_area(height)
  res = 0
  len = height.size

  len.times do |i|
    ((i + 1)..(len - 1)).each do |j|
      tmp = [height[i], height[j]].min * (j - i)
      res = tmp if tmp > res
    end
  end
  res
end

# 双指针
def max_area(height)
  res = 0
  left = 0
  right = height.size - 1
  while left < right
    tmp = (right - left) * [height[left], height[right]].min
    res = tmp if tmp > res
    if height[left] <= height[right]
      left += 1
    else
      right -= 1
    end
  end
  res
end
