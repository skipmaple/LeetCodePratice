# 时间复杂度 O(n)

def two_sum(nums, target)
  have = {}
  nums.each_with_index { |n, i| have[(k = target - n)] ? (return [have[k], i]) : have[n] = i }
end

def two_sum(nums, target)
  have = {}
  nums.each_with_index { |n, i| have[k = target - n] ? (return [have[k], i]) : have[n] = i }
end

def two_sum(nums, target)
  have = {}
  nums.each_with_index { |n, i| have[k = target - n] ? (return [have[k], i]) : have[n] = i }
end

# 递归方法

def two_sum_recursion(nums, target, index = 0, have = {})
  return [have[target - nums[index]], index] if have[target - nums[index]]
  return nil if index == nums.size - 1

  have[nums[index]] = index
  index += 1
  two_sum_recursion(nums, target, index, have)
end

# 时间复杂度 O(n²)

def two_sum_new(nums = [], target)
  nums.each_with_index do |m, i|
    nums.each_with_index do |n, j|
      return [i, j] if i != j && m + n == target
    end
  end
end

def two_sum_new(nums = [], target)
  nums.each_with_index { |m, i|
    nums.each_with_index { |n, j|
      return [i, j] if i != j && m + n == target
    }
  }
end
