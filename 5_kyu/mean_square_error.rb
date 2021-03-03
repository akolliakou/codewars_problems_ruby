# 5 Kyu

# Complete the function that accepts two integer arrays of equal length 

# compares the value each member in one array to the corresponding member in the other

# squares the absolute value difference between those two values and returns the average of 
# those squared absolute value difference between each member pair.

# Examples[1, 2, 3], [4, 5, 6]       -->  9  because (9 + 9 + 9) / 3

# [10, 20, 10, 2], [10, 25, 5, -2] --> 16.5 because (0 + 25 + 25 + 16) / 4

# [-1, 0], [0, -1]         -->  1  because (1 + 1) / 2

def square(num)
  num ** 2
end

def average(arr, num)
  num / arr.length.to_f
end

def solution(arr1, arr2)
  counter = 0
  difference = 0

  until counter == arr1.length
    difference += square((arr1[counter] - arr2[counter]).abs)
    counter += 1
  end

  average(arr1, difference)
end

#SECOND APPROACH
def difference(arr1, arr2)
  abs_difference = []
  counter = 0

  until counter == arr1.length
    abs_difference << (arr1[counter] - arr2[counter]).abs
    counter += 1
  end

  abs_difference
end

def square(arr1, arr2)
  difference_arr = difference(arr1, arr2)
  difference_arr.map{ |int| int * int }
end

def solution(arr1, arr2)
  square_arr = square(arr1, arr2)
  square_arr.sum / square_arr.length.to_f
end

p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1