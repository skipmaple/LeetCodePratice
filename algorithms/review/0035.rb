# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  l = 0
  r = nums.size - 1

  while l < r
    mid = (l + r) / 2

    if target == nums[mid]
      return mid
    elsif target < nums[mid]
      r = mid
    else
      l = mid + 1
    end
  end
  l
end
