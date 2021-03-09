# 5 kyu

# What is an anagram? Well, two words are anagrams of each other if they both contain 
# the same letters. 

# For example:
# 'abba' & 'baab' == true
# 'abba' & 'bbaa' == true
# 'abba' & 'abbba' == false
# 'abba' & 'abca' == false

# Write a function that will find all the anagrams of a word from a list. You will be 
# given two inputs a word and an array with words. You should return an array of all 
# the anagrams or an empty array if there are none. 

def anagrams(str, arr)
  arr.select{ |word| str.chars.sort == word.chars.sort}
end

#SECOND APPROACH
def anagrams(str, arr)
  anagrams_arr = []
  sorted_str = str.chars.sort.join

  arr.each do |word|
    if word.chars.sort.join == sorted_str
      anagrams_arr << word
    end
  end

  anagrams_arr
end

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy', 'lacer']) == []