class Pieces
  attr_accessor :coor, :color

  # Constructor
  def initialize(coor, color)
    @coor = coord
    @color = color
  end

  # Public Methods
  def moveTo(coord) # i.e {1,4}
    @coor = coord
  end
end