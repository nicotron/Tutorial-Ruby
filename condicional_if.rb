bienvenida = "FECHAS - HORAS - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
  puts bienvenida

espacio = " \n"
  puts espacio


time = Time.new


hora = time.hour
minuto = time.min
segundo = time.sec
hora_completa = "#{hora}:#{minuto}:#{segundo}"

  puts hora_completa

  ano = time.year
  mes = time.month
  dia = time.day
  fecha_completa = "#{dia}/#{mes}/#{ano}"

    puts fecha_completa
