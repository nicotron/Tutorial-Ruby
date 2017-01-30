bienvenida = "INPUT - USUARIO - FUNCION -\nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
puts bienvenida


espacio = " \n"
   puts espacio

def datosPersonales(nombre, edad)
resultado = "Nombre: #{nombre}\nEdad: #{edad}"
return resultado
end

puts "Por favor, ingresa tu nombre: "

miNombre = gets

puts "Gracias #{miNombre}\nAhora, ingresa tu edad:"



miEdad = gets


puts datosPersonales(miNombre, miEdad)
puts espacio
