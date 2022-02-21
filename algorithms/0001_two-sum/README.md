# [1. Two Sum](https://leetcode.com/problems/two-sum/)

## 题目

给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。

你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。

Example:

```text
Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
```

## 解题思路

```
a + b = target
```

也可以看成是

```
a = target - b
```

在`map[整数]整数的序号`中，可以查询到a的序号。这样就不用嵌套两个for循环了。


## Need To Do

- [x] 搞清楚ruby spec 流程，用spec做测试

- [x] 暴力法

- [x] 递归法

进阶：你可以想出一个时间复杂度小于 O(n2) 的算法吗？-- 用hash存储 h[v] = index
