# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums.sort!
  min_diff = 2 ** 31 - 1
  res = 0
  len = nums.size
  len.times do |i|
    break if i > len - 2
    next if i > 0 && nums[i] == nums[i-1]

    current = nums[i]
    current_target = target - current
    rest_nums = nums[i+1, len - 1]
    left = 0
    right = rest_nums.size - 1
    while left < right
      tmp = rest_nums[left] + rest_nums[right]
      tmp_diff = (current_target - tmp).abs
      if tmp_diff < min_diff
        min_diff = tmp_diff
        res = current + rest_nums[left] + rest_nums[right]
      end

      if tmp > current_target
        right -= 1 while rest_nums[right] == rest_nums[right - 1]
        right -= 1
      else
        left += 1 while rest_nums[left] == rest_nums[left+1]
        left += 1
      end
    end
  end

  res
end
