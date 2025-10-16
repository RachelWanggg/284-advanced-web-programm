module Greetings
def english
puts "Hello!"
end
def french
puts "Bonjour!"
end
def spanish
puts "Hola!"
end
end

# override
'''
class Hello
include Greetings
end

hello = Hello.new                                                             
puts hello.spanish 

'''

class Hello
  extend Greetings
end

puts Hello.spanish




