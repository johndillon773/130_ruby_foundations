# phone_number.rb

class PhoneNumber
  attr_reader :phone_number
  
  def initialize(input)
    input = input.gsub(/[()-. ]/, '')
    @phone_number = validate(input)
  end
  
  def to_s
    "(#{number[0..2]}) #{number[3..5]}-#{number[6..9]}"
  end
  
  def area_code
    number[0..2]
  end
  
  def number
    phone_number
  end
  
  private
  
  def validate(num)
    if num =~ /\D/
      '0000000000'
    elsif num.length == 10
      num
    elsif num.length == 11 && num[0] == '1'
      num[1..10]
    else
      '0000000000'
    end
  end
end