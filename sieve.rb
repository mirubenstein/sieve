require 'prime'

class Sieve
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def primes
    0.upto(number).select { |num| Prime.prime?(num) }
  end
end

module BookKeeping
  VERSION = 1
end
