# 6 kyu

# Count letters in string

# In this kata, you've to count lowercase letters in a given string and 
# return the letter count in a hash with 'letter' as key and count as 
# 'value'. The key must be 'symbol' instead of string in Ruby and 'char' 
# instead of string in Crystal.

CHARS = ("a".."z").to_a
SYMBOLS = (:a..:z).to_a
CHAR_SYMBS = Hash[CHARS.zip(SYMBOLS)]

def letter_count(str)
  count_hash = {}

  str.chars do |char|
    if count_hash.include?(CHAR_SYMBS[char])
      count_hash[CHAR_SYMBS[char]] += 1
    else
      count_hash[CHAR_SYMBS[char]] = 1
    end
  end

  count_hash
end

p letter_count('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1})
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2})