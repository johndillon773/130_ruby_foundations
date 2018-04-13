# secret_handshake.rb

# input: integer or binary string
# output: array of strings

# edge cases:
# - invalid binary

# deal with input

# deal with storing commands
# - array where index == binary digit position ?

# add command to array based on binary
# reverse array if 1000

# output array

# algorithm:
# -set up commands data
#  -deal with input
#   -if integer
#    -convert to binary (#to_s(2))
#   -elsif string of digits
#    -validate as binary
#   -split into array of "1"s and "0"s
#   -reverse array
#  -iterate over reversed input array
#   -for index 1,
#    -if 0, do nothing, if 1, add command to return array

class SecretHandshake
  COMMANDS = ["wink", "double blink", "close your eyes", "jump"]
  
  def initialize(num)
    @bin_array = to_binary(num).chars.reverse
  end
  
  def to_binary(num)
    if    num.is_a? Integer  then num.to_s(2)
    elsif num.match(/[^10]/) then '0'
    else                          num
    end
  end

  def commands
    handshake = COMMANDS.select.with_index { |_, idx| @bin_array[idx] == '1' }
    @bin_array[4] == "1" ? handshake.reverse : handshake
  end
end