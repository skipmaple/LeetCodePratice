# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  left = 0
  nums.each do |n|
    if n != val
      nums[left] = n
      left += 1
    end
  end

  left
end
