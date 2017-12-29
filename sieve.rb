class Sieve
  attr_reader :limit, :prime_numbers

  def initialize(limit)
    @limit = limit
    @prime_numbers = []
  end

  def primes
    recursive_primes((2..limit).to_a)
  end

  def recursive_primes(numbers)
    if numbers.empty?
      prime_numbers
    else
      prime_numbers << numbers.shift
      recursive_primes(
        numbers - (prime_numbers.last**2..limit).step(prime_numbers.last).to_a
      )
    end
  end
end

module BookKeeping
  VERSION = 1
end
