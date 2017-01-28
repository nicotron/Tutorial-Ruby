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

=begin
puts time.year    # => Year of the date
puts time.month   # => Month of the date (1 to 12)
puts time.day     # => Day of the date (1 to 31 )
puts time.wday    # => 0: Day of week: 0 is Sunday
puts time.yday    # => 365: Day of year
puts time.min     # => 59
puts time.sec     # => 59
puts time.usec    # => 999999: microseconds
puts time.zone    # => "UTC": timezone name
=end
