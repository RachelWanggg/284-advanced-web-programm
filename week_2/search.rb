#search music
def search(options) #options is a hash
  options = {duration:120}.merge(options) # overwrite the duration with options'

  if options.has_key?(:genre)
    genre = options[:genre] #value used for search
    options.delete(:genre)
  end

  if options.has_key?(:duration)
    genre = options[:duration]
    options.delete(:duration)
  end

  print "invalid options: #{options.keys.join(",")}" unless options.empty?
end


search({genre: "jazz", duration: 300, otheroption: "x"}) 
