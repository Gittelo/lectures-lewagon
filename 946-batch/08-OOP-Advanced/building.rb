class Building
  attr_accessor :name, :length
  attr_reader :width

  def initialize(name, width, length)
    @name = name
    @width = width
    @length = length
  end

  def floor_area
    @width * @length
  end

end
