# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  left = 0
  nums.each_with_index do |n, i|
    if n != val
      nums[left] = n
      left += 1
    end
  end

  # nums[0..left - 1].size
  left
end
