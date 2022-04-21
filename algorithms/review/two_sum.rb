# frozen_string_literal: true

def two_sum(nums, target)
  h = {}
  nums.each_with_index do |n, i|
    return [i, h[target - n]] if h.keys.include?(target - n)

    h[n] = i
  end
end

def two_sum(nums, target)
  have = {}
  nums.each_with_index { |n, i| have[k = target - n] ? (return [have[k], i]) : have[n] = i }
end

def two_sum(nums, target)
  nums.each_with_index do |m, i|
    nums.each_with_index do |n, j|
      if i != j && m + n == target
        return [i, j]
      end
    end
  end
end

