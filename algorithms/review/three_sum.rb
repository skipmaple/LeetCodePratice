def three_sum(nums)
  nums.sort!
  len = nums.size
  res = []
  nums.each_with_index do |n, i|
    return res if n.positive?
    next if i.positive? && n == nums[i - 1]

    l = i + 1
    r = len - 1

    while l < r
      if (k = n + nums[l] + nums[r]).zero?
        res << [n, nums[l], nums[r]]
        l += 1 while nums[l] == nums[l + 1]
        r -= 1 while nums[r] == nums[r - 1]
        l += 1
        r -= 1
      elsif k.positive?
        r -= 1
      else
        l += 1
      end
    end
  end
  res
end

def three_sum(nums)
  nums.sort!
  res = []
  nums.each_with_index do |n, i|
    return res unless n <= 0
    next if i > 0 && n == nums[i-1]

    l = i+1
    r = nums.size-1
    while l < r
      if (k=n+nums[l]+nums[r]) == 0
        res << [n, nums[l], nums[r]]
        l += 1 while nums[l+1] == nums[l]
        r -= 1 while nums[r-1] == nums[r]
        l += 1
        r -= 1
      elsif k > 0
        r -= 1
      else
        l += 1
      end
    end
  end
  res
end

def three_sum(nums)
  nums.sort!
  res = []
  nums.each_with_index do |n, i|
    return res unless n <= 0
    next if i > 0 && n == nums[i-1]

    l = i+1
    r = nums.size - 1
    while l < r
      if (k = n+nums[l]+nums[r]) == 0
        res << [n, nums[l], nums[r]]
        l += 1 while nums[l] == nums[l+1]
        r -= 1 while nums[r] == nums[r-1]
        l += 1
        r -= 1
      elsif k < 0
        l += 1
      else
        r -= 1
      end
    end
  end
  res
end
