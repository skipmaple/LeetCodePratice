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
#
# bfs
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

# dfs
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

def bubble_sort(arr)
  arr = arr.dup
  max = arr.size - 1

  (0..max).each do |i|
    (i + 1..max).each do |j|
      if arr[i] > arr[j]
        tmp = arr[i]
        arr[i] = arr[j]
        arr[j] = tmp
      end
    end
  end

  arr
end

# 二叉树的层序遍历
#
# bfs
def level_order(root)
  res = []
  queue = Queue.new
  queue.push(root)
  while (size = queue.size) > 0
    level_res = []
    size.times do
      tr = queue.shift
      level_res << tr.val
      queue.push(tr.left) if tr.left
      queue.push(tr.right) if tr.right
    end
    res << level_res
  end
  res
end

# dfs
def level_order(root)
  res = []
  dfs(root, 0, res)
  res
end

def dfs(root, step, res)
  if root
    res[step] = [] unless res[step]
    res[step] << root.val
    dfs(root.left, step + 1, res)
    dfs(root.right, step + 1, res)
  end
end

def medium_order(root, res = [])
  medium_order(root.left, res)
  res << root.val
  medium_order(root.right, res)
end

def start_order(root, res = [])
  res << root.val
  start_order(root.left, res)
  start_order(root.right, res)
end

