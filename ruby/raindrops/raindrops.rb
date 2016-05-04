class Raindrops
  VERSION = 1
  STANDARD = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(input)
    output = []
    STANDARD.each do |num, word|
      output << word if input % num == 0
    end
    if output.empty?
      input.to_s
    else
      output.join
    end
  end

end