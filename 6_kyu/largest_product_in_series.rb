# 6 kyu

# Complete the greatestProduct method so that it'll find the greatest product 
# of five consecutive digits in the given string of digits.

# For example:
# greatestProduct("123834539327238239583") // should return 3240

# The input string always has more than five digits.

def substrings(str)
  substrings_arr = []

  0.upto(str.length - 1) do |idx|
    1.upto(str.length - idx) do |length|
      substrings_arr << str[idx, length]
    end
  end

  substrings_arr.select{ |substr| substr.length == 5}
end

def greatest_product(str)
  substrings_arr = substrings(str)

  int_subarrays = substrings_arr.map do |substr|
    substr.chars.map do |char|
      char.to_i
    end
  end

  int_subarrays.map{ |subarr| subarr.reduce(:*) }.max
end

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0