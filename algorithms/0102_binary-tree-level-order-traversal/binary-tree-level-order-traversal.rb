# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[][]}

# 广度优先算法
def level_order(root)
  return [] unless root

  res = []
  queue = Queue.new
  queue.push(root)
  while (size = queue.size) > 0
    level_res = []
    size.times do
      tr = queue.shift
      queue << tr.left if tr.left
      queue << tr.right if tr.right
      level_res << tr.val
    end
    res << level_res
  end

  res
end

# 深度优先算法
def level_order(root)
  return [] unless root
  res = []
  dfs(root, 0, res)
  res
end

def dfs(root, step, res)
  if root
    res[step] = [] unless res[step]
    res[step].push(root.val)
    dfs(root.left, step + 1, res)
    dfs(root.right, step + 1, res)
  end
end
