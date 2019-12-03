# Develop your proram to handle multiple consonants at the start of words.
#
# The rule is:
# If the word starts with one or more consonants, move them to the end.
# e.g. cram     -> amcray
#      sprinkle -> inklespray
#
# Still assume the words are lowercase.

def pig_latin(word)
  check_vowel = %w(a e i o u).include?(word[0])
  if check_vowel == true
    word + 'way'
  else
    word_array = word.chars.to_a
    until word_array[0].to_s == "a" || word_array[0].to_s == "e" || word_array[0].to_s == "i" || word_array[0].to_s == "o" || word_array[0].to_s == "u"
      word_array << word_array[0]
      word_array.shift
    end
    word_array.join + 'ay'
  end
end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('cram'), 'amcray')
assert_equal(pig_latin('sprinkle'), 'inklespray')
assert_equal(pig_latin('dog'), 'ogday')
assert_equal(pig_latin('up'), 'upway')
