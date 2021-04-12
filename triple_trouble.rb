# 6 kyu

# Write a function
# triple_double(num1, num2)which takes numbers num1 and num2 and returns 1 if 
# there is a straight triple of a number at any place in num1 and also a straight 
# double of the same number in num2.
# If this isn't the case, return 0
# Examples

# triple_double(451999277, 41177722899) == 1# num1 has straight triple 999s and num2 has straight double 99s
# triple_double(1222345, 12345) == 0# num1 has straight triple 2s but num2 has only a single 2

def triples(arr1)
  triples_arr = arr1.digits.reverse.each_cons(3).to_a.select{ |arr| arr.all?{ |int| int == arr[0]}}.flatten
end

def doubles(arr2)
  doubles_arr = arr2.digits.reverse.each_cons(2).to_a.select{ |arr| arr.all?{ |int| int == arr[0]}}.flatten
end

def triple_double(arr1, arr2)
  triples_arr = triples(arr1)
  doubles_arr = doubles(arr2)

  return 1 if triples_arr.any?{ |int1| doubles_arr.any?{ |int2| int1 == int2}}
  0
end

p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1
p triple_double(451999277, 41177722899) == 1
p triple_double(1222345, 12345) == 0