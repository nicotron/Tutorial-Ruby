  bienvenida = "CICLO FOR - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
  puts bienvenida

espacio = " \n"
  puts espacio


time = Time.new


  segundo = time.sec

  for i in 0..59

  time1 = Time.new
  hora = time1.hour
  minuto = time1.min
  segundo = time1.sec
  hora_completa = "#{hora}:#{minuto}:#{segundo}. Imprimiré 59 veces, voy en la #{59-i}."
  sleep(1)
  puts hora_completa
    end
