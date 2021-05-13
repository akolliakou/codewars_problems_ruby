# 6 kyu

# Find the missing letter

# Write a method that takes an array of consecutive (increasing) letters as 
# input and that returns the missing letter in the array.
# You will always get an valid array. And it will be always exactly one 
# letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.
# Example:
# ['a','b','c','d','f'] -> 'e' 

# ['O','Q','R','S'] -> 'P'

# ["a","b","c","d","f"] -> "e"

# ["O","Q","R","S"] -> "P"(Use the English alphabet with 26 letters!)


def missing_letter(arr)
  ((arr[0]..arr[-1]).to_a - arr).join
end


p missing_letter(['a','b','c','d','f']) == 'e' 
p missing_letter(['O','Q','R','S']) == 'P'
p missing_letter(["a","b","c","d","f"]) == "e"
p missing_letter(["O","Q","R","S"]) == "P"


