class Sieve
  attr_reader :number

  def initialize(number)
    @number = number
    @primes = []
  end

  def primes
    recursive_primes((2..@number).to_a)
  end

  def recursive_primes(numbers)
    if numbers.empty?
      @primes
    else
      @primes << numbers.shift
      recursive_primes(numbers.reject { |num| (num % @primes.last).zero? })
    end
  end
end

module BookKeeping
  VERSION = 1
end
