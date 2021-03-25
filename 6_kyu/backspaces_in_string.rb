# 6 kyu

# Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"
# Your task is to process a string with "#" symbols.

# Examples

# "abc#d##c"   ==> "ac"

# "abc##d######" ==> ""

# "#######"    ==> ""

# ""       ==> ""

def clean_string(str)
  clean_str = ""

  str.chars do |char|
    if char == "#"
      clean_str.chop!
    else
      clean_str << char
    end
  end

  clean_str
end

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""