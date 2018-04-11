# odd_words.rb

# input: string of letters, spaces, and a point
#
# output: string of letters, spaces, and a point
#
# data structures: array
#
# algorithm:
# - break string into array of words
# - iterate over array
#   - reverse odd-indexed words
# - join array with spaces
# - add point to end
# - return string

# def odd_words(sentence)
#   words = sentance.scan(/[a-z]+/i)
#   reversed_words = words.map.with_index do |word, idx|
#     idx.odd? ? word.reverse : word
#   end
#   reversed_words.join(' ') + '.'
# end

# algorithm:
# -chars into array of characters
# -create empty 'reversed sentence' array
# -create empty 'reverser' array
# -iterate over array of characters
#  -set boolean to false to keep track of odd/even
#  -for chars when odd == false
#   -check if char == \W
#     -if not, push each character to new array
#     -if so, 
#      -push space to new array
#      -toggle boolean
#  -for chars when odd == true
#   -check if char = \W
#    -if not, push chars to reverser array
#    -if so
#     -#reverse 'reverser' array
#       -reverse chars in array,
#       -push chars to new array,
#       -reset reverser array
#     -push space to new array
#     -toggle boolean
# -print characters
#


def odd_words(sentence)
  chrs = sentence.chars
  new_chrs = []
  reverse_me = []
  odd = false
  
  chrs.each do |chr|
    if odd
      if chr =~ /\W/
        reverse_me.reverse_each { |chr| new_chrs << chr }
        reverse_me = []
        odd = false
        new_chrs << chr
      else
        reverse_me << chr
      end
    else
      odd = true if chr =~ /\W/
      new_chrs << chr
    end
  end
  puts new_chrs
end

odd_words("whats the matter with kansas.")
odd_words("Hello How Are You Doing Today.")