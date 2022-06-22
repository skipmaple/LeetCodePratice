# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  return -1 if nums.empty?

  l = 0
  r = nums.size - 1

  while l <= r
    mid = (l + r) / 2
    return mid if nums[mid] == target

    if nums[0] < nums[mid]
      if nums[0] < target && target < nums[mid]
        r = mid - 1
      else
        l = mid + 1
      end
    else
      if nums[mid] < target && target <= nums[-1]
        l = mid + 1
      else
        r = mid - 1
      end
    end

    -1
  end
end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  return -1 if nums.empty?

  l = 0
  r = nums.size - 1

  while l <= r
    mid = (l + r) / 2
    return mid if nums[mid] == target

    if nums[0] <= nums[mid]
      if nums[0] < target && target < nums[mid]
        r = mid - 1
      else
        l = mid + 1
      end
    else
      if nums[mid] < target && target <= nums[-1]
        l = mid + 1
      else
        r = mid - 1
      end
    end
  end

  -1
end
