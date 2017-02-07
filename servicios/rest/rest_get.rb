require 'rubygems'
require 'rest-client'#necesitarás la gema rest-cliente >= 2.0
require 'json'
require 'pp'

bienvenida = "REST - GET - \nTutorial de Ruby \nJosé Santorcuato Tapia\nChile 2017"
puts bienvenida




respuesta = RestClient.get 'http://localhost/servicios/get.php', :params => {uid: 1}

codigo = respuesta.code #imprime si conexión se ha establecido 200 es ok
cabezal = respuesta.headers #headers, datos del sistema, servicio y json
cuerpo = respuesta.body #respuesta a la ejecución del get con parámetro uid=1


pp codigo #imprimen, puede usuarse puts
pp cabezal
puts  cuerpo

=begin
respuesta#code: La respuesta hhtp
respuesta#body: La respuesta en un string
respuesta#headers: UN hash de los headers
respuesta#raw_headers: Un hash crudo, sin procesar
respuesta#cookies: UN hash para las cookies del servidor
=end
