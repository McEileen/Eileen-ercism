class Fixnum
  VERSION = 1
  def to_roman
    modern_roman_numeral = ""
    arabic_number = self
    hash_of_arabic_numbers = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
      9 => "IX",
      5 => "V",
      4 => "IV",
      1 => "I"
    }

    hash_of_arabic_numbers.each do |key, value|
      if arabic_number / key >= 1
        times = arabic_number / key
        roman_numeral = value * times
        arabic_number = arabic_number - (times * key)
        modern_roman_numeral << roman_numeral
      end
    end
    modern_roman_numeral
  end
end