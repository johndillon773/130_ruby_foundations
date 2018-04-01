# anagram.rb

class Anagram
  def initialize(word)
    @word = word.downcase
  end
  
  def anagram?(word)
    word.downcase != @word &&
    word.downcase.chars.sort == @word.chars.sort
  end
  
  def match(list)
    list.select { |word| anagram?(word) }
  end
end
