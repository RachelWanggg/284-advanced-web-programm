class Box
    #attr_reader :width, :length, :height
    #attr_writer :width, :length, :height

    attr_accessor :width, :height, :weight

    def initialize(w=10,h=20,l=100)
        @width, @height, @length
    end

    def volumn
      @width*@height*@length
    end

    def check_dimension
      puts "#{@width},#{@height},#{@length}"


end

box = Box.new
