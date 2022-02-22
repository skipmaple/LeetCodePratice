# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  len = nums1.size + nums2.size
  if len.even?
    index1 = len / 2
    index2 = len / 2 + 1
    n1 = find_kth_element(nums1, nums2, index1)
    n2 = find_kth_element(nums1, nums2, index2)
    res = (n1 + n2) / 2.0
  else
    index = len / 2 + 1
    res = find_kth_element(nums1, nums2, index)&.to_f
  end
  res
end

def find_kth_element(nums1, nums2, k)
  start1 = 0
  start2 = 0

  loop do
    return nums2[start2 + k - 1] if start1 == nums1.size
    return nums1[start1 + k - 1] if start2 == nums2.size
    return [nums1[start1], nums2[start2]].min if k == 1

    half = k / 2
    new_start1 = [start1 + half, nums1.size].min - 1
    new_start2 = [start2 + half, nums2.size].min - 1
    if nums1[new_start1] <= nums2[new_start2]
      k -= new_start1 + 1 - start1
      start1 = new_start1 + 1
    else
      k -= new_start2 + 1 - start2
      start2 = new_start2 + 1
    end
  end

end
