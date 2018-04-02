# word_count.rb

class Phrase
  def initialize(phrase)
    @phrase = phrase.downcase.gsub(/(\W* +\W*|\W+\z|,)/, ' ').split(' ')
  end
  
  def word_count
    counts = Hash.new(0)
    @phrase.each { |word| counts[word] += 1 }
    counts
  end
end