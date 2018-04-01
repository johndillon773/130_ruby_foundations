# series

class Series
  attr_reader :series

  def initialize(series)
    @series = series.split('').map(&:to_i)
  end

  def slices(n)
    raise ArgumentError.new if n > series.size
    @series.each_cons(n).to_a
  end
end

### original implementation

# class Series

#   def initialize(series)
#     @series = series
#   end

#   def validate(n)
#     raise ArgumentError.new unless n <= @series.size
#   end

#   def slices(n)
#     validate(n)
#     result = []
#     0.upto(@series.size - n) do |idx|
#       result << @series.split('')[idx, n]
#     end
#     result.map { |slice| slice.map(&:to_i) }
#   end
# end