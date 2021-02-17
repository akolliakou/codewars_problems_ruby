# 6 kyu

# Given a string of integers, return the number of odd-numbered substrings 
# that can be formed.
# For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, 
# a total of 7 numbers.
# solve("1341") = 7. 

def substring(str)
  substrings_arr = []

  0.upto(str.length - 1) do |idx|
    1.upto(str.length - idx) do |length|
      substrings_arr << str[idx, length]
    end
  end

  substrings_arr
end

def solve(str)
  substring_arr = substring(str)

  substring_arr.select! do |substr|
    substr.to_i.odd?
  end

  substring_arr.count
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28