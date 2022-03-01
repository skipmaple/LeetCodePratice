# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  l = 0
  r = nums.size - 1
  res = nums.size

  while l <= r
    mid = (r - l) >> 1 + l

    if nums[mid] <= target
      res = mid
      l = mid + 1
    else
      r = mid - 1
    end
  end

  res
end

def search_insert(nums, target)
  l = 0
  r = nums.size
  while l < r
    m = (l + r) / 2
    return m if target == nums[m]

    r = m if nums[m] > target
    l = m + 1 if nums[m] < target
  end
  l
end
