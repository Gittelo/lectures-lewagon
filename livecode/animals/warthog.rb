require_relative "animal.rb"

class Warthog < Animal
  #instance method
  def talk
    "#{@name} grunts"
  end
end
