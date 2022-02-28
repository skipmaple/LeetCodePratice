# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def next_permutation(nums)
  len = nums.size
  i = len - 2
  i -= 1 while i >= 0 && nums[i] >= nums[i + 1]

  if i >= 0
    j = len - 1
    j -= 1 while j >= 0 && nums[i] >= nums[j]
    nums[i], nums[j] = nums[j], nums[i]
  end
  nums[i + 1..-1] = reverse_arr(nums[i + 1..-1])
  nums
end

def reverse_arr(arr)
  left = 0
  right = arr.size - 1
  while left < right
    arr[left], arr[right] = arr[right], arr[left]
    left += 1
    right -= 1
  end
  arr
end
