# @param {String} s
# @return {Boolean}
def is_valid(s)
  # push_arr = %w|( [ {|
  # pop_arr = %w|) ] }|
  h = {
    '}' => '{',
    ']' => '[',
    ')' => '('
  }

  stack = []
  s.size.times do |i|
    if h.value?(s[i])
      stack.push(s[i])
    else
      return false unless stack.pop == h[s[i]]
    end
  end
  stack.empty?

end
