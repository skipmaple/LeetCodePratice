def two_sum(nums, target, have = {})
  nums.each_with_index do |n, i|
    have[(k = target - n)] ? (return [have[k], i]) : have[n] = i
  end
end
