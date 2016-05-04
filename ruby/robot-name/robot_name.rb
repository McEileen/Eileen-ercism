class Robot
  attr_reader :name

  def initialize
    set_name
  end

  def set_name
    @name = (0...2).map { (65 + rand(26)).chr }.join + (rand 100..999).to_s
  end

  def reset
    set_name
  end

end