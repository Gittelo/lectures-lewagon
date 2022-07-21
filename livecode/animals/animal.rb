class Animal
  attr_reader :name
  #def name
  #  @name
  #end
  def initialize(name)
    @name = name
  end

  #class method
  def self.phyla
    ["Ecdysozoa", "Lophotrochozoa", "Deuterostomia", "Other Bilateria phyla", "Non-Bilateria"]
  end

  def eat(food)
    "#{@name} eats a #{food}"
  end
end
