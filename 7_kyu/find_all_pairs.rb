# 7 kyu

# Find all pairs

# You are given array of integers, your task will be to count all pairs in that array and return their count.
# Notes:
# Array can be empty or contain only one value; in this case return 0 If there are more pairs of a certain 
#   number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)Random 
#   ests: maximum array length is 1000, range of values in array is between 0 and 1000

# Examples

# [1, 2, 5, 6, 5, 2] --> 2...because there are 2 pairs: 2 and 5
# [1, 2, 2, 20, 6, 20, 2, 6, 2] --> 4...because there are 4 pairs: 2, 20, 6 and 2 (again)

def pairs(arr)
  unique = arr.uniq
  results = []

  arr.uniq.each do |int|
    results << arr.count(int)
  end

  results.select{ |int| int > 1 }.map{ |int| int / 2 }.sum
end

#second solution

def pairs(arr)
  count = 0
  arr.uniq.each do |int|
    count += arr.count(int) / 2
  end

  count
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0