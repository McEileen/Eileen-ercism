class Binary
  attr_reader :binary_value
  VERSION = 1

  def initialize(binary_value)
    @binary_value = binary_value
    if binary_value.match(/[^10]/)
      raise ArgumentError.new("Your input is not a binary number.")
    end
  end

  def to_decimal
    binary_arr = binary_value.chars.map {|num| num.to_i}
    total_value = 0
    distance_from_last_digit = 0
    while binary_arr.length > 0
      value_of_current_digit = binary_arr.pop * 2**distance_from_last_digit
      total_value += value_of_current_digit
      distance_from_last_digit += 1
    end
    total_value
  end


end