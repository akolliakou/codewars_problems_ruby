# Your task is to Reverse and Combine Words. 

# Input: String containing different "words" separated by spaces 

# 1. More than one word? Reverse each word and combine first with second, 
# third with fourth and so on... (odd number of words => last one stays alone, 
#   but has to be reversed too)
# 2. Start it again until there's only one word without spaces
# 3. Return your result… 

def reverse(str)
  str.chars.reverse.join
end

def reverse_and_combine_text(str)
  strings_arr = str.split

  until strings_arr.length == 1
    strings_arr.map! do |word|
      reverse(word)
    end
    strings_arr = strings_arr.each_slice(2).to_a.map(&:join)
  end

  strings_arr.join
end

#SECOND APPROACH
def reverse_and_combine_text(str)
  words_arr = str.split

  while words_arr.length > 1
    words_arr = words_arr.map(&:reverse)
    words_arr = words_arr.each_slice(2).map(&:join)
  end

  words_arr.join
end

p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12 44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"