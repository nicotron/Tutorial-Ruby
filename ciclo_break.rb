  bienvenida = "CICLO BREAK - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
  puts bienvenida

espacio = " \n"
  puts espacio






  for i in 0..30

  time1 = Time.new
  hora = time1.hour
  minuto = time1.min
  segundo = time1.sec
  hora_completa = "#{hora}:#{minuto}:#{segundo}. Imprimiré 30 veces, voy en la #{30-i}."
  sleep(1)
  puts hora_completa
  puts espacio
  texto = "Cuando i=#{i} llegue a 30 se detendrá el ciclo"
  puts texto
  puts espacio



  if i == 30 then
    puts "Salimos del ciclo. Se completaron 30 ciclos."
    break


  end

    end
