# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def next_permutation(nums)
  len = nums.size
  i = len - 2
  i -= 1 while i >= 0 && nums[i] >= nums[i+1]

  if i >= 0
    j = len - 1
    j -= 1 while j >= 0 && nums[i] >= nums[j]
    nums[i], nums[j] = nums[j], nums[i]
  end

  nums[i + 1..-1] = nums[i+1..-1].reverse

  nums
end

def next_permutation(nums)
  i = nums.size - 2
  i -= 1 while i >= 0 && nums[i] >= nums[i+1]

  if i >= 0
    j = nums.size - 1
    j -= 1 while j>=0 && nums[i] >= nums[j]
    nums[i], nums[j] = nums[j], nums[i]
  end

  nums[i+1..-1] = nums[i+1..-1].reverse

  nums
end


