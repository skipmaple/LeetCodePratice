# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)

end


# python 实现

# from typing import List
#
#
# class Solution:
#   def combinationSum(self, candidates: List[int], target: int) -> List[List[int]]:
#
#     def dfs(candidates, begin, size, path, res, target):
#       if target < 0:
#         return
#       if target == 0:
#         res.append(path)
#       return
#
#       for index in range(begin, size):
#         dfs(candidates, index, size, path + [candidates[index]], res, target - candidates[index])
#
#       size = len(candidates)
#       if size == 0:
#         return []
#       path = []
#       res = []
#       dfs(candidates, 0, size, path, res, target)
#       return res
