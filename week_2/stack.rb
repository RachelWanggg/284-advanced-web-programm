
class Stack
  def initialize
    @a = []
  end

  def push(x)
    @a << x
    self
  end

  def pop
    @a.pop
  end

  def peek
    #@a[-1]
    p @a
  end

  def empty?
    @a.empty?
  end
end

s = Stack.new
s.push(1)
s.push(2)
s.peek
s.push(3).push(4).push(5)
#s.push(3) should return s.

#s - receiver

#box1.volumn   box1 is current receiver, self = box1
#box2.volumn   self = box2
#5.times       self = 5

s.peek
