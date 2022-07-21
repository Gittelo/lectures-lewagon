require_relative "building.rb"
require_relative "butler.rb"

class House < Building
  attr_accessor :butler

  def initialize(name, width, length, butler_name)
    super(name, width, length)
    @butler = Butler.new(butler_name, self)    #butler is going to be an instance of a Butler
  end

  def has_a_butler?
    @butler != nil
  end

  def greating_from_butler
    if self.has_a_butler?
      puts "welcome sr"
    end
  end

  def self.price_per_square_meter(city)
    case city
    when "Paris" then 9000
    when "Brussels" then 3000
    else raise Exception.new("No data for #{city}")
    end
  end
end
