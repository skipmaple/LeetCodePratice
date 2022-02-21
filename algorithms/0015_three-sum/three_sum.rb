# frozen_string_literal: true

# def three_sum(nums)
#   nums.sort!
#   len = nums.length
#   res = []
#   len.times do |base|
#     break if (nums[base]).positive?
#     next if base.positive? && nums[base] == nums[base - 1]
#
#     left = base + 1
#     right = len - 1
#     while left < right
#       if (sum = nums[left] + nums[right] + nums[base]).zero?
#         res << [nums[base], nums[left], nums[right]]
#         right -= 1 while nums[right] == nums[right - 1]
#         left += 1 while nums[left] == nums[left + 1]
#         left += 1
#         right -= 1
#       elsif sum.positive?
#         right -= 1
#       else
#         # sum.negative?
#         left += 1
#       end
#     end
#   end
#   res
# end

# input:
# nums = [-1,0,1,2,-1,-4]
#
# output:
# [[-1,-1,2],[-1,0,1]]

def three_sum(nums)
  nums.sort!
  res = []
  len = nums.size
  len.times do |i|
    return res if nums[i].positive?
    next if i.positive? && nums[i] == nums[i - 1]

    left = i + 1
    right = len - 1

    while left < right
      if (k = nums[i] + nums[left] + nums[right]).zero?
        res << [nums[i], nums[left], nums[right]]
        left += 1 while nums[left] == nums[left + 1]
        right += 1 while nums[right] == nums[right - 1]
        left += 1
        right -= 1
      elsif k.positive?
        right -= 1
      else
        left += 1
      end
    end
  end
  res
end
