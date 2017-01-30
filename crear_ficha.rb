bienvenida = "CREAR FICHA - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
puts bienvenida

espacio = " \n"
puts espacio

inicio = "Bienvenido a la creación de su ficha personal\nIngrese nombre:"
puts inicio
  nombre = gets
textoEdad ="Ingrese edad:\n"
puts textoEdad
  edad = gets
textoRut ="Ingrese RUT:\n"
puts textoRut
  rut = gets




txt = File.new("#{rut}.txt", "w")
txt.puts("Nombre: #{nombre}\nEdad: #{edad}\nRut: #{rut} ")

txt.close
