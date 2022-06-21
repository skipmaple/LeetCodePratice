# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
  nums.sort!
  res = []
  (0..(nums.size - 4)).each do |i|
    num1 = nums[i]
    ((i + 1)..(nums.size - 3)).each do |j|
      num2 = nums[j]
      l = j + 1
      r = nums.size - 1
      while l < r
        k = (num1 + num2 + nums[l] + nums[r])
        if k == target
          res << [num1, num2, nums[l], nums[r]]
          l += 1 while nums[l] == nums[l + 1]
          r -= 1 while nums[r] == nums[r - 1]
          l += 1
          r -= 1
        elsif k > target
          r -= 1
        else
          l += 1
        end
      end
    end
  end

  res.uniq
end
