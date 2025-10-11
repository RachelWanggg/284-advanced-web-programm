require("./bike")
#require("./wheel")
require_relative "wheel"

wheel = Wheel.new(25, 4)
puts wheel.diameter

b = Bike.new(30, 4, wheel)

puts b.gear_inches
