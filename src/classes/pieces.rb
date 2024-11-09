class Pieces
  attr_accessor :coor, :color

  # Constructor
  def initialize(coor, color)
    @coor = coord
    @color = color
  end

  # Public Methods
  def moveTo(coord)
    @coor = coord
  end
end