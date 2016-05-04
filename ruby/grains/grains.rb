class Grains
  CELLS_ON_BOARD = 64
  def self.square(cell)
    2**(cell - 1)
  end

  def self.total
    2**CELLS_ON_BOARD - 1
  end

end