class Pangram
  VERSION = 1

  ALPHABET_HASH = {
    "a" => 0,
    "b" => 0,
    "c" => 0,
    "d" => 0,
    "e" => 0,
    "f" => 0,
    "g" => 0,
    "h" => 0,
    "i" => 0,
    "j" => 0,
    "k" => 0,
    "l" => 0,
    "m" => 0,
    "n" => 0,
    "o" => 0,
    "p" => 0,
    "q" => 0,
    "r" => 0,
    "s" => 0,
    "t" => 0,
    "u" => 0,
    "v" => 0,
    "w" => 0,
    "x" => 0,
    "y" => 0,
    "z" => 0
  }

  def self.is_pangram?(str)
    return false if str.length.zero?

    arr = str.gsub(/\s+/, "").downcase.chars
    @individ_alph_hash = ALPHABET_HASH.dup

    arr.each do |char|
      if @individ_alph_hash[char]
        @individ_alph_hash[char] += 1
      end
    end

    not @individ_alph_hash.has_value?(0)

  end

end