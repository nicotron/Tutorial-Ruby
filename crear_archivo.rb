bienvenida = "CREAR ARCHIVO - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
puts bienvenida

espacio = " \n"
puts espacio



txt = File.new("miTxt.txt", "w")
txt.puts("Acá puedo escribir y quedara en mi archivo")

txt.close
