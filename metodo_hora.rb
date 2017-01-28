bienvenida = "CICLO METODO   - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
  puts bienvenida

espacio = " \n"
  puts espacio



  def horaActual()

      for i in 0..59

      time1 = Time.new
      hora = time1.hour
      minuto = time1.min
      segundo = time1.sec
      hora_completa = "Hora actual: #{hora}:#{minuto}:#{segundo}."


      return hora_completa
      end
 end


puts horaActual()
