# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  return [-1, -1] if nums.empty?

  l = 0
  r = nums.size - 1

  while l <= r
    mid = (l + r) / 2
    if nums[mid] == target
      start_index = mid
      end_index = mid
      start_index -= 1 while nums[start_index - 1] == target && start_index > 0
      end_index += 1 while nums[end_index + 1] == target && end_index < nums.size - 1
      return [start_index, end_index]
    else
      if target < nums[mid]
        r = mid - 1
      else
        l = mid + 1
      end
    end
  end

  [-1, -1]
end
