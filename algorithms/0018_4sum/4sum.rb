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
      left = j + 1
      right = nums.size - 1
      while left < right
        k = (num1 + num2 + nums[left] + nums[right])
        if k == target
          res << [num1, num2, nums[left], nums[right]]
          left += 1 while nums[left] == nums[left + 1]
          right -= 1 while nums[right] == nums[right - 1]
          left += 1
          right -= 1
        elsif k < target
          left += 1
        else
          right -= 1
        end
      end
    end
  end
  res.uniq
end
