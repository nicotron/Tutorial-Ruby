bienvenida = "CICLO WHILE - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
  puts bienvenida

espacio = " \n"
  puts espacio


time = Time.new


  segundo = time.sec


  #puts hora_completa

  ano = time.year
  mes = time.month
  dia = time.day
  fecha_completa = "#{dia}/#{mes}/#{ano}"

while  segundo <= 59 do
  time1 = Time.new
  hora = time1.hour
  minuto = time1.min
  segundo = time1.sec
  hora_completa = "#{hora}:#{minuto}:#{segundo}"
  sleep(1)
  puts hora_completa
    end
