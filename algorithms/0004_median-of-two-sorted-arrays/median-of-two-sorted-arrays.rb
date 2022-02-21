# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  combine = (nums1 + nums2).sort
  # puts combine
  if combine.size.even?
    index1 = combine.size / 2 - 1
    index2 = combine.size / 2
    # puts [index1, index2]
    res = (combine[index1] + combine[index2]).to_f / 2
  else
    index = (combine.size.to_f / 2).to_i
    res = combine[index].to_f
  end
  res
end

# 输入：nums1 = [1,3], nums2 = [2]
# 输出：2.00000
# 解释：合并数组 = [1,2,3] ，中位数 2

def get_kth_element(nums1, nums2, k)
  index1 = 0
  index2 = 0

  loop do
    return nums2[index2 + k - 1] if index1 == nums1.size
    return nums1[index1 + k - 1] if index2 == nums2.size
    return [nums1[index1], nums2[index2]].min if k == 1

    half = k / 2
    new_index1 = [index1 + half, nums1.size].min - 1
    new_index2 = [index2 + half, nums2.size].min - 1
    pivot1 = nums1[new_index1]
    pivot2 = nums2[new_index2]
    if pivot1 <= pivot2
      k -= new_index1 - index1 + 1
      index1 = new_index1 + 1
    else
      k -= new_index2 - index2 + 1
      index2 = new_index2 + 1
    end
  end
end

def find_median_sorted_arrays(nums1, nums2)
  len = nums1.size + nums2.size

  if len.even?
    mid_index1 = len / 2 - 1
    mid_index2 = len / 2
    (get_kth_element(nums1, nums2, mid_index1 + 1) + get_kth_element(nums1, nums2, mid_index2 + 1)) / 2.0
  else
    mid_index = len / 2
    get_kth_element(nums1, nums2, mid_index + 1).to_f
  end
end
