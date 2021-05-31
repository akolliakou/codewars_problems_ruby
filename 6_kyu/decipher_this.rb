# 6 kyu

# You are given a secret message you need to decipher. Here are the things you 
# need to know to decipher it:
# For each word:
# the second and the last letter is switched (e.g. Hello becomes Holle)the first 
# letter is replaced by its character code (e.g. H becomes 72)Note: there are no 
# special characters used, only letters and spaces

# Examples

# decipherThis('72olle 103doo 100ya'); // 'Hello good day'

# decipherThis('82yade 115te 103o'); // 'Ready set go'=end

def converter(arr)
  arr.join.to_i.chr
end

def swap(arr)
  arr[0], arr[-1] = arr[-1], arr[0]
  arr.join
end

def decipher_this(str)
  str_words = str.split
  results = []

  str_words.each do |word|
    if word.chars.all?{ |char| /[0-9]/.match(char) }
      results << word.to_i.chr
    else
      word = word.chars.partition{ |char| /[0-9]/.match(char) }
      numbers = word[0]
      letters = word[1]
      results << converter(numbers) + swap(letters)
    end
  end

  results.join(" ")
end

#SECOND APPROACH
def decipher_this(str)
  digits = ("0".."9").to_a
  str_arr = str.split
  results = []

  str_arr.each do |word|
    digit_str = ""
    letter_str = ""
    word.chars.each do |char|
      if digits.include?(char)
        digit_str << char
      else
        letter_str << char
      end
    end
  results << digit_str.to_i.chr + letter_str
  end

  results.map do |word|
    if word.length == 1
      word
    else
      word[1], word[-1] = word[-1], word[1]
      word
    end
  end.join(" ")
end

p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"