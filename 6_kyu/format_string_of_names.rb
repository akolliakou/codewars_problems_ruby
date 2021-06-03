# Given: an array containing hashes of names

# Return: a string formatted as a list of names separated by commas except for the last two names, 
# which should be separated by an ampersand.
# Example:
# list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])# returns 'Bart, Lisa & Maggie'
# list([ {name: 'Bart'}, {name: 'Lisa'} ])# returns 'Bart & Lisa'
# list([ {name: 'Bart'} ])# returns 'Bart'
# list([])# returns ''Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.

def names(arr)
  names_arr = []
  arr.each do |hsh|
    names_arr << hsh[:name]
  end  names_arr
end

def list(arr)
  names_arr = names(arr)
  case names_arr.length
  when 1
    "#{names_arr[0]}"
  when 2
    "#{names_arr[0]} & #{names_arr[1]}"
  else
    "#{names_arr[0..-2].join(", ")} & #{names_arr[-1]}"
  end
end

p list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}]) == 'Bart, Lisa, Maggie, Homer & Marge'
p list([{name: 'Bart'},{name: 'Lisa'}]) == 'Bart & Lisa'p list([{name: 'Bart'}]) == 'Bart'