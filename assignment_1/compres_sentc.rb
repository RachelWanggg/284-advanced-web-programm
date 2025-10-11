class Compress
  attr_reader :words, :indexes
  
  def initialize(sentc)
    duplicate_words = sentc.split
    @words = []
    @indexes = []

    duplicate_words.each do |word|
      if @words.include?(word)
        @indexes << @words.index(word)
      else
        @words << word
        @indexes << @words.size - 1
      end
    end
  end

  def decompress
     @indexes.map { |i| @words[i] }.join(" ")
  end
end

obj = Compress.new('i love you but do you love me')
p obj.words
puts obj.decompress
  

    
