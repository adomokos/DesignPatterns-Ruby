class Renderer
  def rendered(text_object)
    text = text_object.text
    size = text_object.size_inches
    color = text_object.color

    # render the text...
    puts 'text object rendered'
  end
end

class TextObject
  attr_reader :text, :size_inches, :color

  def initialize(text, size_inches, color)
    @text = text
    @size_inches = size_inches
    @color = color
  end
end

class BritishTextObject
  attr_reader :string, :size_mm, :colour

  def initialize(string, size_mm, colour)
    @string = string
    @size_mm = size_mm
    @colour = colour
  end
end

# Reopen the class and add some methods to it
# This will effect all instances
class BritishTextObject
  def color
    return colour
  end

  def text
    return string
  end

  def size_inches
    return size_mm / 25.4
  end
end

# Or modify just a single instance
bto = BritishTextObject.new('hello', 50.8, :blue)

class << bto
   def color
    return colour
  end

  def text
    return string
  end

  def size_inches
    return size_mm / 25.4
  end
end

text_object = TextObject.new('hello from TextObject', 40.73, :red)

renderer = Renderer.new
renderer.rendered bto
renderer.rendered text_object

