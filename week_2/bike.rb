
class Bike

  attr_accessor :fgear, :bgear
  
  def initialize(fgear, bgear, w)
    @fgear, @bgear, @wheel = fgear, bgear, w
  end

  def gear_ratio
    fgear / bgear.to_f
    
    #@fgear / @bgear.to_f
    
  end

  def gear_inches
    gear_ratio * @wheel.diameter
  end
  
end
