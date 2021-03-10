# 6 kyu

# Complete the solution so that it splits the string into pairs of two characters. 
# If the string contains an odd number of characters then it should replace the 
# missing second character of the final pair with an underscore ('_').

def solution(str)
  str_chars = str.chars
  str_chars.length.odd? ? str_chars << '_' : str_chars
  str_chars.each_slice(2).to_a.map(&:join)
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []