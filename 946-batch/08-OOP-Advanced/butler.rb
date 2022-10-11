class Butler
  attr_accessor :name, :house

  def initialize(name, house)
    @name = name
    #@age = age
    @house = house #house is going to be a instance of an House
  end

  def clean_house
    puts "#{@house.name} is clean!"
  end

end
