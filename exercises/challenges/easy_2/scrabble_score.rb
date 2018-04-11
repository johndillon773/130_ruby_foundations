# scrabble_score.rb

# test cases
# -empty string
# -white space
# -case insensitive
#
# data structures
# -hash for point key
# -array to iterate through letters
#
# algorithm/approach
# - assign variable score = 0
# - downcase string
# - split string into array of characters
# - iterate over characters
#   - increment score by point_value(letter)
# -return score

class Scrabble
  def initialize(word)
    @word = word
  end

  def point_value(letter)
    case letter
    when 'a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't' then  1
    when 'd', 'g'                                          then  2
    when 'b', 'c', 'm', 'p'                                then  3
    when 'f', 'h', 'v', 'w', 'y'                           then  4
    when 'k'                                               then  5
    when 'j', 'x'                                          then  8
    when 'q', 'z'                                          then 10
    else                                                         0
    end
  end

  def score
    return 0 if @word.nil? || @word.empty?

    letters = @word.downcase.chars
    letters.map { |letter| point_value(letter) }
           .reduce(:+)
  end
  
  def self.score(word)
    new(word).score
  end
end
