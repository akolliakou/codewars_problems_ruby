# 7 kyu

# Longest vowel chain

# The vowel substrings in the word codewarriors are o,e,a,io. The longest 
# of these has a length of 2. Given a lowercase string that has alphabetic 
# characters only and no spaces, return the length of the longest vowel 
# substring. Vowels are any of aeiou.

def solve(str)
  substr_arr = []

  0.upto(str.length - 1) do |idx|
    1.upto(str.length - idx) do |length|
      substr_arr << str[idx, length]
    end
  end

  final_arr = substr_arr.select do |substr|
    substr.chars.all? do |char|
      /[aeiou]/.match(char)
    end
  end

 final_arr.sort_by {|subs| subs.length}.pop.chars.count
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8