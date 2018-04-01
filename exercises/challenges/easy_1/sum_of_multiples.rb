# sum_of_multiples.rb

class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers.empty? ? [3, 5] : numbers
  end

  def self.to(limit)
    SumOfMultiples.new.to(limit)
  end

  def to(limit)
    return 0 if limit <= 1
    multiples = []
    @numbers.each do |num|
      multiples << [*num..limit-1].select { |n| n % num == 0 }
    end
    multiples.flatten.uniq.inject(&:+)
  end
end
