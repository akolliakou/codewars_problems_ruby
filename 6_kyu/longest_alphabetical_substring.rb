# 6 kyu

# Find the longest substring in alphabetical order.
# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" 
# is "aaaabbbbctt".
# There are tests with strings up to 10 000 characters long so your code 
# will need to be efficient.
# The input will only consist of lowercase characters and will be at least 
# one letter long.
# If there are multiple solutions, return the one that appears first.

def substrings(str)
  substrings_arr = []
  
  0.upto(str.length - 1) do |idx|
    1.upto(str.length - idx) do |length|
      substrings_arr << str[idx, length]
      end
    end
  
  substrings_arr.select{ |substr| substr.chars == substr.chars.sort }
end

def longest(str)
  substrings_arr = substrings(str)
  
  substrings_arr.max_by{ |substr| substr.length}
end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'