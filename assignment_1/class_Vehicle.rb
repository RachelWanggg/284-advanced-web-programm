class Vehicle
    attr_reader :make, :model, :year 
    def initialize(make:, model:, year:)
        @make, @model, @year = make, model, year
    end
    def spec
        "#{year} #{make} #{model}"
    end 
end

class Car < Vehicle 
    attr_reader :doors
    def initialize(make:, model:, year:, doors:)
        super(make: make, model: model, year: year)
        @doors = doors
    end 
    def spec
        # TODO: include doors; reuse Vehicle#spec via super
        "#{super} #{doors}"
        
        
    end 
end

class Truck < Vehicle
    attr_reader :payload_kg
    def initialize(make:, model:, year:, payload_kg:)
        # TODO: call super, then set @payload_kg
        super(make: make, model: model, year: year)
        @payload_kg = payload_kg
    end 
    def spec
        # TODO: reuse super and append payload info
        "#{super} #{payload_kg}"
        
    end 
end


puts Car.new(make: "Toyota", model: "Camry", year: 2020, doors: 4).spec
puts Truck.new(make: "Ford", model: "F-150", year: 2021, payload_kg: 1200).spec