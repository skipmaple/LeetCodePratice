# two_sum
def two_sum(nums, target)
  have = {}
  nums.each_with_index { |n, i| have[(k = target - n)] ? (return [have[k], i]) : have[n] = i }
end

# three_sum
def three_sum(nums)
  nums.sort!
  res = []
  nums.each_with_index do |n, i|
    return res if n > 0
    next if i > 0 && n == nums[i - 1]
    l = i + 1
    r = nums.size - 1
    while l < r
      if (k = n + nums[l] + nums[r]) == 0
        res << [n, nums[l], nums[r]]
        l += 1 while nums[l] == nums[l + 1]
        r -= 1 while nums[r] == nums[r - 1]
        l += 1
        r -= 1
      elsif k > 0
        l -= 1
      else
        # k < 0
        r += 1
      end
    end
  end
  res
end

# tree
# bfs
def order_level(root)
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
def order_level(root)
  res = []
  dfs(root, 0, res)
  res
end

def dfs(root, depth, res)
  return unless root
  res[depth] = [] unless res[depth]
  res[depth] << root.val
  dfs(root.left, depth + 1, res)
  dfs(root.right, depth + 1, res)
end

# medium order

def medium_order(root, res = [])
  medium_order(root.left, res) if root.left
  res << root.val
  medium_order(root.right, res) if root.right
end

def two_sum(nums, target)
  have = {}
  nums.each_with_index { |n, i| have[k = (target - n)] ? return [have[k], i] : have[n] = i }
end

def two_sum(nums, target)
  nums.each_with_index do |n1, i|
    nums.each_with_index do |n2, j|
      if i != j && n1 + n2 == target
        return [i, j]
      end
    end
  end

  []
end

def three_sum(nums)
  nums.sort!
  res = []
  nums.each_with_index do |n, i|
    return unless n <= 0
    next if i > 0 && n == nums[i - 1]

    l = i + 1
    r = nums.size - 1
    while l < r
      if (k = n + nums[l] + nums[r]) == 0
        res << [n, nums[l], nums[r]]
        l += 1 while nums[l] == nums[l + 1]
        r -= 1 while nums[r] == nums[r - 1]
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

def level_order(root)
  res = []
  dfs(root, depth, res)
  res
end

def dfs(root, depth, res)
  return unless root
  res[depth] = [] unless res[depth]
  res[depth] = root.val
  dfs(root.left, depth + 1, res)
  dfs(root.right, depth + 1, res)
end

def middle_order(root, res = [])
  middle_order(root.left, res)
  res << root.val
  middle_order(root.right, res)
end
