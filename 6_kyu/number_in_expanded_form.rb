# # 6 kyu

# Write Number in Expanded FormYou will be given a number and you will need to return it as a string in 
# Expanded Form. 

# For example:
# expanded_form(12); # Should return '10 + 2'

# expanded_form(42); # Should return '40 + 2'

# expanded_form(70304); # Should return '70000 + 300 + 4'

# NOTE: All numbers will be whole numbers greater than 0.

def expanded_form(num)
  digits_arr = num.digits
  results = []

  multiplier = 1
  digits_arr.each do |digit|
    results << digit * multiplier
    multiplier *= 10
  end

  results.reverse.select{ |int| int > 0 }.map(&:to_s).join(" + ")
end

#SECOND APPROACH
def expanded_form(num)
  value = 1
  results = []
  loop do
    break if num == 0
    num, remainder = num.divmod(10)
    number = value * remainder
    results << number.to_s if number != 0
    
    value *= 10
  end 
  results.reverse.join(" + ")
end

#THIRD APPROACH
def expanded_form(number)
  result = []
  number.digits.each_with_index do |digit, index|
    if digit != 0
      result << digit * 10**index
    end
  end
  result.reverse.join(' + ')
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'