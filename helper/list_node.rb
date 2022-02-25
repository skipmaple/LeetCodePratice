# USAGE
# 1. generate list by array
# the_list = ListNode.generate([1,2,3])
# 2. traverse
# the_list.traverse   # => 1 -> 2 -> 3
# ListNode.generate(['a','b','c']).traverse  # => a -> b -> c

class ListNode
  attr_accessor :val, :next

  class << self
    def generate(array)
      array.map! { |v| ListNode.new(v) }
      array.length.times { |i| array[i].next = array[i + 1] }
      array.first
    end
  end

  def initialize(value = 0)
    @val = value
    @next = nil
  end

  def to_s
    "#{@val}"
  end

  def traverse
    print @val
    print ' -> ' if self.next
    self.next.traverse if self.next
  end

  def to_a(res = [])
    res << @val
    return res unless self.next

    self.next.to_a(res)
  end
end
