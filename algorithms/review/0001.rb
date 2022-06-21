def two_nums(nums, target)
  have = {}
  nums.each_with_index { |n, i| (k = have[target - n]) == i ? return [have[k], i] : have[n] = i }
end
