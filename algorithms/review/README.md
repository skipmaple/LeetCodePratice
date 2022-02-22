# 第一次复习总结(1到15题)

## 1.two_sum

h{num} = index

key是number

搞混了


## 15.three_sum

```rb
left += 1 while nums[left] == nums[left + 1]
right += 1 while nums[right] == nums[right - 1]
```
写成了
```rb
left += 1 if nums[left] == nums[left + 1]
right += 1 if nums[right] == nums[right - 1]
```

## 2.add_two_numbers

添加剩余节点时使用**递归方法** `res.next = add_two_nums(l1||l2, ListNode.new(carry))`
忘记怎么加了

## 3.longest_substring_without_repeating_characters

这道题没有记住解法！！

```rb
while right+1 < s.size
  if s[left..right].include?(right+1)
    left += 1 # 其实可以一直循环
  else
    right += 1
  end
  
  tmp_len = right - left + 1
  max_len = tmp_len > max_len ? tmp_len : max_len
end
```

## 4.median-of-two-sorted-arrays

刚刚看懂，还需要多写！！

