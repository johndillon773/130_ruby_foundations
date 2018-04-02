# perfect_number.rb

class PerfectNumber
  def self.classify(n)
    raise RuntimeError if n < 1

    sum_of_factors = (1...n).select { |num| n % num == 0 }.reduce(&:+)
    
    if    sum_of_factors > n  then 'abundant'
    elsif sum_of_factors < n  then 'deficient'
    elsif sum_of_factors == n then 'perfect'
    end 
  end
end