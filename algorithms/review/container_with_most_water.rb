# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  len = height.size
  l = 0
  r = len - 1
  max = 0
  while l < r
    tmp = (r - l) * [height[l], height[r]].min
    max = tmp if tmp > max
    if height[l] <= height[r]
      l += 1
    else
      r -= 1
    end
  end

  max
end
