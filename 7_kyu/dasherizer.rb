# Write a method that takes in a number and returns a string, placing a dash in between odd digits.

def dasherizer(num)
  digits = num.digits.reverse
  digit_str = "#{digits[0]}"
  counter = 1

  until counter == digits.length
    if digits[counter].odd? && digit_str[-1].to_i.odd?
      digit_str << "-" << digits[counter].to_s
    else
      digit_str << digits[counter].to_s
    end
    counter += 1
  end

  digit_str
end

p dasherizer(2112) == '21-12'
p dasherizer(201105742) == '201-105-742'
p dasherizer(123456789) == '123456789'
p dasherizer(21121) == '21-121'