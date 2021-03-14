# 6 kyu

# Given an integer n, find the maximal number you can obtain by deleting exactly 
# one digit of the given number.
# Example

# For n = 152, the output should be 52;
# For n = 1001, the output should be 101.

# Input/Output

# [input] integer n
# Constraints: 10 ≤ n ≤ 1000000.
# [output] an integer

def delete_digit(int)
  array = int.to_s.chars

  digit_combo =  array.combination(array.length - 1).to_a

  digit_combo.map! do |subarr|
    subarr.join.to_i
  end

  digit_combo.max
end

p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1