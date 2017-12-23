require 'prime'

class Sieve
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def primes
    Prime.take_while { |num| num <= number }
  end
end

module BookKeeping
  VERSION = 1
end
