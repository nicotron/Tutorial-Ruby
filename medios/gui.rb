require 'gosu'# requiere gema gosu
bienvenida = "GUI - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
puts bienvenida

WIDTH, HEIGHT = 640, 480
PADDING = 20

espacio = " \n"
  puts espacio
class Tutorial < Gosu::Window
  def initialize
    super 640, 480
    self.caption = "Gui-gosu"

  text =
      "<b>Tutorial Ruby 2017</b>
       Integración gema gosu
       José Santorcuato Tapia
       santorcuato76@gmail
       CHILE 2017"

  text.gsub! /^ +/, ''

  @text = Gosu::Image.from_text text, 20, :width => WIDTH - 2 * PADDING




  end

  def update
    # ...
  end

  def draw

     @text.draw PADDING, PADDING, 0

   end
end

Tutorial.new.show
