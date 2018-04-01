# anagram.rb

class Anagram
  def initialize(word)
    @match_word = word.downcase
  end
  
  def letters(word)
    word.downcase.chars.sort
  end
  
  def same_letters?(word)
    letters(word) == letters(@match_word)
  end
  
  def different_words?(word)
    word.downcase != @match_word
  end
  
  def is_anagram?(word)
    same_letters?(word) && different_words?(word)
  end
  
  def match(list)
    list.select { |word| is_anagram?(word) }
  end
end
