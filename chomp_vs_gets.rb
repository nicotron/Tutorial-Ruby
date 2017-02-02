bienvenida = "CHOMP VS GETS  - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
  puts bienvenida

espacio = " \n"
  puts espacio




  texto = "Por favor, ingrese su nombre"
  puts texto
  nombre = gets
  pregunta = "\nVamos a probar la diferencia entre chomp y gets\nPresiona la tecla s para probar, cualquier otra para salir\nVeamos las respuesta"
  puts pregunta
  respuesta = gets.chomp


   if respuesta == "s"


  registro = "Registro ingresado"
   puts registro

   else
     registrono = "Registro no ingresado"
     puts registrono


   end

=begin

     Esta solución de usuar solo gets devolverías el \n (salto de carro) del enter,
     no podría evaluar si es "s". el agregar chomps hace que devuelva solo lo ingresado.

     texto = "Por favor, ingrese su nombre"
     puts texto
     nombre = gets
     pregunta = "\n¿Quieres guardar un registro en la base de datos?\nSe guardará tu nombre, fecha y hora del registro\nPresiona s para guardar, n para no guardar registro"
     puts pregunta
     respuesta = gets
     uno = respuesta

      if uno == "s"


     registro = "Registro ingresado"
      puts registro

      else
        registrono = "Registro no ingresado"
        puts registrono


      end
=end
