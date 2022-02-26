# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return nums.size if nums.empty? || nums.size == 1
  i = 0
  current_index = 0
  while i <= nums.size - 1
    i += 1 while nums[i] == nums[i + 1]
    nums[current_index] = nums[i]
    current_index += 1
    i += 1
  end

  nums[0..(current_index - 1)].size
end

def remove_duplicates(arr)
  return arr.size if arr.size < 2

  unified = 0
  arr[1..-1].each do |n|
    if arr[unified] != n
      unified += 1
      arr[unified] = n
    end
  end
  unified + 1
end
