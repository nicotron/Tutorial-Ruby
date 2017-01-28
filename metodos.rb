bienvenida = "METODOS - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
  puts bienvenida

espacio = " \n"
  puts espacio


  def buenasNoches(nombres)
  resultado = "Buenas noches, " + nombres
  return resultado
end

time = Time.new



puts buenasNoches("Valeria")
puts buenasNoches("José")
