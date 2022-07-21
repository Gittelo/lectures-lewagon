require_relative "building.rb"

class Castel < Building
  attr_accessor :butler

  # overwrite the initialize so we add extra properties butler
  def initialize(name, width, length, butler = nil)
    super(name, width, length)
    @butler = butler
  end
  
  # add a new intance method that my parent does not know about. Only works on castle
  def has_a_butler?
    @butler != nil
  end

  # overwriting floor_area method from my parent
  def floor_area
    #self.categories
    super + 3000
  end

  def butler_greetings
    if self.has_a_butler?
      puts "Welcome Sr."
    end
  end

  def self.categories
    ["Basentine", "Roman", "Arabic"]
  end
end
