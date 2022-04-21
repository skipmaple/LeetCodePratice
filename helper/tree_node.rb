# USAGE
# 1. generate by array, use nil instead of nil node
#   the_tree = TreeNode.generate([1,nil,2,3,4]) # -->  1
#                                                       \
#                                                        2
#                                                       / \
#                                                      3   4
# 2. traverse
#   the_tree.pre_order #=> 1 2 3 4
#   the_tree.in_order  #=> 1 3 2 4

class TreeNode
  attr_accessor :val, :left, :right

  class << self
    def generate(arr)
      return if arr.empty?
      cur_level, next_level = [], [root = TreeNode.new(arr.shift)]
      while arr.any?
        if cur_level.any?
          tree = cur_level.shift
          left, right = arr.shift, arr.shift
          next_level << (tree.left = TreeNode.new(left)) if left != nil
          next_level << (tree.right = TreeNode.new(right)) if right != nil
        else
          cur_level, next_level = next_level, []
        end
      end
      root
    end
  end

  def initialize(value)
    @val = value
    @left, @right = nil, nil
  end

  # 先序
  def pre_order
    puts @val
    left.pre_order if left
    right.pre_order if right
  end

  # 中序
  def in_order
    left.in_order if left
    puts @val
    right.in_order if right
  end

  # 后序
  def post_order
    left.post_order if left
    right.post_order if right
    puts @val
  end

  def level_order
    queue = [self]
    while queue.size > 0
      tr = queue.shift
      queue << tr.left if tr.left
      queue << tr.right if tr.right
      puts tr.val
    end
  end

end
