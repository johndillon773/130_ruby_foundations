# nth_prime.rb

class Prime

  def self.nth(n)
    raise ArgumentError.new("Must be a positive integer") if n.zero?
    @@primes = [2]
    candidate = 3
    
    loop do
      @@primes << candidate if is_prime?(candidate)
      return @@primes[n - 1] if @@primes.size >= n
      candidate += 1
    end
  end
  
  def self.is_prime?(num)
    @@primes.each do |n| 
      return false if num % n == 0
      return true if n >= Math.sqrt(num)
    end
    true
  end
end
