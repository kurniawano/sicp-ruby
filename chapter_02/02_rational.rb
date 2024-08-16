require_relative 'pair'

class Fraction
  attr_reader :numer, :denom

  def initialize(n, d)
    @numer, @denom = n, d
  end

  def to_s
    "#{@numer} / #{@denom}"
  end
end

one_half = Fraction.new 1, 2
puts one_half

