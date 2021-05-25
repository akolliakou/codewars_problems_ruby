# 6 kyu

# For a given nonempty string s find a minimum substring t and the maximum number k, 
# such that the entire string s is equal to t repeated k times. The input string consists of lowercase 
# latin letters. Your function should return a tuple (in Python) (t, k) or an array (in Ruby and JavaScript) 
# [t, k]

# Example #1:
# for string
# s = "ababab"the answer is
# ["ab", 3]

# Example #2:
# for string
# s = "abcde"the answer is
# because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.

def substrings(str)
  substrings_arr = []

  0.upto(str.length - 1) do |idx|
    1.upto(str.length - idx) do |length|
      substrings_arr << str[idx, length]
    end
  end

  substrings_arr
end

def f(str)
  substrings_arr = substrings(str)
  results = []

  substrings_arr.each do |substr|
    if substr * (str.length / substr.length) == str
      return [substr, (str.length / substr.length)]
    end
  end
end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]