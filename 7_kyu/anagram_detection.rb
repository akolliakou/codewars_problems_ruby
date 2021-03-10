# 7 kyu

# An anagram is the result of rearranging the letters of a word to produce a new word 
# (see wikipedia).
# Note: anagrams are case insensitive
# Complete the function to return true if the two arguments given are anagrams of each 
# other; return false otherwise.

def is_anagram(str1, str2)
  str1.chars.sort == str2.chars.sort
end

p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false