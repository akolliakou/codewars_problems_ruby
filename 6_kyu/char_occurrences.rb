# 6 kyu

# Write a method that takes a string as an argument and groups the number of 
# time each character appears in the string as a hash sorted by the highest 
# number of occurrences.

# The characters should be sorted alphabetically e.g:

# get_char_count("cba") => {1=>["a", "b", "c"]}

# You should ignore spaces, special characters and count uppercase 
# letters as lowercase ones.

def get_char_count(str)
  lower_str = str.downcase.delete("^a-z0-9").chars
  count_hsh = {}

  lower_str.uniq.each do |char|
    if count_hsh.include?(lower_str.count(char))
      count_hsh[lower_str.count(char)] << char
    else
      count_hsh[lower_str.count(char)] = [char]
    end
  end

  count_hsh.sort.reverse.each{ |k, v| v.sort! }.to_h
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}