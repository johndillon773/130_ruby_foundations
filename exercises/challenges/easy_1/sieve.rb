# sieve.rb

class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    sequence = {}
    2.upto(@limit) { |n| sequence[n] = true}

    2.upto(Math.sqrt(@limit)) do |num|
      sequence.each_key do |k|
        sequence[k] = false if (k % num).zero? && k != num
      end
    end

    sequence.select { |_,v| v }.keys
  end
end