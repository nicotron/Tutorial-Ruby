require 'rubygems'
require 'rest-client'#necesitarás la gema rest-cliente >= 2.0
require 'json'
require 'pp'

bienvenida = "REST - POST - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
puts bienvenida


RestClient.post 'http://localhost/servicios/post.php', {nombre: 'maria', apellido: 'tapia', rut: '5166907k', usua: 'maria', pass: 'maria'}

#La ruta debes adaptarla a tu servidor
