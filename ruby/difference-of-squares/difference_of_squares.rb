class Squares
  VERSION = 1

  attr_reader :num

  def initialize(num)
    @num = num
  end

  def square_of_sums
    sum = (1..num).reduce(:+)
    sum**2
  end

  def sum_of_squares
    squares = (1..num).map {|i| i*i}
    squares.reduce(:+)
  end

  def difference
    square_of_sums - sum_of_squares
  end

end