# 6 kyu

# Mothers arranged a dance party for the children in school. At that party, 
# there are only mothers and their children. All are having great fun on the dance 
# floor when suddenly all the lights went out. It's a dark night and no one can see 
# each other. But you were flying nearby and you can see in the dark and have 
# ability to teleport people anywhere you want.
# Legend:-Uppercase letters stands for mothers, lowercase stand for their children, 
# .e. "A" mother's children are "aaaa".-Function input: String contains only letters, 
# uppercase letters are unique.

# Task:Place all people in alphabetical order where Mothers are followed by their 
# children, i.e. "aAbaBb" => "AaaBbb".

def find_children(str)  
  str_chars = str.downcase.chars  results = []
  str_chars.uniq.each do |char|
    temp = ''
    temp << char * str_chars.count(char)
    results << temp
  end
  results.sort.map(&:capitalize).join
end

p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""