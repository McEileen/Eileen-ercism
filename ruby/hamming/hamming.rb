class Hamming

  VERSION = 1

  def self.compute(first_string, second_string)

    if first_string.length != second_string.length
      fail ArgumentError, "The two strands are of different lengths"
    end

    0.upto(first_string.length).count { |idx|first_string[idx] != second_string[idx]}

  end

end