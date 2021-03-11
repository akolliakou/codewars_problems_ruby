# 6 kyu

# Given a string of words, you need to find the highest scoring word.
# Each letter of a word scores points according to its position in 
# the alphabet: a = 1, b = 2, c = 3 etc.
# You need to return the highest scoring word as a string.
# If two words score the same, return the word that appears earliest in the 
# original string.

# All letters will be lowercase and all inputs will be valid.

def alphabet_score(string)
  alphabet = ('a'..'z').to_a
  scores = {}

  string.split.each do |word|
    word_score = 0
    word.each_char do |letter|
      word_score += alphabet.index(letter) + 1
    end
    scores[word] = word_score
  end

  scores.key(scores.values.max)
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'