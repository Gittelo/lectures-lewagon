require_relative "car"

my_car = Car.new("red","brand")
#puts my_car.engine_started?
#my_car.start_engine
#puts my_car.engine_started?
#puts my_car.color

my_car.start_engine_steps # this is now a private method can't be call from this file
