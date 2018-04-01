# trinary.rb

class Trinary
  def initialize(number)
    @number = number
  end

  def to_decimal
    return 0 if @number.match(/\D|[3-9]/)
    @number
      .chars
      .map(&:to_i)
      .reverse
      .each_with_index
      .map { |num, idx| num * (3 ** idx) }
      .reduce(&:+)
  end
end