# 7 kyu

# Return substring instance count

# Complete the solution so that it returns the number of times the search_text is found within the full_text.

# Usage example:
# solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice

# solution('aaabbbcccc', 'bbb') # should return 1

def solution(str, substring)
  substring_arr = []

  0.upto(str.length - 1) do |idx|
    1.upto(str.length - idx) do |length|
      substring_arr << str[idx, length]
    end
  end

  substring_arr.count(substring)
end

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1