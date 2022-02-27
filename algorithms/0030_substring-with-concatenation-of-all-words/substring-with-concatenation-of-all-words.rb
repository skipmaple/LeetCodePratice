# @param {String} s
# @param {String[]} words
# @return {Integer[]}
#

def find_substring(s, words)
  word_len = words[0].size
  total_word_len = word_len * words.size
  res = []
  i = 0

  word_count_hash = {}
  words.each do |word|
    word_count_hash[word] ? word_count_hash[word] += 1 : word_count_hash[word] = 1
  end

  while (i + word_len - 1) < s.size && s.size - i >= total_word_len
    str = s.slice(i..(i + total_word_len - 1))
    res << i if string_to_count_hash(str, word_len) == word_count_hash
    i += 1
  end
  res

end

def string_to_count_hash(str, word_len)
  i = 0
  count_hash = {}
  while i <= str.size - word_len
    s = str.slice(i..(i + word_len - 1))
    count_hash[s] ? count_hash[s] += 1 : count_hash[s] = 1
    i += word_len
  end

  count_hash
end
