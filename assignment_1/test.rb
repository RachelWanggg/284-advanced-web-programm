class Vehicle
    attr_accessor :position
    def initialize(n=0)
    @position = n
    end
    def moving_forward(n)
    @position += n
    puts "move forward: #{position}"
    end
    end
    class Car < Vehicle
    def moving_forward(n)
    puts "Vroom!!!!"
    super
    end
    end
    obj = Car.new(0)
    obj.moving_forward(100)
    