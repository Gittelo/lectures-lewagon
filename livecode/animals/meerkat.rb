require_relative "animal"

class Meerkat < Animal
  def talk
    "#{@name} bark"
  end
end
