# octal.rb

class Octal
  def initialize(number)
    @number = number
  end

  def to_decimal
    return 0 if @number.match(/\D|[8-9]/)
    @number
      .chars
      .map(&:to_i)
      .reverse
      .each_with_index
      .map { |num, idx| num * (8 ** idx) }
      .reduce(&:+)
  end
end
