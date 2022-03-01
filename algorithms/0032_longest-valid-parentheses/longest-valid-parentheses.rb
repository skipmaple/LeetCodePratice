# @param {String} s
# @return {Integer}
# def longest_valid_parentheses(s)
#   stack = []
#   res = 0
#   s.size.times do |i|
#     tmp_s = s[i..-1]
#     tmp_stack = []
#     tmp_res = 0
#     tmp_s.size.times do |j|
#       if !tmp_stack.empty? && tmp_s[j] == ')' && tmp_stack.last == '('
#         tmp_stack.pop
#         tmp_res += 2
#       else
#         stack.push(s[i])
#       end
#     end
#
#   end
#
#   res
# end

def longest_valid_parentheses(s)
  max_ans = 0
  stack = []
  stack << -1
  s.length.times do |i|
    if s[i] == '('
      stack << i
    else
      stack.pop
      if stack.empty?
        stack << i
      else
        max_ans = [max_ans, i - stack[-1]].max
      end
    end
  end
  max_ans
end
