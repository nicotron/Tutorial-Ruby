require 'rubygems'
require 'rest-client'#necesitarás la gema rest-cliente >= 2.0
require 'json'
require 'pp'

bienvenida = "REST - DELETE - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
puts bienvenida


RestClient.delete 'http://localhost/servicios/delete.php', {uid: 5}

#La ruta debes adaptarla a tu servidor
