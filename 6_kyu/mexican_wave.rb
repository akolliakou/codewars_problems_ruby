# 6 kyu

# In this simple Kata your task is to create a function that turns a string into 
# a Mexican Wave. You will be passed a string and you must return that string in 
# an array where an uppercase letter is a person standing up.

# The input string will always be lower case but maybe empty. 

# If the character in the string is whitespace then pass over it as if it was 
# an empty seat.

def wave(str)
  wave = []

  str.length.times do |time|
    word = ''
    str.chars.each_with_index do |char, idx|
      if idx == time
        word << char.upcase
      else
        word << char
      end
    end
    wave << word
  end

  wave.select{ |word| word.chars.any?{ |char| /[A-Z]/.match(char)}}
end

#SECOND APPROACH

def wave(str)
  arr = []
  new_str = ''
  str.length.times do |n|
    str.chars.each_with_index { |el, i| new_str << ((i == n && el != ' ') ? (el.upcase!) : (el)) }
    arr << new_str   
    new_str = '' 
  end
  arr.select{ |el| el != str }
end