# @param {Integer[]} nums
# @return {Integer[]}
def three_sum_closest(nums)
  res = []
  nums.sort!
  nums.each_with_index do |n, i|
    return res if n.positive?
    next if i > 0 && n == nums[i - 1]

    l = i + 1
    r = nums.length - 1
    while l < r
      if (k = n + nums[l] + nums[r] == 0)
        res << [n, nums[l], nums[r]]
        l += 1 while nums[l] == nums[l + 1]
        r -= 1 while nums[r] == nums[r - 1]
        l += 1
        r -= 1
      elsif k > 0
        r -= 1
      else
        l += 1
      end
    end
  end
  res
end
