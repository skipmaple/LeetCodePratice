# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  return -1 if nums.empty?

  left = 0
  right = nums.size - 1

  while left <= right
    mid = (left + right) / 2
    return mid if nums[mid] == target

    if nums[0] <= nums[mid]
      if nums[0] <= target && target < nums[mid]
        right = mid - 1
      else
        left = mid + 1
      end
    else
      if nums[mid] < target && target <= nums[-1]
        left = mid + 1
      else
        right = mid - 1
      end
    end
  end

  -1
end
