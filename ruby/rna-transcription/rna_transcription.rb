class Complement
  VERSION = 2

  def self.of_dna(arg)
    complement = []
    arg_arr = arg.chars
    arg_arr.each do |elem|
      if elem != 'C' && elem != 'G' && elem != 'T' && elem != 'A'
        raise ArgumentError.new
      elsif elem == 'C'
        complement << 'G'
      elsif elem == 'G'
        complement << 'C'
      elsif elem == 'T'
        complement << 'A'
      else elem == 'A'
        complement << 'U'
      end
    end
    complement.join
  end

  def self.of_rna(arg)
    complement = []
    arg_arr = arg.chars
    arg_arr.each do |elem|
      if elem != 'C' && elem != 'G' && elem != 'U' && elem != 'A'
        raise ArgumentError.new
      elsif elem == 'C'
        complement << 'G'
      elsif elem == 'G'
        complement << 'C'
      elsif elem == 'U'
        complement << 'A'
      else elem == 'A'
        complement << 'T'
      end
    end
    complement.join
  end

end