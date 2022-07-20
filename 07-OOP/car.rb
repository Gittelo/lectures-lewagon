class Car
  attr_reader :brand
  #def brand
  #  @brand
  #end

  attr_accessor :color # this means that is a writer and a reader
  #def color=(new_color)
  #  @color = new_color
  #end

  def initialize(color, brand)
    @brand = brand
    @color = color
    @engine_started = false
  end


  #def color
  #  @color
  #end
  #attr_writer :color

  def engine_started?
    @engine_started
  end

  def start_engine
    strat_engine_steps
    @engine_started = true
  end

  def off_engine
    @engine_started = false
  end

  private

  def start_engine_steps
    # A lot of things will happen inside the engine
  end
end
