# luhn.rb
class Luhn
  attr_reader :number

  def initialize(num)
    @number = num
  end

  def self.create(num)
    luhn = new(num * 10)
    luhn.valid? ? luhn.number : luhn.number + 10 - luhn.remainder
  end

  def addends
    addends_array = number.to_s.chars.map(&:to_i)

    addends_array.reverse
                 .map.with_index { |int, idx| idx.odd? ? int * 2 : int }
                 .reverse
                 .map { |int| int >= 10 ? int - 9 : int }
  end

  def checksum
    addends.reduce(&:+)
  end

  def valid?
    remainder.zero?
  end

  def remainder
    checksum % 10
  end
end
