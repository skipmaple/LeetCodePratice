# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  res = 0
  l = 0
  r = height.size - 1

  while l < r
    tmp = (r - l) * [height[l], height[r]].min
    res = tmp if tmp > res
    if height[l] <= height[r]
      l += 1
    else
      r -= 1
    end
  end

  res
end
