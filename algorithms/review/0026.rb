# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return nums.size if nums.size <= 1
  unified = 0

  nums[1..-1].each do |n|
    if nums[unified] != n
      unified += 1
      nums[unified] = n
    end
  end

  unified + 1
end
