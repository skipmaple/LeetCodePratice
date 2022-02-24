# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums = nums.sort
  min_diff = 2 ** 31 - 1
  res = nil
  len = nums.size
  len.times do |i|
    break if i > len - 2

    current = nums[i]
    current_target = target - current
    rest_nums = nums[i + 1, len - 1]
    left = 0
    right = rest_nums.size - 1
    # puts("---------")
    # puts(rest_nums.inspect)
    # puts("left: #{left}")
    # puts("right: #{right}")
    while left < right
      tmp = rest_nums[left] + rest_nums[right]
      tmp_diff = (current_target - tmp).abs
      if tmp_diff < min_diff
        min_diff = tmp_diff
        # puts([current, rest_nums[left], rest_nums[right]].inspect)
        # puts current_target
        # puts(min_diff)
        res = current + rest_nums[left] + rest_nums[right]
      end
      if tmp >= current_target
        right -= 1
      else
        left += 1
      end
    end
  end
  res
end
