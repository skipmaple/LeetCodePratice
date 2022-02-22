# frozen_string_literal: true

def two_sum(nums, target)
  h = {}
  nums.each_with_index do |n, i|
    return [i, h[target - n]] if h.keys.include?(target - n)

    h[n] = i
  end
end
