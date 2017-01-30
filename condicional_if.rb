bienvenida = "CONDICIONAL - IF - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
  puts bienvenida

espacio = " \n"
  puts espacio

  puts "Por favor, ingresa un número: "
  numero = gets

  puts "Tu número es #{numero}"

  validador = Integer(numero)

    if validador < 10
    exito = "Valor ingresado es menor a 10"
    puts exito


    else
      fracaso = "Valor ingresado es mayor a 10"
      puts fracaso
    end
